.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;


# static fields
.field public static final ONEUI_5_1_1:Z


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public final mContext:Landroid/content/Context;

.field public mDropDownAnchorView:Landroid/view/View;

.field public mDropDownGravity:I

.field public final mDropDownHeight:I

.field public mDropDownHorizontalOffset:I

.field public mDropDownList:Landroidx/appcompat/widget/DropDownListView;

.field public mDropDownVerticalOffset:I

.field public mDropDownVerticalOffsetSet:Z

.field public mDropDownWidth:I

.field public final mDropDownWindowLayoutType:I

.field public mEpicenterBounds:Landroid/graphics/Rect;

.field public final mForceShowUpper:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

.field public mIsOverflowPopup:Z

.field public mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final mListItemExpandMaximum:I

.field public mModal:Z

.field public mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

.field public mOverlapAnchor:Z

.field public mOverlapAnchorSet:Z

.field public final mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

.field public final mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

.field public final mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->getField_SEM_PLATFORM_INT()I

    move-result v0

    const v1, 0x224d4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/appcompat/widget/ListPopupWindow;->ONEUI_5_1_1:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0403ef

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0403ef

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    const v1, 0x7fffffff

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    sget-object v1, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 0

    new-instance p0, Landroidx/appcompat/widget/DropDownListView;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getHorizontalOffset()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return p0
.end method

.method public final getListView()Landroidx/appcompat/widget/DropDownListView;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    return-object p0
.end method

.method public final getVerticalOffset()I
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return p0
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setContentWidth(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    :goto_0
    return-void
.end method

.method public final setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public final setVerticalOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public final show()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    iget-object v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-nez v0, :cond_1

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v4, Landroidx/appcompat/widget/ListPopupWindow$2;

    invoke-direct {v4, v1}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iget-boolean v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v4, v2

    invoke-virtual {v1, v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    move-result-object v0

    iput-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    new-instance v4, Landroidx/appcompat/widget/ListPopupWindow$3;

    invoke-direct {v4, v1}, Landroidx/appcompat/widget/ListPopupWindow$3;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v0

    goto :goto_1

    :cond_2
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    move v5, v4

    :goto_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v3, v7, v8, v0}, Landroidx/appcompat/widget/AppCompatPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    sget-boolean v8, Landroidx/appcompat/widget/ListPopupWindow;->ONEUI_5_1_1:Z

    if-nez v8, :cond_13

    iget-boolean v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mIsOverflowPopup:Z

    if-eqz v8, :cond_13

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iget-object v11, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    const-string v12, "display"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManager;

    const-string v12, "ListPopupWindow"

    if-nez v11, :cond_4

    const-string v7, "displayManager is null, can not update height"

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v10, -0x2

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v11, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v11

    if-nez v11, :cond_5

    const-string v7, "display is null, can not update height"

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-static {}, Landroidx/reflect/view/SeslSemWindowManagerReflector;->isTableMode()Z

    move-result v13

    if-nez v13, :cond_6

    :goto_4
    goto :goto_3

    :cond_6
    iget-object v13, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    :goto_5
    instance-of v14, v13, Landroid/content/ContextWrapper;

    if-eqz v14, :cond_8

    instance-of v14, v13, Landroid/app/Activity;

    if-eqz v14, :cond_7

    check-cast v13, Landroid/app/Activity;

    goto :goto_6

    :cond_7
    check-cast v13, Landroid/content/ContextWrapper;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_4

    :cond_9
    new-array v13, v6, [I

    invoke-virtual {v7, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v11, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableDualDisplay()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v6, :cond_d

    iget v7, v8, Landroid/graphics/Point;->y:I

    iget v11, v8, Landroid/graphics/Point;->x:I

    if-le v7, v11, :cond_a

    div-int/2addr v11, v6

    goto :goto_7

    :cond_a
    div-int/lit8 v11, v7, 0x2

    goto :goto_7

    :cond_b
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableNoSubDisplay()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v2, :cond_d

    iget v7, v8, Landroid/graphics/Point;->y:I

    iget v11, v8, Landroid/graphics/Point;->x:I

    if-le v7, v11, :cond_c

    div-int/2addr v7, v6

    move v11, v7

    goto :goto_7

    :cond_c
    div-int/2addr v11, v6

    goto :goto_7

    :cond_d
    move v11, v4

    :goto_7
    const-string v7, "center = "

    const-string v14, " , anchor top = "

    invoke-static {v11, v7, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v14, v13, v2

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_12

    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f071285

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v14, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07127b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    aget v15, v13, v2

    if-le v11, v15, :cond_e

    sub-int/2addr v11, v15

    sub-int/2addr v11, v7

    sub-int/2addr v11, v14

    goto :goto_9

    :cond_e
    iget-object v15, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v15, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    if-eqz v9, :cond_f

    invoke-interface {v9}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v9

    iget v15, v9, Landroid/graphics/Insets;->bottom:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "systemBar insets = "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    iget-object v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v9, "android"

    const-string v10, "navigation_bar_height"

    const-string v15, "dimen"

    invoke-virtual {v4, v10, v15, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_10

    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_8

    :cond_10
    const/4 v15, 0x0

    :goto_8
    const-string v4, "navigationBarHeight = "

    invoke-static {v15, v4, v12}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    aget v4, v13, v2

    sub-int v9, v4, v11

    sub-int/2addr v11, v15

    div-int/2addr v11, v6

    if-le v9, v11, :cond_11

    sub-int/2addr v9, v7

    sub-int v11, v9, v14

    goto :goto_9

    :cond_11
    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v7

    sub-int/2addr v8, v14

    sub-int v11, v8, v15

    goto :goto_9

    :cond_12
    const/4 v11, -0x2

    :goto_9
    move v10, v11

    :goto_a
    if-lez v10, :cond_13

    if-ge v10, v0, :cond_13

    move v0, v10

    :cond_13
    iget v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_14

    :goto_b
    add-int/2addr v0, v5

    goto :goto_d

    :cond_14
    iget v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_16

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v8, v7, :cond_15

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_c

    :cond_15
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    sub-int/2addr v8, v11

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_c

    :cond_16
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v9

    sub-int/2addr v8, v10

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_c
    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v9, v8, v0}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(II)I

    move-result v0

    if-lez v0, :cond_17

    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v8

    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    goto :goto_b

    :goto_d
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v5

    if-ne v5, v6, :cond_18

    move v5, v2

    goto :goto_e

    :cond_18
    const/4 v5, 0x0

    :goto_e
    iget v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    xor-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v8}, Landroidx/appcompat/widget/AppCompatPopupWindow;->seslSetAllowScrollingAnchorParent(Z)V

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_25

    iget-object v6, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-nez v6, :cond_19

    return-void

    :cond_19
    iget v6, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v6, v7, :cond_1a

    move v6, v7

    goto :goto_f

    :cond_1a
    const/4 v8, -0x2

    if-ne v6, v8, :cond_1b

    iget-object v6, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    :cond_1b
    :goto_f
    if-ne v4, v7, :cond_20

    if-eqz v5, :cond_1c

    move v4, v0

    goto :goto_10

    :cond_1c
    move v4, v7

    :goto_10
    if-eqz v5, :cond_1e

    iget v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v5, v7, :cond_1d

    move v5, v7

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    :goto_11
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_13

    :cond_1e
    iget v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v5, v7, :cond_1f

    move v5, v7

    goto :goto_12

    :cond_1f
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_13

    :cond_20
    const/4 v5, -0x2

    if-ne v4, v5, :cond_21

    move v4, v0

    :cond_21
    :goto_13
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget-boolean v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    if-eqz v3, :cond_22

    sub-int/2addr v2, v0

    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    if-nez v0, :cond_22

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v2, v0

    :cond_22
    move v11, v2

    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    if-gez v6, :cond_23

    move v12, v7

    goto :goto_14

    :cond_23
    move v12, v6

    :goto_14
    if-gez v4, :cond_24

    move v13, v7

    goto :goto_15

    :cond_24
    move v13, v4

    :goto_15
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_2a

    :cond_25
    iget v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v5, v7, :cond_26

    move v5, v7

    const/4 v8, -0x2

    goto :goto_16

    :cond_26
    const/4 v8, -0x2

    if-ne v5, v8, :cond_27

    iget-object v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_27
    :goto_16
    if-ne v4, v7, :cond_28

    move v4, v7

    goto :goto_17

    :cond_28
    if-ne v4, v8, :cond_29

    move v4, v0

    :cond_29
    :goto_17
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2a

    goto/16 :goto_29

    :cond_2a
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2b

    goto/16 :goto_29

    :cond_2b
    iget-boolean v8, v3, Landroidx/appcompat/widget/AppCompatPopupWindow;->mIsReplacedPoupBackground:Z

    xor-int/2addr v8, v2

    if-nez v8, :cond_2c

    goto/16 :goto_29

    :cond_2c
    invoke-static {v0}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const v0, 0x7f06079a

    goto :goto_18

    :cond_2d
    const v0, 0x7f06079b

    :goto_18
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v8

    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f07127d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v10, v0

    const-string v11, "android.view.SemBlurInfo$Builder"

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v13, "current_sec_active_themepackage"

    invoke-static {v0, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    goto/16 :goto_29

    :cond_2e
    sget-object v0, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Class;

    const-string v13, "hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY"

    invoke-static {v0, v13, v14}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const-string v14, "SeslBaseReflector"

    const-string v15, " InvocationTargetException"

    const-string v7, " IllegalArgumentException"

    const-string v6, " IllegalAccessException"

    if-eqz v13, :cond_2f

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v13, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1a

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v15, v14, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_19

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v7, v14, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_19

    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v6, v14, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_2f
    :goto_19
    const/4 v2, 0x0

    :goto_1a
    instance-of v0, v2, Ljava/lang/String;

    const-string v13, "not_supported"

    if-eqz v0, :cond_30

    check-cast v2, Ljava/lang/String;

    goto :goto_1b

    :cond_30
    move-object v2, v13

    :goto_1b
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v0, v2, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_32

    goto/16 :goto_29

    :cond_31
    const/4 v2, 0x1

    const/4 v12, 0x0

    :cond_32
    const-string v13, "SeslSemBlurInfoRftr"

    new-array v0, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v12

    :try_start_1
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1c

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "failed to get reflection - "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1c
    if-eqz v2, :cond_33

    const/4 v12, 0x0

    :try_start_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_21

    :catch_4
    move-exception v0

    goto :goto_1d

    :catch_5
    move-exception v0

    goto :goto_1e

    :catch_6
    move-exception v0

    goto :goto_1f

    :goto_1d
    const-string v2, "semCreateBlurBuilder InstantiationException"

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :goto_1e
    const-string v2, "semCreateBlurBuilder InvocationTargetException"

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :goto_1f
    const-string v2, "semCreateBlurBuilder IllegalAccessException"

    invoke-static {v13, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_20
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_38

    const/4 v12, 0x1

    new-array v0, v12, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v0, v16

    const-string v13, "hidden_setRadius"

    invoke-static {v11, v13, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    if-eqz v13, :cond_34

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    :try_start_3
    invoke-virtual {v13, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_22

    :catch_7
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v15, v14, v12}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_22

    :catch_8
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v7, v14, v12}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_22

    :catch_9
    move-exception v0

    move-object v12, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v6, v14, v12}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_22
    const/4 v12, 0x1

    :cond_34
    new-array v0, v12, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v0, v16

    const-string v13, "hidden_setBackgroundColor"

    invoke-static {v11, v13, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    if-eqz v13, :cond_35

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    :try_start_4
    invoke-virtual {v13, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_23

    :catch_a
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v15, v14, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_23

    :catch_b
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v7, v14, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_23

    :catch_c
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v0, v6, v14, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_23
    const/4 v9, 0x1

    goto :goto_24

    :cond_35
    move v9, v12

    :goto_24
    new-array v0, v9, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v12, v0, v13

    const-string v12, "hidden_setBackgroundCornerRadius"

    invoke-static {v11, v12, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    if-eqz v12, :cond_36

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    :try_start_5
    invoke-virtual {v12, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_d

    goto :goto_25

    :catch_d
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v0, v15, v14, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_25

    :catch_e
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v0, v7, v14, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_25

    :catch_f
    move-exception v0

    move-object v9, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v0, v6, v14, v9}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :cond_36
    :goto_25
    const-string v0, "hidden_build"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-static {v11, v0, v10}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_37

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v10, 0x0

    :try_start_6
    invoke-virtual {v9, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_10

    goto :goto_27

    :catch_10
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v0, v15, v14, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_26

    :catch_11
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v0, v7, v14, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalArgumentException;)V

    goto :goto_26

    :catch_12
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v0, v6, v14, v2}, Landroidx/appcompat/app/AlertDialog$$ExternalSyntheticOutline0;->m(Ljava/lang/reflect/Method;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/IllegalAccessException;)V

    :goto_26
    move-object v9, v10

    :goto_27
    sget-object v0, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    :try_start_7
    const-string v0, "android.view.SemBlurInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    const-string v10, "hidden_semSetBlurInfo"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v0, v12, v11

    invoke-static {v2, v10, v12}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_37

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_16

    :try_start_8
    invoke-virtual {v2, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_16

    goto :goto_28

    :catch_13
    move-exception v0

    move-object v6, v0

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_14
    move-exception v0

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_15
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_16

    goto :goto_28

    :catch_16
    move-exception v0

    const-string v2, "SeslViewReflector"

    const-string v6, "semSetBlurInfo ClassNotFoundException"

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    :goto_28
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v0, :cond_38

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    :cond_38
    :goto_29
    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v0, :cond_39

    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_39
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    iget v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_3a

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_3a
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz v0, :cond_3b

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_3b
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_3c

    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    :goto_2a
    return-void
.end method
