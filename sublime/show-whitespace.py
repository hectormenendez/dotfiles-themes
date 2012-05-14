import sublime
import sublime_plugin

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


class ToggleHighlightTrailingWhitespace(sublime_plugin.WindowCommand):
    def run(self):
        global TRAILING_WHITESPACE_ENABLED
        TRAILING_WHITESPACE_ENABLED = not TRAILING_WHITESPACE_ENABLED
        view = self.window.active_view()
        if view:
                view.erase_regions('trailing-whitespace')
                refresh(view)


class HighlightTrailingWhitespaceEventListener(sublime_plugin.EventListener):
    def on_load(self, view):
        refresh(view)

    def on_modified(self, view):
        refresh(view)

    def on_activated(self, view):
        refresh(view)
