.class public Landroid/view/HandwritingInitiator;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandwritingInitiator$HandwritingAreaTracker;,
        Landroid/view/HandwritingInitiator$State;,
        Landroid/view/HandwritingInitiator$DelegationCallback;,
        Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    }
.end annotation


# instance fields
.field private blacklist mCachedHoverTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mConnectedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectionCount:I

.field public blacklist mFocusedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

.field private final blacklist mHandwritingSlop:I

.field private final blacklist mHandwritingTimeoutInMillis:J

.field private final blacklist mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mInitiateWithoutConnection:Z

.field private blacklist mShowHoverIconForConnectedView:Z

.field private blacklist mState:Landroid/view/HandwritingInitiator$State;

.field private final blacklist mTempLocation:[I

.field private final blacklist mTempMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTempRectF:Landroid/graphics/RectF;

.field private final blacklist mTempRegion:Landroid/graphics/Region;


# direct methods
.method public static synthetic blacklist $r8$lambda$enNv4jkNW32Ldl00gpS-aH8O7UY(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/HandwritingInitiator;->lambda$tryAcceptStylusHandwritingDelegationAsync$0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImm(Landroid/view/HandwritingInitiator;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisViewActive(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->isViewActive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewConfiguration;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-direct {v0}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;-><init>()V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    invoke-static {}, Landroid/view/inputmethod/Flags;->initiationWithoutInputConnection()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledHandwritingSlop()I

    move-result v0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    iput-object p2, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private blacklist clearConnectedView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    return-void
.end method

.method private static blacklist contains(Landroid/graphics/Rect;FFFFFF)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p5

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p6

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist distance(Landroid/graphics/Rect;FF)F
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    :goto_0
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    goto :goto_1

    :cond_4
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    :goto_1
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private blacklist findBestCandidateView(FFZ)Landroid/view/View;
    .locals 16

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v15, v6, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v7, v15}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7}, Landroid/view/HandwritingInitiator;->shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    iget-object v0, v6, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v15

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {v8 .. v14}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;Z)V

    :cond_0
    return-object v7

    :cond_1
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    iget-object v2, v6, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-virtual {v2}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->computeViewInfos()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v0

    move-object v11, v1

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    invoke-virtual {v12}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v13

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v13}, Landroid/view/HandwritingInitiator;->shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_0

    :cond_2
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v14, v0, v1}, Landroid/view/HandwritingInitiator;->distance(Landroid/graphics/Rect;FF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    if-nez p3, :cond_3

    iget-object v3, v6, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v3, :cond_3

    iget-object v3, v6, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;Z)V

    :cond_3
    return-object v13

    :cond_4
    cmpg-float v3, v2, v10

    if-gez v3, :cond_5

    move v3, v2

    move-object v4, v13

    move v10, v3

    move-object v11, v4

    :cond_5
    goto :goto_0

    :cond_6
    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_0

    :cond_7
    move/from16 v0, p1

    move/from16 v1, p2

    return-object v11
.end method

.method private static blacklist findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;
    .locals 5

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HandwritingInitiator;->findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/TextView;->isAggregatedVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findHoverView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getCachedHoverTarget()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v10, p0, Landroid/view/HandwritingInitiator;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v9, v10}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v10

    move v4, v0

    move v5, v8

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Landroid/view/HandwritingInitiator;->isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v9}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v9

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v0, v8, v2}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FFZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingUnsupportedMessage()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    :cond_3
    return-object v2

    :cond_4
    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    return-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method private blacklist getCachedHoverTarget()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mCachedHoverTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist getConnectedOrFocusedView()Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    :goto_1
    return-object v1
.end method

.method private blacklist getConnectedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private blacklist getCursorAnchorInfoForConnectionless(Landroid/view/View;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 9

    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    invoke-static {p1}, Landroid/view/HandwritingInitiator;->findFirstTextViewDescendent(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1, v0, v2}, Landroid/widget/TextView;->getCursorAnchorInfo(ILandroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {v7}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v8, v1

    nop

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v7}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    int-to-float v3, v1

    const/4 v6, 0x0

    move-object v1, v0

    move v4, v8

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    nop

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getFocusedView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static blacklist getViewHandwritingArea(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method private blacklist isInHandwritingArea(Landroid/graphics/Rect;FFLandroid/view/View;Z)Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return v8

    :cond_0
    nop

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetLeft()F

    move-result v4

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetTop()F

    move-result v5

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetRight()F

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetBottom()F

    move-result v7

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v7}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FFFFFF)Z

    move-result v1

    if-nez v1, :cond_1

    return v8

    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v2, v0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    iget-object v3, v0, Landroid/view/HandwritingInitiator;->mTempRegion:Landroid/graphics/Region;

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3, v8, v8, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v9, v0, Landroid/view/HandwritingInitiator;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-interface {v1, v10, v2, v9, v11}, Landroid/view/ViewParent;->getChildLocalHitRegion(Landroid/view/View;Landroid/graphics/Region;Landroid/graphics/Matrix;Z)Z

    move-result v3

    if-nez v3, :cond_3

    return v8

    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetRight()F

    move-result v3

    sub-float v12, p2, v3

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetBottom()F

    move-result v3

    sub-float v13, p3, v3

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetLeft()F

    move-result v3

    add-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v5, v12, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHandwritingBoundsOffsetTop()F

    move-result v3

    add-float v3, p3, v3

    add-float/2addr v4, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v15

    iget-object v8, v0, Landroid/view/HandwritingInitiator;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v3, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v3, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v3, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    sget-object v16, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v3, v2

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    move-result v3

    return v3
.end method

.method private static blacklist isViewActive(Landroid/view/View;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->shouldTrackHandwritingArea()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic blacklist lambda$tryAcceptStylusHandwritingDelegationAsync$0(Ljava/lang/ref/WeakReference;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/view/HandwritingInitiator;->onDelegationAccepted(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private blacklist largerThanTouchSlop(FFFF)Z
    .locals 5

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    iget v4, p0, Landroid/view/HandwritingInitiator;->mHandwritingSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist onDelegationAccepted(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideHint()V

    :cond_2
    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    return-void
.end method

.method private blacklist prepareDelegation(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatePackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isConnectionlessStylusHandwritingAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->getCursorAnchorInfoForConnectionless(Landroid/view/View;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    new-instance v6, Landroid/view/HandwritingInitiator$DelegationCallback;

    const/4 v2, 0x0

    invoke-direct {v6, p0, p1, v0, v2}, Landroid/view/HandwritingInitiator$DelegationCallback;-><init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;Landroid/view/HandwritingInitiator$DelegationCallback-IA;)V

    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startConnectionlessStylusHandwritingForDelegation(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    return-void
.end method

.method private blacklist requestFocusWithoutReveal(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingCursorPosition()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownWithinEditorBounds(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v3

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v4, v4, v1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v4

    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v5, v5, v2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRevealOnFocusHint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p1, v2}, Landroid/view/View;->setRevealOnFocusHint(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingCursorPosition()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v1

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mTempLocation:[I

    aget v2, v3, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->getLineAtCoordinate(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v2, v4, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method private static blacklist shouldShowHandwritingUnavailableMessageForView(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist shouldTriggerHandwritingOrShowUnavailableMessageForView(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static blacklist shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isStylusHandwritingAvailable()Z

    move-result v0

    return v0
.end method

.method private blacklist tryAcceptStylusHandwritingDelegationAsync(Landroid/view/View;)V
    .locals 5

    nop

    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatorPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda1;-><init>(Landroid/view/HandwritingInitiator;Ljava/lang/ref/WeakReference;)V

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Landroid/view/HandwritingInitiator$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, p1, v0, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist tryAcceptStylusHandwritingDelegationInternal(Landroid/view/View;)Z
    .locals 2

    nop

    invoke-virtual {p1}, Landroid/view/View;->getAllowedHandwritingDelegatorPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->acceptStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->onDelegationAccepted(Landroid/view/View;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist clearFocusedView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist onDelegateViewFocused(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->onEditorFocused(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegation(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public blacklist onEditorFocused(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->clearFocusedView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getFocusedView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->updateFocusedView(Landroid/view/View;)Z

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingFocusedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingFocusedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public blacklist onInputConnectionClosed(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    iget v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    iget v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist onInputConnectionCreated(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2

    iget v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    invoke-virtual {p1}, Landroid/view/View;->isHandwritingDelegate()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegation(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    return-void

    :cond_3
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmPendingConnectedView(Landroid/view/HandwritingInitiator$State;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public blacklist onResolvePointerIcon(Landroid/content/Context;Landroid/view/MotionEvent;)Landroid/view/PointerIcon;
    .locals 4

    invoke-direct {p0, p2}, Landroid/view/HandwritingInitiator;->findHoverView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/view/HandwritingInitiator;->shouldTriggerStylusHandwritingForView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    const/16 v3, 0x3fe

    if-eqz v2, :cond_1

    invoke-static {p1, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    invoke-static {p1, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v4

    if-eq v3, v4, :cond_10

    :cond_0
    return v2

    :pswitch_2
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_3

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    return v1

    :cond_3
    iget-object v5, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v8

    iget-object v9, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v9}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v9

    invoke-direct {p0, v6, v7, v8, v9}, Landroid/view/HandwritingInitiator;->largerThanTouchSlop(FFFF)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmExceedHandwritingSlop(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v8

    iget-object v9, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v9}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v9

    invoke-direct {p0, v8, v9, v2}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FFZ)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->isStylusHandwritingAvailable()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    return v2

    :cond_4
    invoke-static {v8}, Landroid/view/HandwritingInitiator;->shouldShowHandwritingUnavailableMessageForView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->DIRECT_WRITING:Z

    if-nez v10, :cond_6

    instance-of v10, v8, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    move-object v10, v8

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v11

    if-eqz v11, :cond_5

    const v11, 0x10404d3

    goto :goto_0

    :cond_5
    const v11, 0x10404d2

    :goto_0
    move v10, v11

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v10, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    :cond_7
    instance-of v10, v8, Landroid/widget/TextView;

    if-eqz v10, :cond_8

    move-object v10, v8

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v11, v8, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_8
    iget-object v10, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v10, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedOrFocusedView()Landroid/view/View;

    move-result-object v1

    if-ne v8, v1, :cond_b

    if-nez v9, :cond_a

    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    :cond_a
    invoke-virtual {p0, v8}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v8}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->prepareDelegation(Landroid/view/View;)V

    goto :goto_1

    :cond_c
    iget-boolean v1, p0, Landroid/view/HandwritingInitiator;->mInitiateWithoutConnection:Z

    if-eqz v1, :cond_d

    if-nez v9, :cond_e

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmPendingFocusedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    goto :goto_1

    :cond_d
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmPendingConnectedView(Landroid/view/HandwritingInitiator$State;Ljava/lang/ref/WeakReference;)V

    if-nez v9, :cond_e

    invoke-direct {p0, v8}, Landroid/view/HandwritingInitiator;->requestFocusWithoutReveal(Landroid/view/View;)V

    :cond_e
    :goto_1
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    return v1

    :cond_f
    :goto_2
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    return v1

    :cond_10
    :pswitch_3
    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3, v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmHandled(Landroid/view/HandwritingInitiator$State;)Z

    move-result v3

    if-nez v3, :cond_11

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    :cond_11
    return v2

    :pswitch_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    move-result v4

    if-eqz v4, :cond_13

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->DIRECT_WRITING:Z

    if-eqz v4, :cond_12

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    goto :goto_3

    :cond_12
    new-instance v4, Landroid/view/HandwritingInitiator$State;

    invoke-direct {v4, p1, v1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/MotionEvent;Landroid/view/HandwritingInitiator$State-IA;)V

    iput-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    goto :goto_4

    :cond_13
    :goto_3
    return v2

    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist startHandwriting(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmHandled(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideHint()V

    :cond_0
    return-void
.end method

.method public blacklist tryAcceptStylusHandwritingDelegation(Landroid/view/View;)Z
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegationAsync(Landroid/view/View;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/HandwritingInitiator;->tryAcceptStylusHandwritingDelegationInternal(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateFocusedView(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->shouldInitiateHandwriting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getFocusedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/HandwritingInitiator;->mFocusedView:Ljava/lang/ref/WeakReference;

    iput-boolean v1, p0, Landroid/view/HandwritingInitiator;->mShowHoverIconForConnectedView:Z

    :cond_1
    return v1
.end method

.method public blacklist updateHandwritingAreasForView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-virtual {v0, p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->updateHandwritingAreaForView(Landroid/view/View;)V

    return-void
.end method
