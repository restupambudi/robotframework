# faker_library.py
from faker import Faker

class FakerLibrary:
    def __init__(self):
        self.fake = Faker()

    def generate_first_name(self):
        return self.fake.first_name()

    def generate_last_name(self):
        return self.fake.last_name()

    def generate_zip_code(self):
        return self.fake.postcode()