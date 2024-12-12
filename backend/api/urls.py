
from django.urls import path
from .views import TodoGetCreate, TodoGetUpdateDelete

urlpatterns = [
    path('',TodoGetCreate.as_view()), 
    path('<int:pk>', TodoGetUpdateDelete.as_view())
]
