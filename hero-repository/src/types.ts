export type Hero = {
    id: string;
    name: string;
    level: string;
}

export type DynamoHero = {
    id: DynamoString;
    name: DynamoString;
    level: DynamoString;
};

type DynamoString = {
    S: string;
};
