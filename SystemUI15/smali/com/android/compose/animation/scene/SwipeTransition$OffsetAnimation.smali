.class public final Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animatable:Landroidx/compose/animation/core/Animatable;

.field public final job:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Animatable;",
            "Lkotlinx/coroutines/Job;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->animatable:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SwipeTransition$OffsetAnimation;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
