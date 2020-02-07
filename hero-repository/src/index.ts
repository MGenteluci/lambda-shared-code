import { Hero } from './types';

export default {
    create(): Hero {
        return { id: '1', level: '1', name: 'First Hero' };
    }
}
