import sublime
import sublime_plugin
import datetime
import re


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
