using {catto} from '../db/schema';


service catsanity {
    @odata.draft.enabled
    entity Cats as projection on catto.Cats;
    entity MentalIllnesses as projection on catto.MentalIllnesses;
}