import heroRepository from 'hero-repository';

export const handler = () => {
    return {
        statusCode: 201,
        body: heroRepository.create()
    };
};
