.class final Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $anim:Landroidx/dynamicanimation/animation/DynamicAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/DynamicAnimation;"
        }
    .end annotation
.end field

.field final synthetic $canceled:Z

.field final synthetic $property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;"
        }
    .end annotation
.end field

.field final synthetic $value:F

.field final synthetic $velocity:F


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat;",
            "ZFF",
            "Landroidx/dynamicanimation/animation/DynamicAnimation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iput-boolean p2, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    iput p3, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    iput p4, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    iput-object p5, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;

    iget-object v9, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-boolean v10, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    iget v11, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    iget v12, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    iget-object v0, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    instance-of v0, v0, Landroidx/dynamicanimation/animation/FlingAnimation;

    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    invoke-virtual {v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object v4, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$UpdateListener;->onAnimationUpdateForProperty(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    iget-object v14, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    invoke-virtual {v14, v2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->arePropertiesAnimating(Ljava/util/Set;)Z

    move-result v2

    xor-int/lit8 v15, v2, 0x1

    iget-object v2, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->endListeners:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$EndListener;

    iget-object v3, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    move-object v4, v9

    move v5, v0

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-interface/range {v2 .. v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$EndListener;->onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFF)V

    invoke-virtual {v14, v9}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_4
    if-eqz v15, :cond_5

    if-nez v10, :cond_5

    iget-object v0, v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;->endActions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move v13, v15

    :goto_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
