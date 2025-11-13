.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final whitelist INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final whitelist INPUT_METHOD_NEEDED:I = 0x1

.field public static final whitelist INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final whitelist MATCH_PARENT:I = -0x1

.field public static final whitelist POSITION_PROMPT_ABOVE:I = 0x0

.field public static final whitelist POSITION_PROMPT_BELOW:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final whitelist WRAP_CONTENT:I = -0x2


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDropDownAlwaysVisible:Z

.field private greylist-max-o mDropDownAnchorView:Landroid/view/View;

.field private greylist-max-o mDropDownGravity:I

.field private greylist-max-o mDropDownHeight:I

.field private greylist-max-o mDropDownHorizontalOffset:I

.field private greylist mDropDownList:Landroid/widget/DropDownListView;

.field private greylist-max-o mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDropDownVerticalOffset:I

.field private greylist-max-o mDropDownVerticalOffsetSet:Z

.field private greylist-max-o mDropDownWidth:I

.field private greylist-max-o mDropDownWindowLayoutType:I

.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;

.field private greylist-max-o mForceIgnoreOutsideTouch:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private greylist-max-o mIsAnimatedFromAnchor:Z

.field private blacklist mIsDeviceDefault:Z

.field private blacklist mIsDexMode:Z

.field private greylist-max-o mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private greylist-max-o mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field greylist-max-o mListItemExpandMaximum:I

.field private greylist-max-o mModal:Z

.field private greylist-max-o mObserver:Landroid/database/DataSetObserver;

.field private greylist-max-o mOverlapAnchor:Z

.field private greylist-max-o mOverlapAnchorSet:Z

.field greylist mPopup:Landroid/widget/PopupWindow;

.field private greylist-max-o mPromptPosition:I

.field private greylist-max-o mPromptView:Landroid/view/View;

.field private final greylist-max-o mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final greylist-max-o mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private greylist-max-o mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDeviceDefault(Landroid/widget/ListPopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResizePopupRunnable(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x10102ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v0, 0x3ea

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    const v2, 0x7fffffff

    iput v2, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    iput v1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    new-instance v2, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    new-instance v2, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    new-instance v2, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    new-instance v2, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0, v3}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ListSelectorHider-IA;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mIsDexMode:Z

    iput-boolean v1, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v3, :cond_0

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200ef

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v4, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsDexMode:Z

    return-void
.end method

.method private greylist-max-r buildDropDown()I
    .locals 15

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/widget/ListPopupWindow$2;

    invoke-direct {v5, p0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    iget-boolean v5, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/DropDownListView;->setFocusable(Z)V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v5, v4}, Landroid/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    new-instance v6, Landroid/widget/ListPopupWindow$3;

    invoke-direct {v6, p0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_3

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v9, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v9, :pswitch_data_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid hint position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ListPopupWindow"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    nop

    :goto_0
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v9, :cond_2

    const/high16 v9, -0x80000000

    iget v10, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    move-object v5, v7

    move v0, v13

    :cond_3
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v1, :cond_5

    nop

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget-boolean v6, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    iput v6, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    :cond_6
    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v5, 0x0

    :cond_7
    :goto_3
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v7

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v6, v7, v8, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v6

    if-gez v6, :cond_9

    return v3

    :cond_9
    iget-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_c

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v3, v2, :cond_a

    goto :goto_6

    :cond_a
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_5

    :pswitch_2
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_5

    :pswitch_3
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    sub-int/2addr v2, v3

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    nop

    :goto_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    sub-int v11, v6, v0

    const/4 v12, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move v8, v2

    invoke-virtual/range {v7 .. v12}, Landroid/widget/DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v3

    if-lez v3, :cond_b

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v8}, Landroid/widget/DropDownListView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    add-int v8, v5, v7

    add-int/2addr v0, v8

    :cond_b
    add-int v7, v3, v0

    return v7

    :cond_c
    :goto_6
    add-int v2, v6, v5

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private greylist-max-o removePromptView()V
    .locals 3

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private blacklist setBlurEffect()V
    .locals 7

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefault:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_reduce_transparency"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    new-instance v4, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v4, v2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    move-object v2, v4

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->semIsAvailableBlurBackground()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11200f0

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v4, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_2

    const v1, 0x10603c6

    goto :goto_2

    :cond_2
    const v1, 0x10603c5

    :goto_2
    nop

    const/16 v5, 0x78

    invoke-virtual {v2, v5}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10504c3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/DropDownListView;->setOverScrollMode(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist clearListSelection()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->hideSelector()V

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public whitelist createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method greylist-max-o createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1

    new-instance v0, Landroid/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public whitelist dismiss()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist dismissImmediate()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method public whitelist getAnchorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getAnimationStyle()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEpicenterBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public whitelist getHorizontalOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public whitelist getInputMethodMode()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object v0
.end method

.method public whitelist getPromptPosition()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public whitelist getSelectedItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSelectedItemId()J
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSelectedItemPosition()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public whitelist getSelectedView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSoftInputMode()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public whitelist getVerticalOffset()I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public greylist-max-r isDropDownAlwaysVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public whitelist isInputMethodNotNeeded()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isModal()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public whitelist isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v8, v1, v3}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_0
    move v5, v8

    if-eqz v7, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9, v1}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_1
    move v6, v8

    :cond_3
    const/16 v7, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v7, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v8, 0x14

    if-nez v2, :cond_6

    if-ne p1, v8, :cond_6

    if-lt v0, v6, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    return v3

    :cond_6
    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v9, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    iget-object v9, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v9, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    return v3

    :cond_7
    if-eqz v2, :cond_8

    if-ne p1, v8, :cond_8

    if-ne v0, v6, :cond_9

    return v3

    :cond_8
    if-nez v2, :cond_9

    if-ne p1, v7, :cond_9

    if-ne v0, v5, :cond_9

    return v3

    :cond_9
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performItemClick(I)Z
    .locals 9

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, v0

    move-object v3, v7

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist postShow()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupDataSetObserver-IA;)V

    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public whitelist setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public whitelist setAnimationStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setContentWidth(I)V
    .locals 6

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    :goto_1
    return-void
.end method

.method public greylist-max-r setDropDownAlwaysVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public whitelist setDropDownGravity(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    return-void
.end method

.method public whitelist setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public greylist setForceIgnoreOutsideTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public whitelist setHeight(I)V
    .locals 2

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " passed to ListPopupWindow#setHeight produces undefined results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public whitelist setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public whitelist setInputMethodMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method greylist-max-r setListItemExpandMax(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public whitelist setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setModal(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public whitelist setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public greylist-max-o setOverlapAnchor(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method public whitelist setPromptPosition(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public whitelist setPromptView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public whitelist setSelection(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/DropDownListView;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public whitelist setSoftInputMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public whitelist setVerticalOffset(I)V
    .locals 1

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public whitelist setWidth(I)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsDexMode:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    if-ge p1, v0, :cond_0

    iput v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An abnormal value has been passed. width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListPopupWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    :goto_0
    return-void
.end method

.method public whitelist setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    return-void
.end method

.method public whitelist show()V
    .locals 14

    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    :goto_0
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_7

    if-eqz v1, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v6

    :goto_1
    if-eqz v1, :cond_5

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v4

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    :cond_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_6

    move v8, v6

    goto :goto_3

    :cond_6
    move v8, v4

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    :cond_7
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-eq v7, v3, :cond_9

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ge v0, v3, :cond_8

    goto :goto_4

    :cond_8
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_5

    :cond_9
    :goto_4
    move v3, v0

    :goto_5
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v11, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v2, :cond_b

    move v12, v6

    goto :goto_6

    :cond_b
    move v12, v2

    :goto_6
    if-gez v3, :cond_c

    move v13, v6

    goto :goto_7

    :cond_c
    move v13, v3

    :goto_7
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    goto/16 :goto_b

    :cond_d
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_e

    const/4 v2, -0x1

    goto :goto_8

    :cond_e
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_8

    :cond_f
    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    :goto_8
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_10

    const/4 v3, -0x1

    goto :goto_a

    :cond_10
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-eq v7, v3, :cond_12

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ge v0, v3, :cond_11

    goto :goto_9

    :cond_11
    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_a

    :cond_12
    :goto_9
    move v3, v0

    :goto_a
    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->setBlurEffect()V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_13

    iget-boolean v8, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_14
    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4, v6}, Landroid/widget/DropDownListView;->setSelection(I)V

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->restoreDefaultFocus()Z

    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4}, Landroid/widget/DropDownListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    :cond_16
    iget-boolean v4, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v4, :cond_17

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_17
    :goto_b
    return-void
.end method
