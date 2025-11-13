.class public final Lcom/android/compose/animation/scene/TransitionSpecImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final from:Lcom/android/compose/animation/scene/SceneKey;

.field public final key:Lcom/android/compose/animation/scene/TransitionKey;

.field public final to:Lcom/android/compose/animation/scene/SceneKey;

.field public final transformationSpec:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/TransitionKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/TransitionKey;",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Lcom/android/compose/animation/scene/SceneKey;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/TransitionSpecImpl;->key:Lcom/android/compose/animation/scene/TransitionKey;

    iput-object p2, p0, Lcom/android/compose/animation/scene/TransitionSpecImpl;->from:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p3, p0, Lcom/android/compose/animation/scene/TransitionSpecImpl;->to:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p4, p0, Lcom/android/compose/animation/scene/TransitionSpecImpl;->transformationSpec:Lkotlin/jvm/functions/Function0;

    return-void
.end method
