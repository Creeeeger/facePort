.class public final Lcom/android/compose/animation/scene/ElementTransformations;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final alpha:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

.field public final drawScale:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

.field public final offset:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

.field public final shared:Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

.field public final size:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;Lcom/android/compose/animation/scene/transformation/PropertyTransformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;",
            "Lcom/android/compose/animation/scene/transformation/PropertyTransformation;",
            "Lcom/android/compose/animation/scene/transformation/PropertyTransformation;",
            "Lcom/android/compose/animation/scene/transformation/PropertyTransformation;",
            "Lcom/android/compose/animation/scene/transformation/PropertyTransformation;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementTransformations;->shared:Lcom/android/compose/animation/scene/transformation/SharedElementTransformation;

    iput-object p2, p0, Lcom/android/compose/animation/scene/ElementTransformations;->offset:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    iput-object p3, p0, Lcom/android/compose/animation/scene/ElementTransformations;->size:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    iput-object p4, p0, Lcom/android/compose/animation/scene/ElementTransformations;->drawScale:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    iput-object p5, p0, Lcom/android/compose/animation/scene/ElementTransformations;->alpha:Lcom/android/compose/animation/scene/transformation/PropertyTransformation;

    return-void
.end method
