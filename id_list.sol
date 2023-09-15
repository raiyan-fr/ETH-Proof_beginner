// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract DetailsOfTheOwners {

    struct CarOwner {
        string name;
        string model;
        uint256 modelNo;
        address location;
    }

    CarOwner[] public cars;
    mapping(string => CarOwner[]) public carsByOwners;

// store values in the variables
    function addExampleCars() external {
        CarOwner memory toyota = CarOwner("Zorathon", "Toyota", 2255255, msg.sender);
        CarOwner memory ferrari = CarOwner("Randall", "Ferrari", 2325255, msg.sender);
        CarOwner memory lambo = CarOwner("Zara", "Lamborghini", 2257852, msg.sender);
        CarOwner memory audi = CarOwner("Zara", "Audi", 2257852, msg.sender);

//assigned the values to the given arrays
        cars.push(toyota);
        cars.push(ferrari);
        cars.push(lambo);
        cars.push(audi);
    }

    function addCarByName(string memory _name, string memory _carName, uint256 _modelNo, address _location) external {
        CarOwner memory newCar = CarOwner(_name, _carName, _modelNo, _location);
        carsByOwners[_carName].push(newCar); // Add the car to the mapping using the provided car name
    }
}
