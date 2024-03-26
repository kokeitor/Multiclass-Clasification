import sys
from functools import wraps

def memorize(func):
    cache = {}
    
    @wraps(func)
    def wrapper(*args,**kwargs):
        key = str(args) + str(kwargs)
        if key not in cache:
            cache[key] = func(*args,**kwargs)
        return cache[key]
    return wrapper
    
    
if __name__ == "__main__":
    pass