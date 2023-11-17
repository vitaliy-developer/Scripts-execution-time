import subprocess
import time

def measure_execution_time(script_path):
    print(f"Path to the script: {script_path}")
    
    start_time = time.time()
    
    try:
        subprocess.run(["python3", script_path], check=True)
    except subprocess.CalledProcessError as e:
        print(f"Script execution error: {e}")
        return
    
    end_time = time.time()
    
    execution_time = end_time - start_time
    # print(f"Script execution time: {execution_time:.2f} seconds")
    # print("-" * 30)
    if execution_time > 60:
        print(f"The execution time of the script is more than 60 seconds: {execution_time:.2f} seconds")
        print("-" * 30)

if __name__ == "__main__":
    script_paths = ["./Test_scripts/time_sleep_10.py", 
                    "./Test_scripts/time_sleep_15.py", 
                    "./Test_scripts/time_sleep_65.py",
                    "./Test_scripts/time_sleep_71.py"]
    
    for script_path in script_paths:
        measure_execution_time(script_path)
