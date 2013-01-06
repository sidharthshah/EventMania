
from api.models import * 

from django.views.decorators.csrf import csrf_exempt
from django.http import HttpRequest, HttpResponse
from django.utils import simplejson


@csrf_exempt
def auth(request):
    """
    This method is used to authenticate user
    """
    a = Account()
    data = {"response": {}}
    username = request.POST.get("username")
    passwd = request.POST.get("passwd")
    data["response"]["status"] = a.auth(username, passwd)
    return HttpResponse(simplejson.dumps(data), mimetype="application/json")
