.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG_ANIMATOR_INFLATER:Z = false

.field private static final greylist-max-o SEQUENTIALLY:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final greylist-max-o TOGETHER:I = 0x0

.field private static final greylist-max-o VALUE_TYPE_COLOR:I = 0x3

.field private static final greylist-max-o VALUE_TYPE_FLOAT:I = 0x0

.field private static final greylist-max-o VALUE_TYPE_INT:I = 0x1

.field private static final greylist-max-o VALUE_TYPE_PATH:I = 0x2

.field private static final greylist-max-o VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final greylist-max-o sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v13, v1

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v14, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v12, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v2, p2

    goto/16 :goto_4

    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-eq v14, v1, :cond_b

    const/4 v1, 0x2

    if-eq v14, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string/jumbo v1, "objectAnimator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v7, v8, v9, v11}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_3
    const-string v1, "animator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-static {v7, v8, v9, v1, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v1, "set"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v6, v1

    const/4 v0, 0x0

    if-eqz v8, :cond_5

    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v8, v9, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v5, v1

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v7, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v5, v1

    :goto_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    invoke-virtual {v5, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move-object v4, v6

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, v19

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "propertyValuesHolder"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    nop

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v7, v8, v2, v1}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    instance-of v3, v0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_7
    const/16 v16, 0x1

    nop

    :goto_3
    if-eqz v10, :cond_9

    if-nez v16, :cond_9

    if-nez v13, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    :cond_8
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    goto/16 :goto_0

    :cond_a
    move-object/from16 v2, p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown animator name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object/from16 v2, p2

    :goto_4
    if-eqz v10, :cond_e

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v1, v3

    move v3, v6

    goto :goto_5

    :cond_c
    if-nez p5, :cond_d

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_e
    :goto_6
    return-object v0
.end method

.method private static greylist-max-o createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static greylist-max-o createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x0

    const-string/jumbo v3, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    invoke-interface {p2, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    const v8, 0x10101cd

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    invoke-interface {p2, v6, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    invoke-static {p0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_3

    :cond_0
    add-int/lit8 v8, v5, 0x1

    invoke-interface {p2, v6, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v7

    goto :goto_2

    :cond_1
    neg-int v9, v7

    :goto_2
    aput v9, v4, v5

    move v5, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, p1, v8}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    nop

    invoke-static {v4, v5}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_4

    :cond_4
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    const-string v7, "animation state item must have a valid animation"

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    return-object v0

    :cond_5
    :goto_4
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 5

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    div-float v1, p1, v1

    move v2, p2

    :goto_0
    if-gt v2, p3, :cond_0

    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static greylist-max-o dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    check-cast v3, Landroid/animation/Keyframe;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": fraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    const-string/jumbo v6, "null"

    if-gez v5, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private static greylist-max-o getChangingConfigs(Landroid/content/res/Resources;I)I
    .locals 3

    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    sget-object v1, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->changingConfigurations:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v7, :cond_1

    iget v8, v4, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    if-eqz v9, :cond_2

    move v10, v5

    goto :goto_2

    :cond_2
    move v10, v6

    :goto_2
    if-eqz v10, :cond_3

    iget v11, v9, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v11, v6

    :goto_3
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_7

    if-eqz v7, :cond_4

    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    if-eqz v10, :cond_6

    invoke-static {v11}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const/4 v12, 0x3

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    :cond_7
    move v12, v13

    :goto_4
    if-nez v12, :cond_8

    move v13, v5

    goto :goto_5

    :cond_8
    move v13, v6

    :goto_5
    const/4 v14, 0x0

    const/4 v15, 0x2

    if-ne v12, v15, :cond_11

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_9

    const/4 v15, 0x0

    goto :goto_6

    :cond_9
    new-instance v15, Landroid/util/PathParser$PathData;

    invoke-direct {v15, v5}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_6
    if-nez v6, :cond_a

    move-object/from16 v16, v4

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    move-object/from16 v16, v4

    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v6}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_7
    if-nez v15, :cond_c

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    move-object/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v18, v14

    goto :goto_a

    :cond_c
    :goto_8
    if-eqz v15, :cond_f

    move-object/from16 v17, v9

    new-instance v9, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    move-object/from16 v18, v14

    const/4 v14, 0x0

    invoke-direct {v9, v14}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    if-eqz v4, :cond_e

    invoke-static {v15, v4}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v14

    if-eqz v14, :cond_d

    filled-new-array {v15, v4}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3, v9, v14}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    move/from16 v19, v11

    goto :goto_9

    :cond_d
    new-instance v14, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v11

    const-string v11, " Can\'t morph from "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_e
    move/from16 v19, v11

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v9, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move-object v14, v2

    :goto_9
    goto :goto_b

    :cond_f
    move-object/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v18, v14

    if-eqz v4, :cond_10

    new-instance v2, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v2, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_b

    :cond_10
    :goto_a
    move-object/from16 v14, v18

    :goto_b
    move/from16 v11, p3

    move-object v5, v14

    move/from16 v14, v19

    goto/16 :goto_14

    :cond_11
    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v18, v14

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-ne v12, v4, :cond_12

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    :cond_12
    const/4 v4, 0x5

    const/4 v9, 0x0

    if-eqz v13, :cond_18

    if-eqz v7, :cond_16

    if-ne v8, v4, :cond_13

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    goto :goto_c

    :cond_13
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    :goto_c
    if-eqz v10, :cond_15

    move/from16 v14, v19

    if-ne v14, v4, :cond_14

    move/from16 v4, p3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    goto :goto_d

    :cond_14
    move/from16 v4, p3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    :goto_d
    new-array v15, v15, [F

    aput v11, v15, v6

    aput v9, v15, v5

    invoke-static {v3, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move v11, v4

    goto :goto_f

    :cond_15
    move/from16 v4, p3

    move/from16 v14, v19

    new-array v5, v5, [F

    aput v11, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move v11, v4

    goto :goto_f

    :cond_16
    move/from16 v11, p3

    move/from16 v14, v19

    if-ne v14, v4, :cond_17

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_e

    :cond_17
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    :goto_e
    new-array v5, v5, [F

    aput v4, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    :goto_f
    goto/16 :goto_13

    :cond_18
    move/from16 v11, p3

    move/from16 v14, v19

    if-eqz v7, :cond_1e

    if-ne v8, v4, :cond_19

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_10

    :cond_19
    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto :goto_10

    :cond_1a
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    :goto_10
    if-eqz v10, :cond_1d

    if-ne v14, v4, :cond_1b

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    goto :goto_11

    :cond_1b
    invoke-static {v14}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    goto :goto_11

    :cond_1c
    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    :goto_11
    filled-new-array {v5, v4}, [I

    move-result-object v6

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    move-object v5, v6

    goto :goto_13

    :cond_1d
    filled-new-array {v5}, [I

    move-result-object v4

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v5, v4

    goto :goto_13

    :cond_1e
    if-eqz v10, :cond_21

    if-ne v14, v4, :cond_1f

    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    goto :goto_12

    :cond_1f
    invoke-static {v14}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    goto :goto_12

    :cond_20
    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    :goto_12
    filled-new-array {v4}, [I

    move-result-object v5

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    goto :goto_13

    :cond_21
    move-object/from16 v5, v18

    :goto_13
    if-eqz v5, :cond_22

    if-eqz v2, :cond_22

    invoke-virtual {v5, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_22
    :goto_14
    return-object v5
.end method

.method private static greylist-max-o inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .locals 7

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    iget v2, v5, Landroid/util/TypedValue;->type:I

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    invoke-static {v2}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v6, 0x3

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    return v6
.end method

.method private static greylist-max-o inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    iget v3, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v3
.end method

.method private static greylist-max-o isColorType(I)Z
    .locals 1

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "Can\'t load animation resource ID #0x"

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v7

    int-to-long v1, p2

    invoke-virtual {v7, v1, v2, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v7}, Landroid/content/res/ConfigurationBoundResourceCache;->getGeneration()I

    move-result v8

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v9, v3

    :try_start_1
    invoke-static {p0, p1, v9, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v2

    if-eqz v10, :cond_1

    :try_start_2
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    invoke-virtual {v10}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v1

    move-object v11, v1

    if-eqz v11, :cond_1

    int-to-long v2, p2

    move-object v1, v7

    move-object v4, p1

    move-object v5, v11

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V

    invoke-virtual {v11, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v9

    move-object v1, v10

    goto/16 :goto_3

    :catch_0
    move-exception v1

    move-object v2, v9

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v9

    goto :goto_2

    :cond_1
    :goto_0
    nop

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v10

    :catchall_1
    move-exception v0

    move-object v2, v9

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v10, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v10, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v10, v1

    move-object v1, v3

    :goto_1
    :try_start_3
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0

    :catch_5
    move-exception v3

    move-object v10, v1

    move-object v1, v3

    :goto_2
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v10

    :goto_3
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v0
.end method

.method private static greylist-max-o loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    :cond_2
    if-nez p3, :cond_3

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p3, v3

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {p0, p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    instance-of v4, v3, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    :cond_4
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    return-object p3
.end method

.method private static greylist-max-o loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    const/4 v7, 0x4

    if-ne p3, v7, :cond_3

    if-eqz v6, :cond_2

    iget v7, v4, Landroid/util/TypedValue;->type:I

    invoke-static {v7}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 p3, 0x3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_3

    :pswitch_2
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    nop

    :goto_3
    goto :goto_5

    :cond_4
    if-nez p3, :cond_5

    invoke-static {v3}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v7

    goto :goto_4

    :cond_5
    invoke-static {v3}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v7

    :goto_4
    move-object v2, v7

    :goto_5
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private static greylist-max-o loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move/from16 v3, p4

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_4

    const/4 v5, 0x1

    if-eq v6, v5, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "keyframe"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result v3

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :cond_3
    goto :goto_0

    :cond_4
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    if-lez v5, :cond_f

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Keyframe;

    invoke-virtual {v10}, Landroid/animation/Keyframe;->getFraction()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v13, v11, v12

    const/4 v14, 0x0

    if-gez v13, :cond_6

    cmpg-float v13, v11, v14

    if-gez v13, :cond_5

    invoke-virtual {v10, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v10, v12}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v4, v13, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    :cond_6
    :goto_1
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_8

    cmpg-float v15, v13, v14

    if-gez v15, :cond_7

    invoke-virtual {v9, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_2

    :cond_7
    invoke-static {v9, v14}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    :cond_8
    :goto_2
    new-array v5, v8, [Landroid/animation/Keyframe;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v8, :cond_e

    aget-object v7, v5, v15

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    cmpg-float v16, v16, v14

    if-gez v16, :cond_d

    if-nez v15, :cond_9

    invoke-virtual {v7, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    move/from16 v16, v14

    goto :goto_6

    :cond_9
    add-int/lit8 v14, v8, -0x1

    if-ne v15, v14, :cond_a

    invoke-virtual {v7, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    const/16 v16, 0x0

    goto :goto_6

    :cond_a
    move v14, v15

    move/from16 v17, v15

    add-int/lit8 v18, v14, 0x1

    move/from16 v12, v17

    move/from16 v0, v18

    :goto_4
    add-int/lit8 v1, v8, -0x1

    if-ge v0, v1, :cond_c

    aget-object v1, v5, v0

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    const/16 v16, 0x0

    cmpl-float v1, v1, v16

    if-ltz v1, :cond_b

    goto :goto_5

    :cond_b
    move v12, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    goto :goto_4

    :cond_c
    const/16 v16, 0x0

    :goto_5
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    add-int/lit8 v1, v14, -0x1

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v5, v0, v14, v12}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_6

    :cond_d
    move/from16 v16, v14

    :goto_6
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, v16

    goto :goto_3

    :cond_e
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v1, 0x3

    if-ne v3, v1, :cond_11

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_7

    :cond_f
    move-object/from16 v0, p3

    goto :goto_7

    :cond_10
    move-object/from16 v0, p3

    :cond_11
    :goto_7
    return-object v2
.end method

.method public static whitelist loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    int-to-long v2, p1

    invoke-virtual {v8, v2, v3, v1, v9}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v8}, Landroid/content/res/ConfigurationBoundResourceCache;->getGeneration()I

    move-result v10

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v11, v4

    nop

    :try_start_1
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-static {p0, v11, v3}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v12, v3

    if-eqz v12, :cond_1

    :try_start_2
    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    nop

    invoke-virtual {v12}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v2

    move-object v13, v2

    if-eqz v13, :cond_1

    int-to-long v3, p1

    move-object v2, v8

    move-object v5, v9

    move-object v6, v13

    move v7, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;I)V

    invoke-virtual {v13, v1, v9}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/StateListAnimator;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v11

    move-object v2, v12

    goto/16 :goto_3

    :catch_0
    move-exception v2

    move-object v3, v11

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v11

    goto :goto_2

    :cond_1
    :goto_0
    nop

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v12

    :catchall_1
    move-exception v0

    move-object v3, v11

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v12, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v12, v2

    move-object v2, v3

    move-object v3, v11

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v12, v2

    move-object v2, v4

    :goto_1
    :try_start_3
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0

    :catch_5
    move-exception v4

    move-object v12, v2

    move-object v2, v4

    :goto_2
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v12

    :goto_3
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v0
.end method

.method private static greylist-max-o loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v2, v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v1, 0x1

    if-eq v2, v1, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "propertyValuesHolder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p1, p3, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p0, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    :goto_1
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-virtual {v7, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {p0, p1, p2, v3, v4}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-static {v7, v4, v6, v1, v3}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    :cond_2
    if-eqz v8, :cond_4

    if-nez v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/PropertyValuesHolder;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    return-object v1
.end method

.method private static greylist-max-o parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .locals 11

    const/16 v0, 0x12c

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v5, v0

    const/4 v0, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v0, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v0, v7, :cond_0

    invoke-static {p1, v9, v8}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v0

    :cond_0
    const-string v10, ""

    invoke-static {p1, v0, v9, v8, v10}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    if-eqz v8, :cond_1

    new-array v9, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v9, v4

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_2

    nop

    invoke-virtual {p1, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_2
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    nop

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p0, p2, v0, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V

    :cond_4
    return-void
.end method

.method private static greylist-max-o setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/util/PathParser$PathData;

    invoke-direct {v5, v2}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v5, :cond_3

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-static {v4, v5}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    :goto_2
    new-instance v6, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v6, v3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    move-object v0, v6

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    new-instance v6, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v6, v3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    move-object v0, v6

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static greylist-max-o setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    check-cast v2, Landroid/animation/ObjectAnimator;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    nop

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    nop

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eq v1, v6, :cond_0

    const/4 v9, 0x4

    if-ne v1, v9, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-nez v7, :cond_3

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    invoke-static {v4}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v10, v10, p3

    invoke-static {v9, v10}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v11

    if-nez v1, :cond_4

    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v13

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v13

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v7, :cond_5

    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    :cond_5
    if-eqz v8, :cond_6

    invoke-static {v8, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    :cond_6
    if-nez v14, :cond_7

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v15, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    :cond_7
    if-nez v15, :cond_8

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_2

    :cond_8
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v6, v5

    aput-object v15, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_2
    goto :goto_3

    :cond_9
    nop

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static greylist-max-o setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    const/4 v5, 0x1

    if-eqz p3, :cond_3

    if-ne p4, v2, :cond_0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    :goto_0
    if-eqz p5, :cond_2

    if-ne p6, v2, :cond_1

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v6, v4, v3

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_3

    :cond_2
    new-array v2, v5, [F

    aput v6, v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_3

    :cond_3
    if-ne p6, v2, :cond_4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_2
    new-array v4, v5, [F

    aput v2, v4, v3

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_3
    goto :goto_7

    :cond_5
    if-eqz p3, :cond_b

    if-ne p4, v2, :cond_6

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_4

    :cond_6
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    :goto_4
    if-eqz p5, :cond_a

    if-ne p6, v2, :cond_8

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_5

    :cond_8
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_5

    :cond_9
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_5
    filled-new-array {v5, v2}, [I

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_7

    :cond_a
    filled-new-array {v5}, [I

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_7

    :cond_b
    if-eqz p5, :cond_e

    if-ne p6, v2, :cond_c

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_6

    :cond_c
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_6

    :cond_d
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_6
    filled-new-array {v2}, [I

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :cond_e
    :goto_7
    return-void
.end method
