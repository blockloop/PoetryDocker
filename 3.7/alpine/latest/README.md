Poetry inside Docker
====================

This images has the following configuration

- OS: alpine
- Python: 3.7
- Poetry: 1.1.14

An example on how to use this image

```
FROM blockloop/poetry:py3.7-1.1.14-alpine

ADD poetry.lock pyproject.toml ./

RUN poetry install --no-interaction --no-ansi

COPY . .

CMD ["python", "your_script.py"]
```
