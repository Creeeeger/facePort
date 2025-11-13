.class public Landroidx/core/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DOUBLE_VARIANTS:[Ljava/lang/Class;

.field public static final FLOAT_VARIANTS:[Ljava/lang/Class;

.field public static final INTEGER_VARIANTS:[Ljava/lang/Class;

.field public static final sGetterPropertyMap:Ljava/util/HashMap;

.field public static final sSetterPropertyMap:Ljava/util/HashMap;


# instance fields
.field public mAnimatedValue:Ljava/lang/Object;

.field public mEvaluator:Landroidx/core/animation/TypeEvaluator;

.field public mGetter:Ljava/lang/reflect/Method;

.field public mKeyframes:Landroidx/core/animation/Keyframes;

.field public mProperty:Landroid/util/Property;

.field public mPropertyName:Ljava/lang/String;

.field public mSetter:Ljava/lang/reflect/Method;

.field public final mTmpValueArray:[Ljava/lang/Object;

.field public mValueType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Float;

    aput-object v5, v1, v4

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const/4 v10, 0x4

    const-class v11, Ljava/lang/Double;

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-class v13, Ljava/lang/Integer;

    aput-object v13, v1, v12

    sput-object v1, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    aput-object v8, v1, v3

    aput-object v13, v1, v4

    aput-object v2, v1, v7

    aput-object v6, v1, v9

    aput-object v5, v1, v10

    aput-object v11, v1, v12

    sput-object v1, Landroidx/core/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v6, v0, v3

    aput-object v11, v0, v4

    aput-object v2, v0, v7

    aput-object v8, v0, v9

    aput-object v5, v0, v10

    aput-object v13, v0, v12

    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/Property;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public calculateValue(F)V
    .locals 1

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    invoke-interface {v0, p1}, Landroidx/core/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-void
.end method

.method public clone()Landroidx/core/animation/PropertyValuesHolder;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iput-object v1, v0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    invoke-interface {v1}, Landroidx/core/animation/Keyframes;->clone()Landroidx/core/animation/Keyframes;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;

    iput-object p0, v0, Landroidx/core/animation/PropertyValuesHolder;->mEvaluator:Landroidx/core/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/animation/PropertyValuesHolder;->clone()Landroidx/core/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9

    iget-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroidx/core/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Landroidx/core/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/core/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const-class v4, Ljava/lang/Double;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/core/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    goto :goto_0

    :cond_3
    new-array v4, v2, [Ljava/lang/Class;

    aput-object p3, v4, v5

    :goto_0
    array-length v6, v4

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    aput-object v8, v3, v5

    :try_start_1
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v8, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :try_start_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iput-object v8, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_2
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, p0}, Landroidx/core/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() with type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not found on target class "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PropertyValuesHolder"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v1
.end method

.method public setAnimatedValue(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/core/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/core/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

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

    :cond_1
    :goto_2
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 8

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroidx/core/animation/Keyframe$FloatKeyframe;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    new-instance v0, Landroidx/core/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, v3}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(F)V

    aput-object v0, v1, v4

    aget v0, p1, v4

    new-instance v3, Landroidx/core/animation/Keyframe$FloatKeyframe;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v0}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    aput-object v3, v1, v2

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    aget v5, p1, v4

    new-instance v6, Landroidx/core/animation/Keyframe$FloatKeyframe;

    invoke-direct {v6, v3, v5}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    aput-object v6, v1, v4

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    int-to-float v5, v3

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aget v6, p1, v3

    new-instance v7, Landroidx/core/animation/Keyframe$FloatKeyframe;

    invoke-direct {v7, v5, v6}, Landroidx/core/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    aput-object v7, v1, v3

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    const-string p1, "Animator"

    const-string v0, "Bad value (NaN) in float animator"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p1, Landroidx/core/animation/FloatKeyframeSet;

    invoke-direct {p1, v1}, Landroidx/core/animation/FloatKeyframeSet;-><init>([Landroidx/core/animation/Keyframe$FloatKeyframe;)V

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroidx/core/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroidx/core/animation/Keyframe$IntKeyframe;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    new-instance v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, v3}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(F)V

    aput-object v0, v1, v4

    aget p1, p1, v4

    new-instance v0, Landroidx/core/animation/Keyframe$IntKeyframe;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, p1}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(FI)V

    aput-object v0, v1, v2

    goto :goto_1

    :cond_0
    aget v5, p1, v4

    new-instance v6, Landroidx/core/animation/Keyframe$IntKeyframe;

    invoke-direct {v6, v3, v5}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(FI)V

    aput-object v6, v1, v4

    :goto_0
    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p1, v2

    new-instance v5, Landroidx/core/animation/Keyframe$IntKeyframe;

    invoke-direct {v5, v3, v4}, Landroidx/core/animation/Keyframe$IntKeyframe;-><init>(FI)V

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Landroidx/core/animation/IntKeyframeSet;

    invoke-direct {p1, v1}, Landroidx/core/animation/IntKeyframeSet;-><init>([Landroidx/core/animation/Keyframe$IntKeyframe;)V

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    return-void
.end method

.method public final setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p3, p4}, Landroidx/core/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p2

    return-object v1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/core/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/core/animation/PropertyValuesHolder;->mKeyframes:Landroidx/core/animation/Keyframes;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
