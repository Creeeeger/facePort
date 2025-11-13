.class public Landroid/transition/ChangeText;
.super Landroid/transition/Transition;
.source "ChangeText.java"


# static fields
.field public static final greylist-max-o CHANGE_BEHAVIOR_IN:I = 0x2

.field public static final greylist-max-o CHANGE_BEHAVIOR_KEEP:I = 0x0

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT:I = 0x1

.field public static final greylist-max-o CHANGE_BEHAVIOR_OUT_IN:I = 0x3

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextChange"

.field private static final greylist-max-o PROPNAME_TEXT:Ljava/lang/String; = "android:textchange:text"

.field private static final greylist-max-o PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:textchange:textColor"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_END:Ljava/lang/String; = "android:textchange:textSelectionEnd"

.field private static final greylist-max-o PROPNAME_TEXT_SELECTION_START:Ljava/lang/String; = "android:textchange:textSelectionStart"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private greylist-max-o mChangeBehavior:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I
    .locals 0

    iget p0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "android:textchange:textSelectionStart"

    const-string v1, "android:textchange:textSelectionEnd"

    const-string v2, "android:textchange:text"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:textchange:text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionStart"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textSelectionEnd"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-lez v1, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:textchange:textColor"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private greylist-max-o setSelection(Landroid/widget/EditText;II)V
    .locals 0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeText;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 26

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const/4 v0, 0x0

    if-eqz v11, :cond_11

    if-eqz v12, :cond_11

    iget-object v1, v11, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_11

    iget-object v1, v12, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v1, v12, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v11, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v15, v12, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:textchange:text"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    move-object v9, v2

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move-object v8, v3

    instance-of v1, v13, Landroid/widget/EditText;

    const/4 v2, -0x1

    if-eqz v1, :cond_7

    const-string v1, "android:textchange:textSelectionStart"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    const-string v4, "android:textchange:textSelectionEnd"

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_5
    nop

    :goto_4
    move v1, v2

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    move/from16 v16, v1

    move/from16 v17, v2

    move v7, v3

    move v6, v5

    goto :goto_6

    :cond_7
    move v1, v2

    move v3, v2

    move v5, v2

    move/from16 v17, v1

    move v7, v2

    move/from16 v16, v3

    move v6, v5

    :goto_6
    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget v0, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_8

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of v0, v13, Landroid/widget/EditText;

    if-eqz v0, :cond_8

    move-object v0, v13

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v10, v0, v7, v6}, Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V

    :cond_8
    iget v0, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v4, 0x0

    if-nez v0, :cond_9

    move/from16 v18, v4

    move/from16 v19, v4

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v4, Landroid/transition/ChangeText$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v13

    move/from16 v20, v7

    move-object v7, v4

    move-object v4, v8

    move-object v11, v5

    move/from16 v5, v16

    move/from16 v21, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/transition/ChangeText$1;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;II)V

    invoke-virtual {v11, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v22, v14

    goto/16 :goto_b

    :cond_9
    move/from16 v21, v6

    move/from16 v20, v7

    const-string v0, "android:textchange:textColor"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v0, 0x0

    const/16 v18, 0x0

    iget v1, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v6, 0x1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    iget v1, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-ne v1, v6, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v19, v11

    move-object/from16 v22, v14

    move v14, v3

    goto :goto_8

    :cond_b
    :goto_7
    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v0, Landroid/transition/ChangeText$2;

    invoke-direct {v0, v10, v13, v11}, Landroid/transition/ChangeText$2;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/transition/ChangeText$3;

    move-object v0, v1

    move/from16 v19, v11

    move-object v11, v1

    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v9

    move-object/from16 v22, v14

    move v14, v3

    move-object v3, v13

    move-object v4, v8

    move/from16 v5, v16

    move/from16 v24, v6

    move/from16 v6, v17

    move/from16 v25, v7

    invoke-direct/range {v0 .. v7}, Landroid/transition/ChangeText$3;-><init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v12

    :goto_8
    iget v1, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    if-eq v1, v14, :cond_d

    iget v1, v10, Landroid/transition/ChangeText;->mChangeBehavior:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v5, v25

    const/4 v3, 0x0

    goto :goto_a

    :cond_d
    const/4 v2, 0x2

    :goto_9
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v3, 0x0

    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Landroid/transition/ChangeText$4;

    move/from16 v5, v25

    invoke-direct {v4, v10, v13, v5}, Landroid/transition/ChangeText$4;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/transition/ChangeText$5;

    invoke-direct {v4, v10, v13, v5}, Landroid/transition/ChangeText$5;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v18, v1

    :goto_a
    if-eqz v0, :cond_e

    if-eqz v18, :cond_e

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v4, v1

    check-cast v4, Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v3

    aput-object v18, v2, v24

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    move-object v11, v1

    move/from16 v18, v5

    goto :goto_b

    :cond_e
    if-eqz v0, :cond_f

    move-object v1, v0

    move-object v11, v1

    move/from16 v18, v5

    goto :goto_b

    :cond_f
    move-object/from16 v1, v18

    move-object v11, v1

    move/from16 v18, v5

    :goto_b
    new-instance v12, Landroid/transition/ChangeText$6;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v8

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move-object v7, v9

    move-object v14, v8

    move/from16 v8, v20

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Landroid/transition/ChangeText$6;-><init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V

    invoke-virtual {v10, v0}, Landroid/transition/ChangeText;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v11

    :cond_10
    return-object v0

    :cond_11
    :goto_c
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public greylist-max-o getChangeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    return v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/ChangeText;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setChangeBehavior(I)Landroid/transition/ChangeText;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/ChangeText;->mChangeBehavior:I

    :cond_0
    return-object p0
.end method
