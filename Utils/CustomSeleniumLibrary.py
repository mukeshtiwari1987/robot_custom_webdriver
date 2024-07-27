from robot.libraries.BuiltIn import BuiltIn

class CustomSeleniumLibrary(object):
    ROBOT_LIBRARY_SCOPE = "GLOBAL"
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        self.ROBOT_LIBRARY_LISTENER = self

    def _start_suite(self, name, attrs):
         BuiltIn().set_library_search_order('CustomSeleniumLibrary')

    def title_should_start_with(self, expected):
        seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
        title = seleniumlib.get_title()
        if not title.startswith(expected):
            raise AssertionError("Title '%s' did not start with '%s'" % (title, expected))
