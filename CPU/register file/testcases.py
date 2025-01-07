import random
import csv

inputs = {
	"input1" : {"width": 64, "range": (0, 2**64-1 )},
	"input2" : {"width": 5, "range": (0, 31)},
	"input3" : {"width": 5, "range": (0, 31)},
	"input4" : {"width": 5, "range": (0, 31)},
	"input5" : {"width": 1, "range": (0,1)}
	
}

num_cases = 100

out = "test_out.csv"

def generate_inputs(inputs, num_cases):

	test_cases = []

	for i in range(num_cases):
		case = {name: random.randint(config['range'][0], config["range"][1]) for name, config in inputs.items()} 
		test_cases.append(case)
	return test_cases

def write(name, cases):

	with open(name, mode='w', newline = '') as file:
		writer = csv.DictWriter(file, fieldnames = cases[0].keys())
		writer.writeheader()
		writer.writerows(cases)
def main():
	test_cases = generate_inputs(inputs, num_cases)

	write(out, test_cases)
	





