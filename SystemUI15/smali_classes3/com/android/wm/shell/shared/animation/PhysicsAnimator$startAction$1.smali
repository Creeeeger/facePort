.class final synthetic Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startAction$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string/jumbo v5, "startInternal$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell_shared()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    const-string/jumbo v4, "startInternal"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startAction$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 13

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    const-string p0, "PhysicsAnimator"

    const-string v0, "Trying to animate a GC-ed object."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v9, v6}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v5

    if-eqz v10, :cond_2

    new-instance v12, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;

    move-object v0, v12

    move-object v1, v10

    move-object v2, p0

    move-object v3, v9

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$1;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;F)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v11, :cond_1

    if-nez v10, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;

    invoke-direct {v2, p0, v9}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$1;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2;

    invoke-direct {v2, p0, v9, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$configureDynamicAnimation$2;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v11, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->applyToAnimation$frameworks__base__libs__WindowManager__Shell__android_common__WindowManager_Shell_shared(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$2;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v2, v10, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v3, v10, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iget-object v10, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;

    move-object v0, v12

    move-object v1, v9

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startInternal$3;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v9

    move-object v1, p0

    move-object v2, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$InternalListener;-><init>(Lcom/android/wm/shell/shared/animation/PhysicsAnimator;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_2
    return-void
.end method
