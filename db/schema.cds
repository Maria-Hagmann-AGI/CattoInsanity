using {
    cuid,
    managed
} from '@sap/cds/common';

namespace catto; //Namespaces are optional — use namespaces if your models might be reused in other projects; otherwise, you can go without namespaces.

entity Cats : cuid, managed {
    name            : String @mandatory;
    color           : String;
    birthdate       : Date;
    mentalIllnesses : Composition of many CatsMentalIllnesses
                          on mentalIllnesses.cat = $self;
}

entity MentalIllnesses : cuid, managed {
    name          : String            @mandatory;
    description   : String;
    insanityStage : Integer default 0 @assert.range: [
        0,
        15
    ];
    affectedcats  : Composition of many CatsMentalIllnesses
                        on affectedcats.mentalIllness = $self;
}

entity CatsMentalIllnesses {
    key cat           : Association to Cats;
    key mentalIllness : Association to MentalIllnesses;
}
