.class public final Lcom/android/compose/animation/scene/InterruptionResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animateFrom:Lcom/android/compose/animation/scene/SceneKey;

.field public final chain:Z


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/InterruptionResult;->animateFrom:Lcom/android/compose/animation/scene/SceneKey;

    iput-boolean p2, p0, Lcom/android/compose/animation/scene/InterruptionResult;->chain:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/SceneKey;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/compose/animation/scene/InterruptionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Z)V

    return-void
.end method
