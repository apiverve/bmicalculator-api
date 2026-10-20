from setuptools import setup, find_packages

setup(
    name='apiverve_bmicalculator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='BMI Calculator computes Body Mass Index along with ideal weight ranges, BMR (Basal Metabolic Rate), TDEE (Total Daily Energy Expenditure), calorie targets, and macronutrient recommendations for fitness and health applications.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/bmicalculator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
