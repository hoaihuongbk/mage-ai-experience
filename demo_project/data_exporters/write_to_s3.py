from deltalake.writer import write_deltalake
if 'data_exporter' not in globals():
    from mage_ai.data_preparation.decorators import data_exporter

@data_exporter
def export_data(df, *args, **kwargs):
    """
    Export data to a Delta Table

    Docs: https://delta-io.github.io/delta-rs/python/usage.html#writing-delta-tables
    """
    storage_options = {
        'AWS_ACCESS_KEY_ID': '<FILL YOUR AWS ACCESS KEY ID HERE>',
        'AWS_SECRET_ACCESS_KEY': '<FILL YOUR AWS SECRET ACCESS KEY HERE>',
        'AWS_SESSION_TOKEN': '<FILL YOUR AWS SESSION TOKEN HERE>',
        'AWS_REGION': 'ap-southeast-1',
        'AWS_S3_ALLOW_UNSAFE_RENAME': 'true',
    }

    uri = '<BUCKET><PATH>'

    write_deltalake(
        uri,
        data=df,
        mode='overwrite',          # append or overwrite
        partition_by=[],
        storage_options=storage_options,
    )
