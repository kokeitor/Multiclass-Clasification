import main
import time



if __name__ == '__main__':
    
    start_execution = time.time()
    main.calculate_primes_c(1000)
    end_execution = time.time()
    print(end_execution-start_execution)
    
    start_execution = time.time()
    main.calculate_primes(1000)
    end_execution = time.time()
    print(end_execution-start_execution)