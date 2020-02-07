import { DynamoHero, Hero } from '../types';

export default {
    toDynamoHero(hero: Hero): DynamoHero {
        return {
            id: {
                S: hero.id
            },
            name: {
                S: hero.name
            },
            level: {
                S: hero.level
            }
        }
    },
    fromDynamoHero(dynamoHero: DynamoHero): Hero {
        return {
            id: dynamoHero?.id?.S,
            name: dynamoHero?.name?.S,
            level: dynamoHero?.level?.S
        }
    }
}
