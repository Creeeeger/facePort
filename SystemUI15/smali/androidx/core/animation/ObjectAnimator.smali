.class public final Landroidx/core/animation/ObjectAnimator;
.super Landroidx/core/animation/ValueAnimator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mProperty:Landroid/util/Property;

.field public final mPropertyName:Ljava/lang/String;

.field public mTarget:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object p1, p1, v0

    iget-object v1, p1, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/core/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Landroidx/core/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    :cond_1
    iput-object p2, p0, Landroidx/core/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroidx/core/animation/ValueAnimator;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/core/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object p1, p1, v0

    iget-object v1, p1, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object p2, p1, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    iput-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroidx/core/animation/ObjectAnimator;
    .locals 1

    new-instance v0, Landroidx/core/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroidx/core/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    invoke-virtual {v0, p2}, Landroidx/core/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;
    .locals 1

    new-instance v0, Landroidx/core/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroidx/core/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroidx/core/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method


# virtual methods
.method public final animateValue(F)V
    .locals 3

    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroidx/core/animation/ValueAnimator;->animateValue(F)V

    iget-object p1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    array-length p1, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroidx/core/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final clone()Landroidx/core/animation/Animator;
    .locals 0

    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/ObjectAnimator;

    return-object p0
.end method

.method public final clone()Landroidx/core/animation/ValueAnimator;
    .locals 0

    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/ObjectAnimator;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->clone()Landroidx/core/animation/ValueAnimator;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/ObjectAnimator;

    return-object p0
.end method

.method public final initAnimation$1()V
    .locals 15

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_c

    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_c

    iget-object v5, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aget-object v5, v5, v4

    iget-object v6, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    const/4 v7, 0x1

    const-string v8, "PropertyValuesHolder"

    if-eqz v6, :cond_5

    :try_start_0
    iget-object v6, v5, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v6, Landroidx/core/animation/KeyframeSet;

    iget-object v6, v6, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    if-nez v6, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    :goto_2
    move-object v11, v1

    move v10, v3

    :goto_3
    if-ge v10, v9, :cond_b

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/core/animation/Keyframe;

    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mHasValue:Z

    if-eqz v13, :cond_2

    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z

    if-eqz v13, :cond_4

    :cond_2
    if-nez v11, :cond_3

    iget-object v11, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v11, v0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :cond_3
    invoke-virtual {v12, v11}, Landroidx/core/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    iput-boolean v7, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "No such property ("

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v9}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") on target object "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ". Trying reflection instead"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    :cond_5
    iget-object v6, v5, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-nez v6, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v9, :cond_6

    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    sget-object v10, Landroidx/core/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string v11, "set"

    invoke-virtual {v5, v6, v10, v11, v9}, Landroidx/core/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    :cond_6
    iget-object v9, v5, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v9, Landroidx/core/animation/KeyframeSet;

    iget-object v9, v9, Landroidx/core/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    if-nez v9, :cond_7

    move v10, v3

    goto :goto_4

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_4
    move v11, v3

    :goto_5
    if-ge v11, v10, :cond_b

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/core/animation/Keyframe;

    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mHasValue:Z

    if-eqz v13, :cond_8

    iget-boolean v13, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z

    if-eqz v13, :cond_a

    :cond_8
    iget-object v13, v5, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v13, :cond_9

    sget-object v13, Landroidx/core/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v14, "get"

    invoke-virtual {v5, v6, v13, v14, v1}, Landroidx/core/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    iput-object v13, v5, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v13, :cond_9

    goto :goto_9

    :cond_9
    :try_start_1
    iget-object v13, v5, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/core/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    iput-boolean v7, v12, Landroidx/core/animation/Keyframe;->mValueWasSetOnStart:Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v12

    goto :goto_6

    :catch_2
    move-exception v12

    goto :goto_7

    :goto_6
    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :goto_7
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_b
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-super {p0}, Landroidx/core/animation/ValueAnimator;->initAnimation$1()V

    :cond_d
    return-void
.end method

.method public final isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    return p0
.end method

.method public final setDuration(J)Landroidx/core/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    return-object p0
.end method

.method public final setDuration(J)Landroidx/core/animation/ValueAnimator;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    return-object p0
.end method

.method public final setDuration(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    return-void
.end method

.method public final varargs setFloatValues([F)V
    .locals 2

    iget-object v0, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_2

    sget-object v1, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    new-instance v1, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v1, v0, p1}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;[F)V

    filled-new-array {v1}, [Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    sget-object v1, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    new-instance v1, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v1, v0, p1}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    filled-new-array {v1}, [Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/animation/ValueAnimator;->setValues([Landroidx/core/animation/PropertyValuesHolder;)V

    :goto_1
    return-void
.end method

.method public final varargs setIntValues([I)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final setTarget(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eq v0, p1, :cond_3

    iget-boolean v0, p0, Landroidx/core/animation/ValueAnimator;->mStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/animation/ValueAnimator;->cancel()V

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/core/animation/ValueAnimator;->mInitialized:Z

    :cond_3
    return-void
.end method

.method public final start()V
    .locals 4

    invoke-static {}, Landroidx/core/animation/AnimationHandler;->getInstance()Landroidx/core/animation/AnimationHandler;

    move-result-object v0

    iget-object v1, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, v0, Landroidx/core/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroidx/core/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/core/animation/ObjectAnimator;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const-string v2, "\n    "

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/animation/ValueAnimator;->mValues:[Landroidx/core/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/core/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
