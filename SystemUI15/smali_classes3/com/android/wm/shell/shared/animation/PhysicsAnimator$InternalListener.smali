.class public final Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final endActions:Ljava/util/List;

.field public final endListeners:Ljava/util/List;

.field public numPropertiesAnimating:I

.field public final properties:Ljava/util/Set;

.field public final target:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

.field public final undispatchedUpdates:Landroid/util/ArrayMap;

.field public final updateListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/shared/animation/PhysicsAnimator$EndListener;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    iput-object p5, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->endListeners:Ljava/util/List;

    iput-object p6, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->endActions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final maybeDispatchUpdates()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;

    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iget-object v2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;->onAnimationUpdateForProperty(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    return-void
.end method
