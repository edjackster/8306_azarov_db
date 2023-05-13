import requests

URL = "http://app:5000"


class TestIntegration:
    def test_200_status_code(self):
        try:
            response = requests.get(f"{URL}/files")
            assert response.status_code == 200
        except requests.exceptions.RequestException as e:
            assert False, f"Exception occurred: {e}"

    def test_401_status_code(self):
        try:
            response = requests.post(f"{URL}/login", data={'name': 'wrong', 'password': 'wrong'})
            assert response.status_code == 401
        except requests.exceptions.RequestException as e:
            assert False, f"Exception occurred: {e}"

    def test_404_status_code(self):
        try:
            response = requests.get(f"{URL}/wrong")
            assert response.status_code == 404
        except requests.exceptions.RequestException as e:
            assert False, f"Exception occurred: {e}"

    def test_405_status_code(self):
        try:
            response = requests.get(f"{URL}/login")
            assert response.status_code == 405
        except requests.exceptions.RequestException as e:
            assert False, f"Exception occurred: {e}"