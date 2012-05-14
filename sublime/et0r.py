import sublime
import sublime_plugin
import datetime
import re

TRAILING_WHITESPACE_ENABLED = True


def refresh(view):
    if not TRAILING_WHITESPACE_ENABLED:
        return
    view.erase_regions('trailing-whitespace')
    view.add_regions(
        'trailing-whitespace',
        view.find_all(r"[\ \t]+$"),
        'invalid',
        sublime.DRAW_EMPTY_AS_OVERWRITE | sublime.DRAW_OUTLINED
    )


class TrailingWhitespaceTextCommand(sublime_plugin.TextCommand):
    """
    Strip whitespace from the end of each line in the file.
    """
    def run(self, edit):
        trailing_white_space = self.view.find_all("[\t ]+$")
        trailing_white_space.reverse()
        for r in trailing_white_space:
            self.view.erase(edit, r)


class TrailingWhitespaceWindowCommand(sublime_plugin.WindowCommand):
    def run(self):
        global TRAILING_WHITESPACE_ENABLED
        TRAILING_WHITESPACE_ENABLED = not TRAILING_WHITESPACE_ENABLED
        view = self.window.active_view()
        if view:
                view.erase_regions('trailing-whitespace')
                refresh(view)


class TrailingWhitespaceEventListener(sublime_plugin.EventListener):
    def on_load(self, view):
        refresh(view)

    def on_modified(self, view):
        refresh(view)

    def on_activated(self, view):
        refresh(view)


class etor_timestampCommand(sublime_plugin.TextCommand):
    """
    Inserts Timestamp in selected region.
    @working 2011/SEP/01 02:53
    @created 2011/SEP/01 02:49
    """
    def run(self, edit):
        time = datetime.datetime.now().strftime("%Y/%b/%d %H:%M").upper()
        # iterate through all selected regions
        for region in self.view.sel():
            #if there's a selection, replace it.
            self.view.erase(edit, region)
            self.view.insert(edit, region.begin(), time)


class etor_createdCommand(sublime_plugin.TextCommand):
    """
    Inserts a created timestamp with author in selected region.
    @working 2011/SEP/01 02:48
    @created 2011/SEP/01 02:01
    """
    def run(self, edit):
        # generate time
        time = datetime.datetime.now().strftime("%Y/%b/%d %H:%M").upper()
        # insert text in all regions selected
        for region in self.view.sel():
            # get region line contents
            line = self.view.substr(self.view.line(region))
            wp = re.search('^\s*', line).group(0)
            # construct string
            comment = (
            "/**\n"
            "%(wp)s * @author Hector Menendez <h@cun.mx>\n"
            "%(wp)s * @licence http://etor.mx/licence.txt\n"
            "%(wp)s * @created %(time)s\n"
            "%(wp)s */") % {'time': time, 'wp': wp}
            #if there's a selection, replace it.
            self.view.erase(edit, region)
            self.view.insert(edit, region.begin(), comment)
