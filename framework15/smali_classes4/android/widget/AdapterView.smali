.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$OnItemClickListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$SemOnMultiSelectedListener;,
        Landroid/widget/AdapterView$SemMultiSelectionListener;,
        Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;,
        Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final whitelist INVALID_POSITION:I = -0x1

.field public static final whitelist INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final whitelist ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final whitelist ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final greylist-max-o SYNC_FIRST_POSITION:I = 0x1

.field static final greylist-max-o SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final greylist-max-o SYNC_SELECTED_POSITION:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AdapterView"


# instance fields
.field blacklist mAppWidgetId:I

.field greylist-max-o mBlockLayoutRequests:Z

.field greylist-max-p mDataChanged:Z

.field private greylist-max-o mDesiredFocusableInTouchModeState:Z

.field private greylist-max-o mDesiredFocusableState:I

.field private greylist-max-o mEmptyView:Landroid/view/View;

.field greylist mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field greylist-max-o mInLayout:Z

.field greylist-max-o mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private greylist-max-o mLayoutHeight:I

.field greylist mNeedSync:Z

.field greylist mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist mNextSelectedRowId:J

.field greylist-max-o mOldItemCount:I

.field greylist mOldSelectedPosition:I

.field greylist-max-o mOldSelectedRowId:J

.field greylist mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field greylist-max-o mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field greylist mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private blacklist mPenPressState:Z

.field private greylist-max-o mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field greylist mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist-max-o mSelectedRowId:J

.field private greylist-max-o mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field blacklist mSemAdapterChanged:Z

.field blacklist mSemEnableFillOut:Z

.field blacklist mSemFillOutEmptyArea:I

.field blacklist mSemFillOutPaint:Landroid/graphics/Paint;

.field blacklist mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

.field blacklist mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

.field blacklist mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

.field blacklist mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

.field greylist-max-o mSpecificTop:I

.field greylist-max-o mSyncHeight:J

.field greylist-max-o mSyncMode:I

.field greylist mSyncPosition:I

.field greylist-max-o mSyncRowId:J


# direct methods
.method public static synthetic blacklist $r8$lambda$DRYzBtyMvTFi6lHvT9cMpR4jgZc(Landroid/widget/AdapterView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->lambda$performAccessibilityActionsOnSelected$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingSelectionNotifier(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchOnItemSelected(Landroid/widget/AdapterView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mSemAdapterChanged:Z

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mSemFillOutEmptyArea:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/widget/AdapterView;->mSemFillOutPaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mSemEnableFillOut:Z

    iput v0, p0, Landroid/widget/AdapterView;->mAppWidgetId:I

    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    const/16 v1, 0x10

    iput v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusable()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    iget v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    if-ne v2, v1, :cond_1

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(I)V

    :cond_1
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o dispatchOnItemSelected()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private greylist-max-o fireOnSelected()V
    .locals 8

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v7

    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, p0

    move-object v3, v7

    move v4, v0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v1, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :goto_0
    return-void
.end method

.method private greylist hidden_semSetBottomColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->semSetBottomColor(I)V

    return-void
.end method

.method private greylist-max-o isScrollableForAccessibility()Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method private synthetic blacklist lambda$performAccessibilityActionsOnSelected$0()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private greylist-max-o performAccessibilityActionsOnSelected()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v1, Landroid/widget/AdapterView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/AdapterView;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private greylist-max-o updateEmptyStatus(Z)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_4

    iget v3, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v4, p0, Landroid/widget/AdapterView;->mTop:I

    iget v5, p0, Landroid/widget/AdapterView;->mRight:I

    iget v6, p0, Landroid/widget/AdapterView;->mBottom:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o checkFocus()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v4, :cond_5

    iget v5, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusable(I)V

    iget-object v5, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v5, :cond_8

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :cond_7
    :goto_6
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    :cond_8
    return-void
.end method

.method greylist-max-o checkSelectionChanged()V
    .locals 4

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    :cond_2
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "scrolling:firstPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "list:nextSelectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    long-to-float v0, v0

    const-string v1, "list:nextSelectedRowId"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v0, "list:selectedPosition"

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "list:itemCount"

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method greylist-max-o findSyncPosition()I
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/RemoteViewsAdapter;

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    :cond_1
    iget-wide v3, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v5, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-nez v6, :cond_2

    return v2

    :cond_2
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v7, v1, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    move v9, v5

    move v10, v5

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v12

    if-nez v12, :cond_3

    return v2

    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-gtz v13, :cond_b

    invoke-interface {v12, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    cmp-long v15, v13, v3

    if-nez v15, :cond_4

    return v5

    :cond_4
    add-int/lit8 v15, v1, -0x1

    const/16 v16, 0x1

    if-ne v10, v15, :cond_5

    move/from16 v15, v16

    goto :goto_1

    :cond_5
    move v15, v6

    :goto_1
    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v16, v6

    :goto_2
    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    goto :goto_4

    :cond_7
    if-nez v16, :cond_a

    if-eqz v11, :cond_8

    if-nez v15, :cond_8

    goto :goto_3

    :cond_8
    if-nez v15, :cond_9

    if-nez v11, :cond_3

    if-nez v16, :cond_3

    :cond_9
    add-int/lit8 v9, v9, -0x1

    move v5, v9

    const/4 v11, 0x1

    goto :goto_0

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v5, v10

    const/4 v11, 0x0

    goto :goto_0

    :cond_b
    :goto_4
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public whitelist getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public whitelist getEmptyView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public whitelist getItemAtPosition(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public whitelist getItemIdAtPosition(I)J
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v1, -0x8000000000000000L

    :goto_1
    return-wide v1
.end method

.method public whitelist getLastVisiblePosition()I
    .locals 2

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final whitelist getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public whitelist getPositionForView(Landroid/view/View;)I
    .locals 5

    move-object v0, p1

    :goto_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    nop

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v3

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1

    :catch_0
    move-exception v2

    return v1
.end method

.method public whitelist getSelectedItem()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract whitelist getSelectedView()Landroid/view/View;
.end method

.method greylist-max-o handleDataChanged()V
    .locals 6

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_4

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    if-lt v3, v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    :cond_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    if-gez v4, :cond_3

    invoke-virtual {p0, v3, v2}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    :cond_3
    if-ltz v4, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput-wide v4, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    return-void
.end method

.method public blacklist hidden_semSetAppWidgetId(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AdapterView;->mAppWidgetId:I

    return-void
.end method

.method greylist-max-o isInFilterMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .locals 0

    return p1
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    return-void
.end method

.method public whitelist onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onProvideStructure(Landroid/view/ViewStructure;II)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setAutofillOptions([Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    instance-of v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mPenPressState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return v0
.end method

.method greylist-max-o rememberSyncState()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iget v1, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_0
    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    :goto_0
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_3
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    :cond_4
    :goto_1
    return-void
.end method

.method blacklist rememberSyncStateHorizontal()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iget v1, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_1
    :goto_0
    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_3

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_1

    :cond_3
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    :goto_1
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :cond_5
    :goto_2
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    :cond_6
    :goto_3
    return-void
.end method

.method public whitelist removeAllViews()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViewAt(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist selectionChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v1, p0, v0}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier-IA;)V

    iput-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method blacklist selectionChangedForAccessibility()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method public final whitelist semGetLongPressMultiSelectionListener()Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    return-object v0
.end method

.method public final whitelist semGetMultiSelectionListener()Landroid/widget/AdapterView$SemMultiSelectionListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    return-object v0
.end method

.method public final blacklist semGetOnMultiSelectedListener()Landroid/widget/AdapterView$SemOnMultiSelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    return-object v0
.end method

.method public final blacklist semGetOnNotifyKeyPressListener()Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    return-object v0
.end method

.method public blacklist semNotifyKeyPress(Landroid/view/View;IJZ)Z
    .locals 8

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;->onNotifyKeyPress(Landroid/widget/AdapterView;Landroid/view/View;IJZ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semNotifyLongPressMultiSelectionEnded(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    :cond_0
    return-void
.end method

.method blacklist semNotifyLongPressMultiSelectionStarted(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    :cond_0
    return-void
.end method

.method blacklist semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semNotifyMultiSelectedStart(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemMultiSelectionListener;->onMultiSelectionStarted(II)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelectStart(II)V

    :cond_1
    return-void
.end method

.method protected blacklist semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z
    .locals 12

    move-object v9, p0

    iget-object v0, v9, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    return v10

    :cond_0
    move/from16 v11, p7

    iput-boolean v11, v9, Landroid/widget/AdapterView;->mPenPressState:Z

    iget-object v0, v9, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, v9, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V

    return v10

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semNotifyMultiSelectedStop(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemMultiSelectionListener;->onMultiSelectionEnded(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mPenPressState:Z

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelectStop(II)V

    :cond_1
    return-void
.end method

.method public whitelist semSetBottomColor(I)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-boolean v0, Landroid/widget/AdapterView;->sIsSamsungBasicInteraction:Z

    if-nez v0, :cond_0

    const-string v0, "AdapterView"

    const-string v1, "App should add meta data for Samsung UX first."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Landroid/widget/AdapterView;->sIsSamsungBasicInteraction:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mSemEnableFillOut:Z

    iget-object v0, p0, Landroid/widget/AdapterView;->mSemFillOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public whitelist semSetLongPressMultiSelectionListener(Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    return-void
.end method

.method public whitelist semSetMultiSelectionListener(Landroid/widget/AdapterView$SemMultiSelectionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    return-void
.end method

.method public blacklist semSetNotifyOnKeyPressListener(Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    return-void
.end method

.method public blacklist semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    return-void
.end method

.method public abstract whitelist setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public whitelist setEmptyView(Landroid/view/View;)V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    return-void
.end method

.method public whitelist setFocusable(I)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    and-int/lit8 v3, p1, 0x11

    if-nez v3, :cond_2

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, p1

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(I)V

    return-void
.end method

.method public whitelist setFocusableInTouchMode(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_2

    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method greylist setNextSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public whitelist setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method greylist setSelectedPositionInt(I)V
    .locals 2

    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    return-void
.end method

.method public abstract whitelist setSelection(I)V
.end method
