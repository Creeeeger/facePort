.class public final Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final DRAWABLE_ORIGIN_PROPERTY:Landroidx/transition/ChangeBounds$1;

.field public static final POSITION_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

.field public static final sTransitionProperties:[Ljava/lang/String;


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

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v3}, Landroidx/transition/ChangeBounds$2;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const/4 v4, 0x2

    invoke-direct {v0, v4, v1, v3}, Landroidx/transition/ChangeBounds$2;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$2;

    return-void
.end method

.method public static captureValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

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
    iget-object v1, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    check-cast v1, Ljava/util/HashMap;

    const-string v0, "android:changeBounds:bounds"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object p0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "android:changeBounds:parent"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-static {p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_1
    iget-object v5, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v6, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    const-string v7, "android:changeBounds:parent"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_3
    iget-object v5, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v6, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "android:changeBounds:bounds"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget-object v8, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v12, v6, Landroid/graphics/Rect;->right:I

    iget v13, v7, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v12, v8

    sub-int v15, v6, v10

    sub-int v4, v13, v9

    sub-int v3, v7, v11

    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    const-string v0, "android:changeBounds:clip"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v14, :cond_4

    if-nez v15, :cond_5

    :cond_4
    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    :cond_5
    if-ne v8, v9, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_0

    :cond_6
    move/from16 v17, v2

    goto :goto_1

    :cond_7
    :goto_0
    const/16 v17, 0x1

    :goto_1
    if-ne v12, v13, :cond_8

    if-eq v6, v7, :cond_a

    :cond_8
    const/16 v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_9
    move/from16 v17, v2

    :cond_a
    :goto_2
    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    if-nez v1, :cond_d

    if-eqz v0, :cond_d

    goto :goto_3

    :goto_5
    add-int/lit8 v17, v17, 0x1

    :cond_d
    move/from16 v0, v17

    if-lez v0, :cond_13

    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    invoke-virtual {v5, v8, v10, v12, v6}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    if-ne v14, v4, :cond_e

    if-ne v15, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v2, v8

    int-to-float v3, v10

    int-to-float v4, v9

    int-to-float v6, v11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4, v6}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroidx/transition/ChangeBounds$2;

    const/4 v3, 0x0

    invoke-static {v5, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    new-instance v3, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v5, v3, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    iget-object v4, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v8, v8

    int-to-float v10, v10

    int-to-float v9, v9

    int-to-float v11, v11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v10, v9, v11}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v4

    sget-object v8, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    const/4 v9, 0x0

    invoke-static {v3, v8, v9, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v9, v12

    int-to-float v6, v6

    int-to-float v10, v13

    int-to-float v7, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v6, v10, v7}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v6

    sget-object v7, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroidx/transition/ChangeBounds$2;

    const/4 v8, 0x0

    invoke-static {v3, v7, v8, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Landroidx/transition/ChangeBounds$7;

    invoke-direct {v1, v3}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v7

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    if-ne v8, v9, :cond_11

    if-eq v10, v11, :cond_10

    goto :goto_6

    :cond_10
    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v2, v12

    int-to-float v3, v6

    int-to-float v4, v13

    int-to-float v6, v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4, v6}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    const/4 v3, 0x0

    invoke-static {v5, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_7

    :cond_11
    :goto_6
    iget-object v1, v0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/Transition$1;

    int-to-float v2, v8

    int-to-float v3, v10

    int-to-float v4, v9

    int-to-float v6, v11

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4, v6}, Landroidx/transition/Transition$1;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroidx/transition/ChangeBounds$2;

    const/4 v3, 0x0

    invoke-static {v5, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_7
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    new-instance v3, Landroidx/transition/ChangeBounds$9;

    invoke-direct {v3, v2}, Landroidx/transition/ChangeBounds$9;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    :cond_12
    return-object v1

    :cond_13
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method
