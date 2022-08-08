Poetry inside Docker
====================

This images has the following configuration

- OS: alpine
- Python: 3.10
- Poetry: 1.2.0b3

An example on how to use this image

```
FROM blockloop/poetry:3.10-1.2.0b3-alpine

ADD poetry.lock pyproject.toml ./

RUN poetry install --no-interaction --no-ansi

COPY . .

CMD ["python", "your_script.py"]
```
