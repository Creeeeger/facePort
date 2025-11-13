.class public Landroid/view/InsetsAnimationControlImpl;
.super Ljava/lang/Object;
.source "InsetsAnimationControlImpl.java"

# interfaces
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/InsetsAnimationControlRunner;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InsetsAnimationCtrlImpl"


# instance fields
.field private final blacklist mAnimation:Landroid/view/WindowInsetsAnimation;

.field private final blacklist mAnimationType:I

.field private blacklist mCancelled:Z

.field private final blacklist mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mControllingTypes:I

.field private final blacklist mControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentAlpha:F

.field private blacklist mCurrentInsets:Landroid/graphics/Insets;

.field private blacklist mFinished:Z

.field private final blacklist mHasZeroInsetsIme:Z

.field private final blacklist mHiddenInsets:Landroid/graphics/Insets;

.field private final blacklist mInitialInsetsState:Landroid/view/InsetsState;

.field private blacklist mLayoutInsetsDuringAnimation:I

.field private final blacklist mListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private blacklist mPendingAlpha:F

.field private blacklist mPendingFraction:F

.field private blacklist mPendingInsets:Landroid/graphics/Insets;

.field private blacklist mPerceptible:Ljava/lang/Boolean;

.field private blacklist mReadyDispatched:Z

.field private final blacklist mShownInsets:Landroid/graphics/Insets;

.field private blacklist mShownOnFinish:Z

.field private final blacklist mSideControlsMap:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field private final blacklist mTypes:I


# direct methods
.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "J",
            "Landroid/view/animation/Interpolator;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            "Landroid/view/inputmethod/ImeTracker$Token;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    iput v0, v6, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    iput-object v7, v6, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    move-object/from16 v10, p4

    iput-object v10, v6, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    iput v9, v6, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    iput v9, v6, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    move-object/from16 v11, p6

    iput-object v11, v6, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    new-instance v0, Landroid/view/InsetsState;

    const/4 v12, 0x1

    move-object/from16 v13, p3

    invoke-direct {v0, v13, v12}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v14, 0x0

    const/4 v0, 0x0

    if-eqz v8, :cond_2

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    move-object v15, v1

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-direct {v6, v1, v8, v0}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/InsetsAnimationControlImpl;->controlsType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v12, v14

    :goto_0
    iput-boolean v12, v6, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    iget-boolean v0, v6, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    const/4 v1, 0x4

    invoke-virtual {v15, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-static {v15, v0, v7}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    goto :goto_2

    :cond_2
    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-direct {v6, v1, v7, v12}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    invoke-direct {v6, v0, v7, v14}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-direct {v6, v0, v7, v12}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/InsetsAnimationControlImpl;->controlsType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v12, v14

    :goto_1
    iput-boolean v12, v6, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-static {v0, v7}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    :goto_2
    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    new-instance v0, Landroid/view/WindowInsetsAnimation;

    iget v1, v6, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    move-wide/from16 v14, p7

    move-object/from16 v12, p9

    invoke-direct {v0, v1, v12, v14, v15}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual/range {p0 .. p0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    move/from16 v5, p10

    iput v5, v6, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    move/from16 v4, p11

    iput v4, v6, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    move-object/from16 v3, p12

    iput-object v3, v6, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v2, p13

    iput-object v2, v6, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_5

    nop

    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_4

    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string v0, "TOKEN_NONE"

    :goto_3
    move-object/from16 v16, v0

    iget v0, v6, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v0, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d06

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_5
    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    new-instance v5, Landroid/view/WindowInsetsAnimation$Bounds;

    move-object/from16 v16, v1

    iget-object v1, v6, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget-object v2, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-direct {v5, v1, v2}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, v16

    invoke-interface/range {v0 .. v5}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    return-void
.end method

.method private blacklist addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateLengthInAppWindowToScreen(F)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p4, v1, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p4, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :pswitch_2
    neg-float v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-int v2, p2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :pswitch_3
    neg-float v3, v0

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-int v2, p2

    invoke-virtual {p4, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceControl;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {p0, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v2

    invoke-virtual {p1, v2, p4}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p5}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z)",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private blacklist calculatePerceptible(Landroid/graphics/Insets;F)Z
    .locals 3

    iget v0, p1, Landroid/graphics/Insets;->left:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Insets;->top:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Insets;->right:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->right:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .locals 10

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist releaseLeashes()V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationControlCallbacks;)V

    invoke-virtual {v1, v3}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist sanitize(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_1
    return v0
.end method

.method private blacklist sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->hasZeroInsetsIme()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-static {p1, v0}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V
    .locals 3

    if-nez p4, :cond_1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is finished."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_4

    invoke-static {p3}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result v0

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationControlImpl;->sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {p2}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result v0

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {v0, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-direct {p0, v0, v1}, Landroid/view/InsetsAnimationControlImpl;->calculatePerceptible(Landroid/graphics/Insets;F)Z

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-interface {v1, v2, v0}, Landroid/view/InsetsAnimationControlCallbacks;->reportPerceptible(IZ)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is cancelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;",
            ">;",
            "Landroid/view/InsetsState;",
            "F)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceControl;

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getMinimizedInsetHint()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_1
    if-eqz v4, :cond_2

    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v6, v7}, Landroid/view/InsetsAnimationControlImpl;->addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V

    iget v6, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/4 v7, 0x0

    if-nez v6, :cond_3

    iget v6, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    if-eqz v6, :cond_5

    move v7, v2

    goto :goto_2

    :cond_3
    iget-boolean v6, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    if-eqz v6, :cond_5

    :cond_4
    move v7, v2

    :cond_5
    :goto_2
    move v6, v7

    if-eqz p4, :cond_6

    if-eqz v4, :cond_6

    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v4}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v7, v6}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {p4, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_6
    if-eqz v5, :cond_7

    new-instance v7, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v7, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v7, p5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public blacklist applyChangeInsets(Landroid/view/InsetsState;)Z
    .locals 9

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    const-string v1, "InsetsAnimationCtrlImpl"

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "applyChangeInsets canceled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v0, v2}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v5, v0, Landroid/graphics/Insets;->left:I

    iget v8, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v4, 0x1

    move-object v3, p0

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    iget v5, v0, Landroid/graphics/Insets;->top:I

    iget v8, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v4, 0x2

    invoke-direct/range {v3 .. v8}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    iget v5, v0, Landroid/graphics/Insets;->right:I

    iget v8, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v4, 0x3

    invoke-direct/range {v3 .. v8}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    iget v8, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/4 v4, 0x4

    invoke-direct/range {v3 .. v8}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-interface {v3, v4}, Landroid/view/InsetsAnimationControlCallbacks;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iput-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-virtual {v3, v4}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    iget v3, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    iput v3, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    iget-boolean v3, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "notifyFinished shown: %s, currentAlpha: %f, currentInsets: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-interface {v3, p0, v4}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "Animation finished abruptly."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return v1
.end method

.method public blacklist cancel()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    if-eqz v2, :cond_2

    move-object v0, p0

    :cond_2
    invoke-interface {v1, v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify Control request cancelled for types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsAnimationCtrlImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    nop

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "TOKEN_NONE"

    :goto_1
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d08

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_5
    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10800000001L

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10200000005L

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10200000007L

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v2, 0x10200000008L

    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist finish(Z)V
    .locals 6

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    const-string v1, "InsetsAnimationCtrlImpl"

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    :goto_0
    iget v3, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3, v4, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify control request finished for types: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    nop

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {v0}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "TOKEN_NONE"

    :goto_1
    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v0, v1, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_4
    return-void

    :cond_5
    :goto_2
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "Animation already canceled or finished, not notifying."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    return v0
.end method

.method public blacklist getControllingTypes()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    return v0
.end method

.method blacklist getControls()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getCurrentAlpha()F
    .locals 1

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    return v0
.end method

.method public whitelist getCurrentFraction()F
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v0

    return v0
.end method

.method public whitelist getCurrentInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getHiddenStateInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getShownStateInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object v0
.end method

.method public whitelist getTypes()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    return v0
.end method

.method public blacklist hasZeroInsetsIme()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    return v0
.end method

.method public blacklist isCancelRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    return v0
.end method

.method public whitelist isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    return v0
.end method

.method public whitelist isFinished()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .locals 2

    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    return-void
.end method

.method public whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    return-void
.end method

.method public blacklist setReadyDispatched(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    return-void
.end method

.method public blacklist updateLayoutInsetsDuringAnimation(I)V
    .locals 0

    iput p1, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
