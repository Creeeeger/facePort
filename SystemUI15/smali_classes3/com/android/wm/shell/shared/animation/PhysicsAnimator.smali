.class public final Lcom/android/wm/shell/shared/animation/PhysicsAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

.field public static final onAnimatorCreated:Lkotlin/jvm/functions/Function2;


# instance fields
.field public final cancelAction:Lkotlin/jvm/functions/Function1;

.field public defaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

.field public final endActions:Ljava/util/ArrayList;

.field public final endListeners:Ljava/util/ArrayList;

.field public final flingAnimations:Landroid/util/ArrayMap;

.field public final flingConfigs:Landroid/util/ArrayMap;

.field public final internalListeners:Ljava/util/ArrayList;

.field public final springAnimations:Landroid/util/ArrayMap;

.field public final springConfigs:Landroid/util/ArrayMap;

.field public final startAction:Lkotlin/jvm/functions/Function0;

.field public final updateListeners:Ljava/util/ArrayList;

.field public final weakTarget:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion$onAnimatorCreated$1;->INSTANCE:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion$onAnimatorCreated$1;

    sput-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->onAnimatorCreated:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->globalDefaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startAction$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startAction$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static final estimateFlingEndValue(FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;)F
    .locals 2

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    const v1, 0x40866666    # 4.2f

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    iget v0, p2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iget p2, p2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    add-float/2addr p0, p1

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final arePropertiesAnimating(Ljava/util/Set;)Z
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final cancel()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast v1, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;

    invoke-virtual {v1, p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final varargs cancel([Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$cancelAction$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v0, "PhysicsAnimator"

    const-string v1, "Trying to animate a GC-ed target."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v6, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v7, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    iget v8, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    new-instance v9, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;

    iget v10, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->friction:F

    invoke-direct {v9, v10, v6, v7, v8}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    iget v6, v4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->startVelocity:F

    iget v7, v4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    new-instance v8, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iget v11, v4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iget v12, v4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-direct {v8, v11, v12, v6, v7}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_1

    iget v11, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    goto :goto_0

    :cond_1
    iget v11, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    :goto_0
    if-eqz p5, :cond_8

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v13, v11, v12

    if-gez v13, :cond_8

    const v13, -0x800001

    cmpl-float v14, v11, v13

    if-lez v14, :cond_8

    invoke-virtual {v1, v5}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v14

    const v15, 0x40866666    # 4.2f

    mul-float/2addr v10, v15

    div-float v15, v2, v10

    add-float/2addr v15, v14

    iget v14, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->min:F

    iget v3, v3, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->max:F

    add-float v16, v14, v3

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float v16, v16, v13

    if-gez v7, :cond_2

    cmpl-float v13, v15, v16

    if-gtz v13, :cond_3

    :cond_2
    cmpl-float v13, v2, v6

    if-lez v13, :cond_5

    cmpg-float v13, v15, v16

    if-gez v13, :cond_5

    :cond_3
    cmpg-float v13, v15, v16

    if-gez v13, :cond_4

    goto :goto_1

    :cond_4
    move v14, v3

    :goto_1
    cmpg-float v3, v14, v12

    if-gez v3, :cond_5

    const v3, -0x800001

    cmpl-float v3, v14, v3

    if-lez v3, :cond_5

    invoke-virtual {v0, v1, v14, v2, v4}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    return-void

    :cond_5
    invoke-virtual {v1, v5}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v3

    sub-float v3, v11, v3

    mul-float/2addr v10, v3

    cmpl-float v4, v3, v6

    if-lez v4, :cond_6

    cmpl-float v4, v2, v6

    if-ltz v4, :cond_6

    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_2

    :cond_6
    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    if-gtz v7, :cond_7

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_7
    :goto_2
    iput v2, v9, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    iput v11, v8, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->finalPosition:F

    goto :goto_3

    :cond_8
    iput v2, v9, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$FlingConfig;->startVelocity:F

    :goto_3
    iget-object v2, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/FlingAnimation;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final isRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->arePropertiesAnimating(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public final spring(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V

    return-void
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;)V
    .locals 2

    sget-object v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    iget v1, p4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->stiffness:F

    iget p4, p4, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;->dampingRatio:F

    invoke-direct {v0, v1, p4, p3, p2}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    check-cast p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startAction$1;

    invoke-virtual {p0}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$startAction$1;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final varargs withEndActions([Ljava/lang/Runnable;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    new-instance v2, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$withEndActions$1$1;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator$withEndActions$1$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
