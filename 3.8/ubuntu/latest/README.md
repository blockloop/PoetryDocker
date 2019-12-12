Poetry inside Docker
====================

This images has the following configuration

- OS: ubuntu
- Python: 3.8
- Poetry: 0.12.17

An example on how to use this image

```
FROM nicklehmann/poetry:py3.8-0.12.17-ubuntu

ADD poetry.lock pyproject.toml ./

RUN poetry install --no-interaction --no-ansi

COPY . .

CMD ["python", "your_script.py"]
```