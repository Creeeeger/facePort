.class public final Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$3;

.field public static final BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final POSITION_PROPERTY:Landroidx/transition/ChangeBounds$5;

.field public static final TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$4;

.field public static final TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$1;

.field public static final sRectEvaluator:Landroidx/transition/RectEvaluator;

.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public final mResizeClip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:clip"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroidx/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$1;

    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    new-instance v0, Landroidx/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$3;

    new-instance v0, Landroidx/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$4;

    new-instance v0, Landroidx/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$5;

    new-instance v0, Landroidx/transition/RectEvaluator;

    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    sget-object v1, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "resizeClip"

    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    iget-boolean p0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const v0, 0x7f0a0d7f

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "android:changeBounds:clip"

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "android:changeBounds:bounds"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "android:changeBounds:parent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "android:changeBounds:clip"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_1
    iget-object v4, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v5, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "android:changeBounds:parent"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_3
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v5, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "android:changeBounds:bounds"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v7, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v12, v5, Landroid/graphics/Rect;->left:I

    iget v15, v6, Landroid/graphics/Rect;->left:I

    iget v13, v5, Landroid/graphics/Rect;->top:I

    iget v14, v6, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v11, v12

    sub-int v7, v5, v13

    sub-int v8, v10, v15

    sub-int v3, v9, v14

    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    move-object/from16 v20, v4

    const-string v4, "android:changeBounds:clip"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    if-nez v7, :cond_5

    :cond_4
    if-eqz v8, :cond_9

    if-eqz v3, :cond_9

    :cond_5
    if-ne v12, v15, :cond_7

    if-eq v13, v14, :cond_6

    goto :goto_0

    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/16 v16, 0x1

    :goto_1
    if-ne v11, v10, :cond_8

    if-eq v5, v9, :cond_a

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_9
    const/16 v16, 0x0

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    :cond_c
    add-int/lit8 v16, v16, 0x1

    :cond_d
    move/from16 v4, v16

    if-lez v4, :cond_1d

    move-object/from16 v16, v2

    iget-boolean v2, v0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    move-object/from16 v17, v1

    const/4 v1, 0x2

    if-nez v2, :cond_12

    move-object/from16 v2, v20

    invoke-static {v2, v12, v13, v11, v5}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-ne v4, v1, :cond_f

    if-ne v6, v8, :cond_e

    if-ne v7, v3, :cond_e

    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    int-to-float v3, v12

    int-to-float v4, v13

    int-to-float v5, v15

    int-to-float v6, v14

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$5;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_3
    move-object/from16 v22, v2

    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_d

    :cond_e
    new-instance v3, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v3, v2}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    iget-object v4, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    int-to-float v6, v12

    int-to-float v7, v13

    int-to-float v8, v15

    int-to-float v12, v14

    invoke-virtual {v4, v6, v7, v8, v12}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v4

    sget-object v6, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$1;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    int-to-float v8, v11

    int-to-float v5, v5

    int-to-float v10, v10

    int-to-float v9, v9

    invoke-virtual {v6, v8, v5, v10, v9}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v5

    sget-object v6, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    invoke-static {v3, v6, v7, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v4, v1, v7

    const/4 v4, 0x1

    aput-object v5, v1, v4

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroidx/transition/ChangeBounds$6;

    invoke-direct {v1, v0, v3}, Landroidx/transition/ChangeBounds$6;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v22, v2

    move-object v1, v6

    goto :goto_4

    :cond_f
    if-ne v12, v15, :cond_11

    if-eq v13, v14, :cond_10

    goto :goto_5

    :cond_10
    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    int-to-float v3, v11

    int-to-float v4, v5

    int-to-float v5, v10

    int-to-float v6, v9

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$3;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_3

    :cond_11
    :goto_5
    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    int-to-float v3, v12

    int-to-float v4, v13

    int-to-float v5, v15

    int-to-float v6, v14

    invoke-virtual {v1, v3, v4, v5, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$4;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_3

    :cond_12
    move-object/from16 v2, v20

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int/2addr v4, v12

    add-int v1, v13, v18

    invoke-static {v2, v12, v13, v4, v1}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-ne v12, v15, :cond_14

    if-eq v13, v14, :cond_13

    goto :goto_6

    :cond_13
    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v11

    const/4 v4, 0x0

    goto :goto_7

    :cond_14
    :goto_6
    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    int-to-float v4, v12

    move/from16 v18, v9

    int-to-float v9, v13

    move/from16 v19, v10

    int-to-float v10, v15

    move/from16 v21, v11

    int-to-float v11, v14

    invoke-virtual {v1, v4, v9, v10, v11}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v4, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$5;

    const/4 v9, 0x0

    invoke-static {v2, v4, v9, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :goto_7
    if-nez v17, :cond_15

    const/4 v9, 0x1

    goto :goto_8

    :cond_15
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_16

    new-instance v1, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v1, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9

    :cond_16
    const/4 v10, 0x0

    move-object/from16 v1, v17

    :goto_9
    if-nez v16, :cond_17

    const/4 v11, 0x1

    goto :goto_a

    :cond_17
    move v11, v10

    :goto_a
    if-eqz v11, :cond_18

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v6

    goto :goto_b

    :cond_18
    move-object/from16 v10, v16

    :goto_b
    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    sget-object v3, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "clipBounds"

    invoke-static {v2, v7, v3, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v8, Landroidx/transition/ChangeBounds$ClipListener;

    move-object v6, v8

    move-object v7, v2

    move-object/from16 v22, v2

    move-object v2, v8

    move-object v8, v1

    move/from16 v1, v18

    move/from16 v18, v19

    move/from16 v16, v21

    move/from16 v17, v14

    move/from16 v14, v16

    move/from16 v16, v15

    move v15, v5

    move/from16 v19, v1

    invoke-direct/range {v6 .. v19}, Landroidx/transition/ChangeBounds$ClipListener;-><init>(Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZIIIIIIII)V

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    goto :goto_c

    :cond_19
    move-object/from16 v22, v2

    const/4 v3, 0x0

    :goto_c
    if-nez v4, :cond_1a

    move-object v1, v3

    goto/16 :goto_4

    :cond_1a
    if-nez v3, :cond_1b

    move-object v1, v4

    goto/16 :goto_4

    :cond_1b
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_d
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1c

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getRootTransition()Landroidx/transition/Transition;

    move-result-object v0

    new-instance v3, Landroidx/transition/ChangeBounds$SuppressLayoutListener;

    invoke-direct {v3, v2}, Landroidx/transition/ChangeBounds$SuppressLayoutListener;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    :cond_1c
    return-object v1

    :cond_1d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method
