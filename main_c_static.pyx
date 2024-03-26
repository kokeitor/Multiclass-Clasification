from Paquetes.optimization import execution_time
import time
import Paquetes.utils 
import sys
sys.setrecursionlimit(10000)  # Ajustar el límite de profundidad de la recursión



@Paquetes.utils.memorize
def calculate_primes_optimized(amount):
    primes = [] 
    number  = 2
    found  = 0
    while found < amount:
        for x in primes:
            if number % x == 0:
                break
        else:
            primes.append(number)
            found += 1
        number += 1
    return primes


def calculate_primes(amount):
    primes = []
    number  = 2
    found  = 0
    while found < amount:
        for x in primes:
            if number % x == 0:
                break
        else:
            primes.append(number)
            found += 1
        number += 1
    return primes



    
cpdef calculate_primes_c(int amount):
    
    cdef int number
    cdef int found 
    cdef int x
    
    cdef int primes[100000]
    
    amount = min(amount,100000)
    number  = 2
    found = 0
    
    while found < amount:
        for x in primes[:found]:
            if number % x == 0:
                break
        else:
            primes[found] = (number)
            found += 1
        number += 1
        
    return [p for p in primes[:found]]




@Paquetes.utils.memorize
def fibonacci_recursive_opt(n):
    if n < 2:
        return n
    return fibonacci_recursive_opt(n-1) +  fibonacci_recursive_opt(n - 2)


def fibonacci_recursive(n):
    if n < 2:
        return n
    return fibonacci_recursive(n-1) +  fibonacci_recursive(n - 2)











if __name__ == "__main__":

    start_execution = time.time()
    calculate_primes_optimized(500)
    end_execution = time.time()
    print(end_execution-start_execution)
    start_execution = time.time()
    calculate_primes(500)
    end_execution = time.time()
    print(end_execution-start_execution)
