import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    fixed = orders.join(customers.set_index("id"), on="customerId", how='right')
    cleaned = fixed[fixed['id'].isna()]
    cleaned.rename(columns={'name': 'Customers'}, inplace=True)
    return cleaned[['Customers']]