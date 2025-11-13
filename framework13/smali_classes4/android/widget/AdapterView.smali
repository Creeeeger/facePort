.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;,
        Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;,
        Landroid/widget/AdapterView$SemMultiSelectionListener;,
        Landroid/widget/AdapterView$SemOnMultiSelectedListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
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
    .param p1, "context"    # Landroid/content/Context;

    .line 293
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 294
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 297
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 298
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 301
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 302
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 305
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 98
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 108
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 141
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 189
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mSemAdapterChanged:Z

    .line 190
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mSemFillOutEmptyArea:I

    .line 191
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Landroid/widget/AdapterView;->mSemFillOutPaint:Landroid/graphics/Paint;

    .line 192
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mSemEnableFillOut:Z

    .line 205
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 212
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 218
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 225
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 257
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 263
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 274
    const/16 v1, 0x10

    iput v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 287
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 308
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 312
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFocusable()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 313
    if-ne v2, v1, :cond_1

    .line 315
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 317
    :cond_1
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .line 61
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o dispatchOnItemSelected()V
    .locals 0

    .line 1385
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    .line 1386
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    .line 1387
    return-void
.end method

.method private greylist-max-o fireOnSelected()V
    .locals 8

    .line 1390
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 1391
    return-void

    .line 1393
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1394
    .local v0, "selection":I
    if-ltz v0, :cond_1

    .line 1395
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v7

    .line 1396
    .local v7, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1397
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    .line 1396
    move-object v2, p0

    move-object v3, v7

    move v4, v0

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1398
    .end local v7    # "v":Landroid/view/View;
    goto :goto_0

    .line 1399
    :cond_1
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v1, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 1401
    :goto_0
    return-void
.end method

.method private greylist hidden_semSetBottomColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 544
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->semSetBottomColor(I)V

    .line 545
    return-void
.end method

.method private greylist-max-o isScrollableForAccessibility()Z
    .locals 5

    .line 1472
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1473
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1474
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 1475
    .local v2, "itemCount":I
    if-lez v2, :cond_1

    .line 1476
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

    .line 1475
    :goto_0
    return v1

    .line 1478
    .end local v2    # "itemCount":I
    :cond_2
    return v1
.end method

.method private greylist-max-o performAccessibilityActionsOnSelected()V
    .locals 2

    .line 1404
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    return-void

    .line 1407
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1408
    .local v0, "position":I
    if-ltz v0, :cond_1

    .line 1410
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 1412
    :cond_1
    return-void
.end method

.method private greylist-max-o updateEmptyStatus(Z)V
    .locals 7
    .param p1, "empty"    # Z

    .line 1210
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    const/4 p1, 0x0

    .line 1214
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1215
    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1216
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 1220
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 1226
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_4

    .line 1227
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v4, p0, Landroid/widget/AdapterView;->mTop:I

    iget v5, p0, Landroid/widget/AdapterView;->mRight:I

    iget v6, p0, Landroid/widget/AdapterView;->mBottom:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    goto :goto_1

    .line 1230
    :cond_2
    iget-object v2, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1231
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 1233
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 922
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 935
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 963
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 948
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist canAnimate()Z
    .locals 1

    .line 1483
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
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

    .line 1191
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1192
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
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

    .line 1193
    .local v3, "empty":Z
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

    .line 1197
    .local v4, "focusable":Z
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

    .line 1198
    if-eqz v4, :cond_5

    iget v5, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    goto :goto_5

    :cond_5
    move v5, v2

    :goto_5
    invoke-super {p0, v5}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 1199
    iget-object v5, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 1200
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

    .line 1202
    :cond_8
    return-void
.end method

.method greylist-max-o checkSelectionChanged()V
    .locals 4

    .line 1556
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1557
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 1558
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1559
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1564
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_2

    .line 1565
    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    .line 1567
    :cond_2
    return-void
.end method

.method public greylist-max-o dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1417
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1418
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1419
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    const/4 v1, 0x1

    return v1

    .line 1422
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

    .line 1270
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1271
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

    .line 1262
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1263
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 1773
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1775
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    const-string/jumbo v1, "scrolling:firstPosition"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1776
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    const-string/jumbo v1, "list:nextSelectedPosition"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1777
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    long-to-float v0, v0

    const-string/jumbo v1, "list:nextSelectedRowId"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    .line 1778
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const-string/jumbo v1, "list:selectedPosition"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1779
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    const-string/jumbo v1, "list:itemCount"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1780
    return-void
.end method

.method greylist-max-o findSyncPosition()I
    .locals 17

    .line 1578
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1580
    .local v1, "count":I
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1581
    return v2

    .line 1584
    :cond_0
    iget-wide v3, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1585
    .local v3, "idToMatch":J
    iget v5, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1588
    .local v5, "seed":I
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-nez v6, :cond_1

    .line 1589
    return v2

    .line 1593
    :cond_1
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1594
    add-int/lit8 v7, v1, -0x1

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1596
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    .line 1601
    .local v7, "endTime":J
    move v9, v5

    .line 1604
    .local v9, "first":I
    move v10, v5

    .line 1607
    .local v10, "last":I
    const/4 v11, 0x0

    .line 1617
    .local v11, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v12

    .line 1618
    .local v12, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v12, :cond_2

    .line 1619
    return v2

    .line 1622
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-gtz v13, :cond_a

    .line 1623
    invoke-interface {v12, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1624
    .local v13, "rowId":J
    cmp-long v15, v13, v3

    if-nez v15, :cond_3

    .line 1626
    return v5

    .line 1629
    :cond_3
    add-int/lit8 v15, v1, -0x1

    const/16 v16, 0x1

    if-ne v10, v15, :cond_4

    move/from16 v15, v16

    goto :goto_1

    :cond_4
    move v15, v6

    .line 1630
    .local v15, "hitLast":Z
    :goto_1
    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v16, v6

    .line 1632
    .local v16, "hitFirst":Z
    :goto_2
    if-eqz v15, :cond_6

    if-eqz v16, :cond_6

    .line 1634
    goto :goto_4

    .line 1637
    :cond_6
    if-nez v16, :cond_9

    if-eqz v11, :cond_7

    if-nez v15, :cond_7

    goto :goto_3

    .line 1643
    :cond_7
    if-nez v15, :cond_8

    if-nez v11, :cond_2

    if-nez v16, :cond_2

    .line 1645
    :cond_8
    add-int/lit8 v9, v9, -0x1

    .line 1646
    move v5, v9

    .line 1648
    const/4 v11, 0x1

    goto :goto_0

    .line 1639
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 1640
    move v5, v10

    .line 1642
    const/4 v11, 0x0

    goto :goto_0

    .line 1653
    .end local v13    # "rowId":J
    .end local v15    # "hitLast":Z
    .end local v16    # "hitFirst":Z
    :cond_a
    :goto_4
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1442
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
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

    .line 1052
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public whitelist getEmptyView()Landroid/view/View;
    .locals 1

    .line 1151
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getFirstVisiblePosition()I
    .locals 1

    .line 1104
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public whitelist getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 1242
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1243
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
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
    .param p1, "position"    # I

    .line 1247
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1248
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
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

    .line 1114
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final whitelist getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 357
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .line 429
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final whitelist getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .line 476
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public whitelist getPositionForView(Landroid/view/View;)I
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 1072
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object v0, p1

    .line 1075
    .local v0, "listItem":Landroid/view/View;
    :goto_0
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v3, v2

    .local v3, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 1076
    move-object v0, v3

    goto :goto_0

    .line 1081
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    nop

    .line 1083
    if-eqz v0, :cond_2

    .line 1085
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    .line 1086
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1087
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1088
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v1, v3

    return v1

    .line 1086
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1094
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_2
    return v1

    .line 1078
    :catch_0
    move-exception v2

    .line 1080
    .local v2, "e":Ljava/lang/ClassCastException;
    return v1
.end method

.method public whitelist getSelectedItem()Ljava/lang/Object;
    .locals 3

    .line 1036
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1037
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 1038
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 1039
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1041
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1022
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1013
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract whitelist getSelectedView()Landroid/view/View;
.end method

.method greylist-max-o handleDataChanged()V
    .locals 6

    .line 1487
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1488
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1490
    .local v1, "found":Z
    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 1495
    iget-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1498
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1502
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v3

    .line 1503
    .local v3, "newPos":I
    if-ltz v3, :cond_0

    .line 1505
    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v5

    .line 1506
    .local v5, "selectablePos":I
    if-ne v5, v3, :cond_0

    .line 1508
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1509
    const/4 v1, 0x1

    .line 1513
    .end local v3    # "newPos":I
    .end local v5    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 1515
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1518
    .restart local v3    # "newPos":I
    if-lt v3, v0, :cond_1

    .line 1519
    add-int/lit8 v3, v0, -0x1

    .line 1521
    :cond_1
    if-gez v3, :cond_2

    .line 1522
    const/4 v3, 0x0

    .line 1526
    :cond_2
    invoke-virtual {p0, v3, v4}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 1527
    .local v4, "selectablePos":I
    if-gez v4, :cond_3

    .line 1529
    invoke-virtual {p0, v3, v2}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v4

    .line 1531
    :cond_3
    if-ltz v4, :cond_4

    .line 1532
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1533
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1534
    const/4 v1, 0x1

    .line 1538
    .end local v3    # "newPos":I
    .end local v4    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1540
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1541
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1542
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1543
    iput-wide v4, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1544
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1545
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1548
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1549
    return-void
.end method

.method greylist-max-o isInFilterMode()Z
    .locals 1

    .line 1161
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 1665
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 1326
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1327
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1328
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1459
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1460
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1461
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1462
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1465
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1466
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1467
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1468
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1469
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1448
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1449
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1450
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1451
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1454
    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1003
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 1004
    return-void
.end method

.method public whitelist onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 0
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "flags"    # I

    .line 1791
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    .line 1792
    return-void
.end method

.method protected blacklist onProvideStructure(Landroid/view/ViewStructure;II)V
    .locals 2
    .param p1, "structure"    # Landroid/view/ViewStructure;
    .param p2, "viewFor"    # I
    .param p3, "flags"    # I

    .line 1798
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onProvideStructure(Landroid/view/ViewStructure;II)V

    .line 1800
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1802
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1803
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_1

    return-void

    .line 1805
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1806
    .local v1, "options":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 1807
    invoke-virtual {p1, v1}, Landroid/view/ViewStructure;->setAutofillOptions([Ljava/lang/CharSequence;)V

    .line 1810
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "options":[Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method public greylist-max-o onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1428
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1431
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1433
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1434
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1435
    const/4 v1, 0x1

    return v1

    .line 1437
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 373
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 375
    instance-of v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mPenPressState:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 376
    :cond_0
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 377
    const/4 v0, 0x1

    .local v0, "result":Z
    goto :goto_0

    .line 379
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    .line 382
    .restart local v0    # "result":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 383
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 385
    :cond_2
    return v0
.end method

.method greylist-max-o rememberSyncState()V
    .locals 5

    .line 1700
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1701
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1702
    iget v1, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1703
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 1705
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1706
    .local v0, "v":Landroid/view/View;
    iget-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1707
    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1708
    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1711
    :cond_0
    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1712
    .end local v0    # "v":Landroid/view/View;
    goto :goto_1

    .line 1714
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1715
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1716
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1717
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_0

    .line 1719
    :cond_2
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1721
    :goto_0
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1722
    if-eqz v1, :cond_3

    .line 1723
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1725
    :cond_3
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1728
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "adapter":Landroid/widget/Adapter;, "TT;"
    :cond_4
    :goto_1
    return-void
.end method

.method blacklist rememberSyncStateHorizontal()V
    .locals 5

    .line 1737
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1739
    iget v1, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1740
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 1742
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1743
    .local v0, "v":Landroid/view/View;
    iget-wide v3, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1744
    iget v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1745
    if-eqz v0, :cond_1

    .line 1746
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_0

    .line 1747
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1749
    :cond_1
    :goto_0
    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1750
    .end local v0    # "v":Landroid/view/View;
    goto :goto_3

    .line 1752
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1753
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1754
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v3, :cond_3

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1755
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_1

    .line 1757
    :cond_3
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1759
    :goto_1
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v3, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1760
    if-eqz v1, :cond_5

    .line 1761
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_2

    .line 1762
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1764
    :cond_5
    :goto_2
    iput v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1767
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "adapter":Landroid/widget/Adapter;, "TT;"
    :cond_6
    :goto_3
    return-void
.end method

.method public whitelist removeAllViews()V
    .locals 2

    .line 998
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 976
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 988
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist selectionChanged()V
    .locals 2

    .line 1352
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 1354
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    .line 1355
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1356
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1368
    :cond_1
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    goto :goto_2

    .line 1361
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v1, :cond_3

    .line 1362
    new-instance v1, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v1, p0, v0}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier-IA;)V

    iput-object v1, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    goto :goto_1

    .line 1364
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1366
    :goto_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 1372
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 1373
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_5

    .line 1374
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 1376
    :cond_5
    return-void
.end method

.method blacklist selectionChangedForAccessibility()V
    .locals 0

    .line 1380
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    .line 1381
    return-void
.end method

.method public final whitelist semGetLongPressMultiSelectionListener()Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    return-object v0
.end method

.method public final whitelist semGetMultiSelectionListener()Landroid/widget/AdapterView$SemMultiSelectionListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    return-object v0
.end method

.method public final greylist semGetOnMultiSelectedListener()Landroid/widget/AdapterView$SemOnMultiSelectedListener;
    .locals 1

    .line 569
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    return-object v0
.end method

.method public final blacklist semGetOnNotifyKeyPressListener()Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;
    .locals 1

    .line 851
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    return-object v0
.end method

.method public blacklist semNotifyKeyPress(Landroid/view/View;IJZ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z

    .line 858
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    if-eqz v0, :cond_0

    .line 859
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;->onNotifyKeyPress(Landroid/widget/AdapterView;Landroid/view/View;IJZ)V

    .line 860
    const/4 v0, 0x1

    return v0

    .line 862
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semNotifyLongPressMultiSelectionEnded(II)V
    .locals 1
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .line 804
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    .line 805
    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    .line 807
    :cond_0
    return-void
.end method

.method blacklist semNotifyLongPressMultiSelectionStarted(II)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .line 790
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    .line 791
    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    .line 794
    :cond_0
    return-void
.end method

.method blacklist semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 775
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    if-eqz v0, :cond_0

    .line 776
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 777
    const/4 v0, 0x1

    return v0

    .line 779
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semNotifyMultiSelectedStart(II)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .line 613
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemMultiSelectionListener;->onMultiSelectionStarted(II)V

    .line 615
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    .line 621
    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelectStart(II)V

    .line 624
    :cond_1
    return-void
.end method

.method protected blacklist semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z
    .param p6, "ctrlPressState"    # Z
    .param p7, "penPressState"    # Z

    .line 588
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object v9, p0

    iget-object v0, v9, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 589
    return v10

    .line 593
    :cond_0
    move/from16 v11, p7

    iput-boolean v11, v9, Landroid/widget/AdapterView;->mPenPressState:Z

    .line 595
    iget-object v0, v9, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    .line 596
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V

    .line 597
    return v10

    .line 601
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method blacklist semNotifyMultiSelectedStop(II)V
    .locals 1
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .line 635
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemMultiSelectionListener;->onMultiSelectionEnded(II)V

    .line 637
    return-void

    .line 642
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mPenPressState:Z

    .line 643
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    if-eqz v0, :cond_1

    .line 644
    invoke-interface {v0, p1, p2}, Landroid/widget/AdapterView$SemOnMultiSelectedListener;->onMultiSelectStop(II)V

    .line 647
    :cond_1
    return-void
.end method

.method public whitelist semSetBottomColor(I)V
    .locals 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 531
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    sget-boolean v0, Landroid/widget/AdapterView;->sIsSamsungBasicInteraction:Z

    if-nez v0, :cond_0

    .line 532
    const-string v0, "AdapterView"

    const-string v1, "App should add meta data for Samsung UX first."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
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

    .line 535
    iget-object v0, p0, Landroid/widget/AdapterView;->mSemFillOutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    return-void
.end method

.method public whitelist semSetLongPressMultiSelectionListener(Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    .line 745
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mSemLongPressMultiSelectionListener:Landroid/widget/AdapterView$SemLongPressMultiSelectionListener;

    .line 746
    return-void
.end method

.method public whitelist semSetMultiSelectionListener(Landroid/widget/AdapterView$SemMultiSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$SemMultiSelectionListener;

    .line 685
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    .line 686
    return-void
.end method

.method public blacklist semSetNotifyOnKeyPressListener(Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    .line 842
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mSemOnNotifyKeyPressListener:Landroid/widget/AdapterView$SemOnNotifyKeyPressListener;

    .line 843
    return-void
.end method

.method public greylist semSetOnMultiSelectedListener(Landroid/widget/AdapterView$SemOnMultiSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    .line 558
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mSemOnMultiSelectedListener:Landroid/widget/AdapterView$SemOnMultiSelectedListener;

    .line 559
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
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1130
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 1133
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1134
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1139
    .local v1, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1140
    .local v0, "empty":Z
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 1141
    return-void
.end method

.method public whitelist setFocusable(I)V
    .locals 4
    .param p1, "focusable"    # I

    .line 1166
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1167
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
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

    .line 1169
    .local v2, "empty":Z
    :goto_1
    iput p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 1170
    and-int/lit8 v3, p1, 0x11

    if-nez v3, :cond_2

    .line 1171
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 1174
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, p1

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(I)V

    .line 1175
    return-void
.end method

.method public whitelist setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .line 1179
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1180
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
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

    .line 1182
    .local v3, "empty":Z
    :goto_1
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 1183
    if-eqz p1, :cond_2

    .line 1184
    iput v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:I

    .line 1187
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

    .line 1188
    return-void
.end method

.method greylist setNextSelectedPositionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .line 1685
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1686
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1688
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    .line 1689
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1690
    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1692
    :cond_0
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 1253
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 348
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 349
    return-void
.end method

.method public whitelist setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 418
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 421
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 422
    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 471
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 472
    return-void
.end method

.method greylist setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1674
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1675
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1676
    return-void
.end method

.method public abstract whitelist setSelection(I)V
.end method
