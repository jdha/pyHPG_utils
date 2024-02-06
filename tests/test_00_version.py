import pyhpg_utils


def test_version() -> None:
    assert pyhpg_utils.__version__ != "999"
