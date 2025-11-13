.class public final Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Landroidx/core/animation/PropertyValuesHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIntAnimatedValue:I

.field public mIntKeyframes:Landroidx/core/animation/Keyframes$IntKeyframes;

.field public mIntProperty:Landroidx/core/animation/IntProperty;


# direct methods
.method public constructor <init>(Landroid/util/Property;Landroidx/core/animation/Keyframes$IntKeyframes;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/Keyframes$IntKeyframes;

    instance-of p1, p1, Landroidx/core/animation/IntProperty;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast p1, Landroidx/core/animation/IntProperty;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroidx/core/animation/IntProperty;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    invoke-virtual {p0, p2}, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    instance-of p1, p1, Landroidx/core/animation/IntProperty;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast p1, Landroidx/core/animation/IntProperty;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroidx/core/animation/IntProperty;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/core/animation/Keyframes$IntKeyframes;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    iput-object p2, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/Keyframes$IntKeyframes;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    return-void
.end method


# virtual methods
.method public final calculateValue(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/Keyframes$IntKeyframes;

    check-cast v0, Landroidx/core/animation/IntKeyframeSet;

    invoke-virtual {v0, p1}, Landroidx/core/animation/IntKeyframeSet;->getIntValue(F)I

    move-result p1

    iput p1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    return-void
.end method

.method public final clone()Landroidx/core/animation/PropertyValuesHolder;
    .locals 1

    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/Keyframes$IntKeyframes;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/Keyframes$IntKeyframes;

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    check-cast p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast v0, Landroidx/core/animation/Keyframes$IntKeyframes;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/Keyframes$IntKeyframes;

    return-object p0
.end method

.method public final getAnimatedValue()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setAnimatedValue(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroidx/core/animation/IntProperty;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/core/animation/IntProperty;->setValue()V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_1

    iget p0, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v2, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    :goto_2
    return-void
.end method

.method public final varargs setIntValues([I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/core/animation/PropertyValuesHolder;->setIntValues([I)V

    iget-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    check-cast p1, Landroidx/core/animation/Keyframes$IntKeyframes;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroidx/core/animation/Keyframes$IntKeyframes;

    return-void
.end method

.method public final setProperty(Landroid/util/Property;)V
    .locals 1

    instance-of v0, p1, Landroidx/core/animation/IntProperty;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/core/animation/IntProperty;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroidx/core/animation/IntProperty;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    :goto_0
    return-void
.end method
