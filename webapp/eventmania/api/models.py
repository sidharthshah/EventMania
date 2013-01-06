from couchdb import *

class Account:
    """
    This class is used to handle all account related activities
    """

    def auth(self, username, passwd):
        """
        This method is used to authenticate user
        """
        couch = Server()
        event_mania_users = couch["event_mania_users"]
        if not event_mania_users.__contains__(username) or type(username) == type(None):
            return False
        return True
