.class public final Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Landroidx/core/animation/PropertyValuesHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFloatAnimatedValue:F

.field public mFloatKeyframes:Landroidx/core/animation/Keyframes$FloatKeyframes;

.field public mFloatProperty:Landroidx/core/animation/FloatProperty;


# direct methods
.method public constructor <init>(Landroid/util/Property;Landroidx/core/animation/Keyframes$FloatKeyframes;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/Keyframes$FloatKeyframes;

    instance-of p1, p1, Landroidx/core/animation/FloatProperty;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast p1, Landroidx/core/animation/FloatProperty;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroidx/core/animation/FloatProperty;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    invoke-virtual {p0, p2}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    instance-of p1, p1, Landroidx/core/animation/FloatProperty;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast p1, Landroidx/core/animation/FloatProperty;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroidx/core/animation/FloatProperty;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/core/animation/Keyframes$FloatKeyframes;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/Keyframes$FloatKeyframes;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method public final calculateValue(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/Keyframes$FloatKeyframes;

    check-cast v0, Landroidx/core/animation/FloatKeyframeSet;

    invoke-virtual {v0, p1}, Landroidx/core/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p1

    iput p1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    return-void
.end method

.method public final clone()Landroidx/core/animation/PropertyValuesHolder;
    .locals 1

    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/Keyframes$FloatKeyframes;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/Keyframes$FloatKeyframes;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/Keyframes$FloatKeyframes;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/Keyframes$FloatKeyframes;

    return-object p0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setAnimatedValue(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroidx/core/animation/FloatProperty;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/animation/FloatProperty;->setValue()V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final varargs setFloatValues([F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast p1, Landroidx/core/animation/Keyframes$FloatKeyframes;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroidx/core/animation/Keyframes$FloatKeyframes;

    return-void
.end method

.method public final setProperty(Landroid/util/Property;)V
    .locals 1

    instance-of v0, p1, Landroidx/core/animation/FloatProperty;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/core/animation/FloatProperty;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroidx/core/animation/FloatProperty;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    :goto_0
    return-void
.end method
