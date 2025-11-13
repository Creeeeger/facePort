.class public final Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic $property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final synthetic this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v1, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;

    iget-object v4, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    new-instance v6, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$AnimationUpdate;

    invoke-direct {v6, p1, p2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$AnimationUpdate;-><init>(FF)V

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
