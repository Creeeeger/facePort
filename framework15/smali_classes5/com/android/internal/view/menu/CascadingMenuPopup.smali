.class final Lcom/android/internal/view/menu/CascadingMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Lcom/android/internal/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field private static final blacklist HORIZ_POSITION_LEFT:I = 0x0

.field private static final blacklist HORIZ_POSITION_RIGHT:I = 0x1

.field private static final blacklist SEM_ITEM_LAYOUT:I = 0x1090174

.field private static final blacklist SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private blacklist mAnchorView:Landroid/view/View;

.field private final blacklist mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDropDownGravity:I

.field private blacklist mForceShowIcon:Z

.field private final blacklist mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private blacklist mHasXOffset:Z

.field private blacklist mHasYOffset:Z

.field private blacklist mIsParentThemeDeviceDefault:Z

.field private final blacklist mItemLayout:I

.field private blacklist mLastPosition:I

.field private final blacklist mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

.field private final blacklist mMenuMaxWidth:I

.field private blacklist mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final blacklist mOverflowOnly:Z

.field private final blacklist mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPopupStyleAttr:I

.field private final blacklist mPopupStyleRes:I

.field private blacklist mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private blacklist mRawDropDownGravity:I

.field private blacklist mShouldCloseImmediately:Z

.field private blacklist mShowTitle:Z

.field private final blacklist mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShownAnchorView:Landroid/view/View;

.field private final blacklist mSubMenuHoverHandler:Landroid/os/Handler;

.field private blacklist mTreeObserver:Landroid/view/ViewTreeObserver;

.field private blacklist mXOffset:I

.field private blacklist mYOffset:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGlobalLayoutListener(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsParentThemeDeviceDefault(Lcom/android/internal/view/menu/CascadingMenuPopup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShowingMenus(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShownAnchorView(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubMenuHoverHandler(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldCloseImmediately(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTreeObserver(Lcom/android/internal/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$2;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$3;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iput p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    iput-boolean p5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200ef

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    iget-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x10104a9

    invoke-virtual {v3, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_1

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget v4, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    const v4, 0x1050101

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    :goto_2
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    nop

    nop

    const-string/jumbo v3, "text__enable_new_context_menu"

    invoke-static {v3, v0}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x109005c

    goto :goto_3

    :cond_4
    const v0, 0x109005b

    :goto_3
    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mItemLayout:I

    return-void
.end method

.method private blacklist createPopupWindow()Landroid/widget/MenuPopupWindow;
    .locals 5

    new-instance v0, Landroid/widget/MenuPopupWindow;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    return-object v0
.end method

.method private blacklist findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 10

    iget-object v0, p1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/internal/view/menu/MenuAdapter;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v4, v3

    check-cast v4, Lcom/android/internal/view/menu/MenuAdapter;

    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_3

    invoke-virtual {v4, v7}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v9

    if-ne v0, v9, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    return-object v1

    :cond_4
    add-int/2addr v6, v5

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v6, v7

    if-ltz v7, :cond_6

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lt v7, v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_6
    :goto_3
    return-object v1
.end method

.method private blacklist getInitialMenuPosition()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private blacklist getNextMenuPosition(I)I
    .locals 7

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    aget v4, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, p1

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_0

    return v5

    :cond_0
    return v2

    :cond_1
    aget v4, v1, v5

    sub-int/2addr v4, p1

    if-gez v4, :cond_2

    return v2

    :cond_2
    return v5
.end method

.method private blacklist showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 13

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    const v3, 0x1090174

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mItemLayout:I

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lcom/android/internal/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/widget/MenuPopupWindow;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    iget v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v7, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-direct {p0, v6, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v7

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v4, v7}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    invoke-virtual {v4, v8}, Landroid/widget/MenuPopupWindow;->setTouchModal(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v9

    if-ne v9, v3, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v8

    :goto_3
    iput v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    iget v11, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v12, 0x5

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_6

    if-eqz v10, :cond_5

    move v11, v2

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    goto :goto_4

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    goto :goto_4

    :cond_7
    neg-int v11, v2

    :goto_4
    invoke-virtual {v4, v11}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    invoke-virtual {v4, v8}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    goto :goto_5

    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    :goto_5
    new-instance v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v3, v4, p1, v9}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/widget/MenuPopupWindow;Lcom/android/internal/view/menu/MenuBuilder;I)V

    iget-object v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v6, :cond_c

    iget-boolean v10, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v10, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_c

    iget-boolean v10, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v10, :cond_b

    const v10, 0x1090173

    invoke-virtual {v0, v10, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    goto :goto_6

    :cond_b
    const v10, 0x10900f5

    invoke-virtual {v0, v10, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    :goto_6
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v10, v5, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public blacklist dismiss()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v0, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListView()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    iget-boolean v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setAnimationStyle(I)V

    :cond_2
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->dismiss()V

    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v6, v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v6

    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    :goto_0
    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    const/4 v6, 0x1

    invoke-interface {v3, p1, v6}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    iput-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_6
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v3}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v6, v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public whitelist onDismiss()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    :cond_2
    return-void
.end method

.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAnchorView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public blacklist setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public blacklist setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    return-void
.end method

.method public blacklist setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public blacklist setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    return-void
.end method

.method public blacklist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public blacklist setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public blacklist setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    return-void
.end method

.method public blacklist show()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public blacklist updateMenuView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method
