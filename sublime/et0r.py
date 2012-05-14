import sublime
import sublime_plugin
import datetime
import re

TRAILING_WHITESPACE_ENABLED = True


def Et0rWhitespaceRefresh(view):
    if not TRAILING_WHITESPACE_ENABLED:
        return
    view.erase_regions('trailing-whitespace')
    view.add_regions(
        'trailing-whitespace',
        view.find_all(r"[\ \t]+$"),
        'invalid',
        sublime.DRAW_EMPTY_AS_OVERWRITE | sublime.DRAW_OUTLINED
    )


class Et0rWhitespaceShowCommand(sublime_plugin.WindowCommand):
    def run(self):
        global TRAILING_WHITESPACE_ENABLED
        TRAILING_WHITESPACE_ENABLED = not TRAILING_WHITESPACE_ENABLED
        view = self.window.active_view()
        if view:
            view.erase_regions('trailing-whitespace')
            Et0rWhitespaceRefresh(view)


class Et0rWhitespaceEvent(sublime_plugin.EventListener):
    def on_load(self, view):
        Et0rWhitespaceRefresh(view)

    def on_modified(self, view):
        Et0rWhitespaceRefresh(view)

    def on_activated(self, view):
        Et0rWhitespaceRefresh(view)


class Et0rWhitespaceStripCommand(sublime_plugin.TextCommand):
    """
    Strip whitespace from the end of each line in the file.
    """
    def run(self, edit):
        regions = self.view.find_all("[\t ]+$")
        regions.reverse()
        for region in regions:
            self.view.erase(edit, region)


class Et0rTimestampCommand(sublime_plugin.TextCommand):
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


class Et0rCommentCommand(sublime_plugin.TextCommand):
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
            "%(wp)s * @author Hector Menendez <etor@gik.mx>\n"
            "%(wp)s * @created %(time)s\n"
            "%(wp)s */") % {'time': time, 'wp': wp}
            #if there's a selection, replace it.
            self.view.erase(edit, region)
            self.view.insert(edit, region.begin(), comment)
