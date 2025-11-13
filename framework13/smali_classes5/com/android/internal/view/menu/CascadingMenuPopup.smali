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

.field private static final blacklist ITEM_LAYOUT:I = 0x109005a

.field private static final blacklist SEM_ITEM_LAYOUT:I = 0x1090170

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "popupStyleAttr"    # I
    .param p4, "popupStyleRes"    # I
    .param p5, "overflowOnly"    # Z

    .line 229
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 127
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$2;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 145
    new-instance v0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$3;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 206
    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 230
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 231
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 232
    iput p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    .line 233
    iput p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    .line 234
    iput-boolean p5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    .line 236
    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 237
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 240
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 243
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 244
    .local v2, "outValue":Landroid/util/TypedValue;
    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    .line 245
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11200b9

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 246
    iget v3, v2, Landroid/util/TypedValue;->data:I

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    .line 247
    if-eqz v3, :cond_3

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x10104a9

    invoke-virtual {v3, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 249
    iget v0, v2, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v0, v4, :cond_2

    .line 253
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 254
    .local v0, "anchorContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 257
    .end local v0    # "anchorContext":Landroid/content/Context;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    goto :goto_2

    .line 259
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    const v3, 0x10500c9

    .line 260
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 259
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    .line 263
    :goto_2
    return-void
.end method

.method private blacklist createPopupWindow()Landroid/widget/MenuPopupWindow;
    .locals 5

    .line 271
    new-instance v0, Landroid/widget/MenuPopupWindow;

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 273
    .local v0, "popupWindow":Landroid/widget/MenuPopupWindow;
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    .line 274
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 275
    invoke-virtual {v0, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 277
    iget v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    .line 279
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    .line 280
    return-object v0
.end method

.method private blacklist findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 664
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 665
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 666
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 667
    return v0

    .line 664
    .end local v2    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4
    .param p1, "parent"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "submenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 522
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 523
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 524
    return-object v2

    .line 521
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 10
    .param p1, "parentInfo"    # Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .param p2, "submenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 542
    iget-object v0, p1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v0

    .line 543
    .local v0, "owner":Landroid/view/MenuItem;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 545
    return-object v1

    .line 551
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 552
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 553
    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_1

    .line 554
    move-object v4, v3

    check-cast v4, Landroid/widget/HeaderViewListAdapter;

    .line 555
    .local v4, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v5

    .line 556
    .local v5, "headersCount":I
    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/internal/view/menu/MenuAdapter;

    .line 557
    .local v4, "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_0

    .line 558
    .end local v4    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    .end local v5    # "headersCount":I
    :cond_1
    const/4 v5, 0x0

    .line 559
    .restart local v5    # "headersCount":I
    move-object v4, v3

    check-cast v4, Lcom/android/internal/view/menu/MenuAdapter;

    .line 563
    .restart local v4    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_0
    const/4 v6, -0x1

    .line 564
    .local v6, "ownerPosition":I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v8

    .local v8, "count":I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 565
    invoke-virtual {v4, v7}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v9

    if-ne v0, v9, :cond_2

    .line 566
    move v6, v7

    .line 567
    goto :goto_2

    .line 564
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 570
    .end local v7    # "i":I
    .end local v8    # "count":I
    :cond_3
    :goto_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 572
    return-object v1

    .line 576
    :cond_4
    add-int/2addr v6, v5

    .line 579
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v6, v7

    .line 580
    .local v7, "ownerViewPosition":I
    if-ltz v7, :cond_6

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lt v7, v8, :cond_5

    goto :goto_3

    .line 585
    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 582
    :cond_6
    :goto_3
    return-object v1
.end method

.method private blacklist getInitialMenuPosition()I
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 342
    .local v0, "layoutDirection":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 343
    :cond_0
    nop

    .line 342
    :goto_0
    return v1
.end method

.method private blacklist getNextMenuPosition(I)I
    .locals 7
    .param p1, "nextMenuWidth"    # I

    .line 355
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 357
    .local v0, "lastListView":Landroid/widget/ListView;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 358
    .local v1, "screenLocation":[I
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 360
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 361
    .local v3, "displayFrame":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 363
    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 364
    aget v4, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, p1

    .line 365
    .local v4, "right":I
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_0

    .line 366
    return v5

    .line 368
    :cond_0
    return v2

    .line 370
    .end local v4    # "right":I
    :cond_1
    aget v4, v1, v5

    sub-int/2addr v4, p1

    .line 371
    .local v4, "left":I
    if-gez v4, :cond_2

    .line 372
    return v2

    .line 374
    :cond_2
    return v5
.end method

.method private blacklist showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 13
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 395
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 398
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_0

    .line 399
    new-instance v1, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    const v3, 0x1090170

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    .local v1, "adapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_0

    .line 401
    .end local v1    # "adapter":Lcom/android/internal/view/menu/MenuAdapter;
    :cond_0
    new-instance v1, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    const v3, 0x109005a

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    .line 409
    .restart local v1    # "adapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_1

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    .line 418
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Lcom/android/internal/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 419
    .local v2, "menuWidth":I
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/widget/MenuPopupWindow;

    move-result-object v4

    .line 420
    .local v4, "popupWindow":Landroid/widget/MenuPopupWindow;
    invoke-virtual {v4, v1}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 421
    invoke-virtual {v4, v2}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    .line 422
    iget v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v4, v6}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    .line 426
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 427
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 428
    .local v6, "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-direct {p0, v6, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v7

    .local v7, "parentView":Landroid/view/View;
    goto :goto_2

    .line 430
    .end local v6    # "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v7    # "parentView":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    .line 431
    .restart local v6    # "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v7, 0x0

    .line 434
    .restart local v7    # "parentView":Landroid/view/View;
    :goto_2
    const/4 v8, 0x0

    if-eqz v7, :cond_8

    .line 436
    invoke-virtual {v4, v7}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 437
    invoke-virtual {v4, v8}, Landroid/widget/MenuPopupWindow;->setTouchModal(Z)V

    .line 438
    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 440
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v9

    .line 441
    .local v9, "nextMenuPosition":I
    if-ne v9, v3, :cond_4

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v8

    .line 442
    .local v10, "showOnRight":Z
    :goto_3
    iput v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 449
    iget v11, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v12, 0x5

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_6

    .line 450
    if-eqz v10, :cond_5

    .line 451
    move v11, v2

    .local v11, "x":I
    goto :goto_4

    .line 453
    .end local v11    # "x":I
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    neg-int v11, v11

    .restart local v11    # "x":I
    goto :goto_4

    .line 456
    .end local v11    # "x":I
    :cond_6
    if-eqz v10, :cond_7

    .line 457
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v11

    .restart local v11    # "x":I
    goto :goto_4

    .line 459
    .end local v11    # "x":I
    :cond_7
    neg-int v11, v2

    .line 462
    .restart local v11    # "x":I
    :goto_4
    invoke-virtual {v4, v11}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 466
    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setOverlapAnchor(Z)V

    .line 467
    invoke-virtual {v4, v8}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 468
    .end local v9    # "nextMenuPosition":I
    .end local v10    # "showOnRight":Z
    .end local v11    # "x":I
    goto :goto_5

    .line 469
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v3, :cond_9

    .line 470
    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    .line 472
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v3, :cond_a

    .line 473
    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    .line 475
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 476
    .local v3, "epicenterBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 480
    .end local v3    # "epicenterBounds":Landroid/graphics/Rect;
    :goto_5
    new-instance v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v3, v4, p1, v9}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/widget/MenuPopupWindow;Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 481
    .local v3, "menuInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 485
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 486
    .local v9, "listView":Landroid/widget/ListView;
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 489
    if-nez v6, :cond_c

    iget-boolean v10, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v10, :cond_c

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 492
    iget-boolean v10, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v10, :cond_b

    .line 493
    const v10, 0x109016e

    invoke-virtual {v0, v10, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .local v10, "titleItemView":Landroid/widget/FrameLayout;
    goto :goto_6

    .line 496
    .end local v10    # "titleItemView":Landroid/widget/FrameLayout;
    :cond_b
    const v10, 0x10900ee

    invoke-virtual {v0, v10, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 500
    .restart local v10    # "titleItemView":Landroid/widget/FrameLayout;
    :goto_6
    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 501
    .local v11, "titleView":Landroid/widget/TextView;
    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 502
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-virtual {v9, v10, v5, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 506
    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->show()V

    .line 508
    .end local v10    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v11    # "titleView":Landroid/widget/TextView;
    :cond_c
    return-void
.end method


# virtual methods
.method public blacklist addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 380
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_0
    return-void
.end method

.method public blacklist dismiss()V
    .locals 5

    .line 313
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 314
    .local v0, "length":I
    if-lez v0, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v0, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 316
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 317
    .local v1, "addedMenus":[Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 318
    aget-object v3, v1, v2

    .line 319
    .local v3, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 317
    .end local v3    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 324
    .end local v1    # "addedMenus":[Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist flagActionItems()Z
    .locals 1

    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getListView()Landroid/widget/ListView;
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 593
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
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 676
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I

    move-result v0

    .line 677
    .local v0, "menuIndex":I
    if-gez v0, :cond_0

    .line 678
    return-void

    .line 682
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 683
    .local v1, "nextMenuIndex":I
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 685
    .local v2, "childInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 689
    .end local v2    # "childInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 690
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 691
    iget-boolean v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 693
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v5}, Landroid/widget/MenuPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 694
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/MenuPopupWindow;->setAnimationStyle(I)V

    .line 696
    :cond_2
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->dismiss()V

    .line 698
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 699
    .local v4, "count":I
    if-lez v4, :cond_3

    .line 700
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v6, v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_0

    .line 702
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v6

    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    .line 705
    :goto_0
    if-nez v4, :cond_7

    .line 707
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 709
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_4

    .line 710
    const/4 v6, 0x1

    invoke-interface {v3, p1, v6}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 713
    :cond_4
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_6

    .line 714
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 715
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 717
    :cond_5
    iput-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 719
    :cond_6
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 723
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v3}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    .line 724
    :cond_7
    if-eqz p2, :cond_8

    .line 728
    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 729
    .local v5, "rootInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 731
    .end local v5    # "rootInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_8
    :goto_1
    return-void
.end method

.method public whitelist onDismiss()V
    .locals 5

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "dismissedInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 605
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    .line 606
    .local v3, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 607
    move-object v0, v3

    .line 608
    goto :goto_1

    .line 604
    .end local v3    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 615
    iget-object v1, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 617
    :cond_2
    return-void
.end method

.method public whitelist onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 328
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    .line 330
    return v1

    .line 332
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 745
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 740
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 638
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

    .line 639
    .local v1, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 641
    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 642
    return v2

    .line 644
    .end local v1    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 647
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 650
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 652
    :cond_2
    return v2

    .line 654
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    .line 758
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 759
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 762
    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 762
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 765
    :cond_0
    return-void
.end method

.method public blacklist setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 632
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 633
    return-void
.end method

.method public blacklist setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .line 267
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    .line 268
    return-void
.end method

.method public blacklist setGravity(I)V
    .locals 1
    .param p1, "dropDownGravity"    # I

    .line 749
    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 750
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    .line 751
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 752
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 751
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    .line 754
    :cond_0
    return-void
.end method

.method public blacklist setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    .line 780
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    .line 781
    return-void
.end method

.method public blacklist setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 769
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 770
    return-void
.end method

.method public blacklist setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .line 791
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    .line 792
    return-void
.end method

.method public blacklist setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    .line 786
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    .line 787
    return-void
.end method

.method public blacklist show()V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    return-void

    .line 290
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

    .line 291
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 292
    .end local v1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 297
    if-eqz v0, :cond_4

    .line 298
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 299
    .local v1, "addGlobalListener":Z
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 300
    if-eqz v1, :cond_3

    .line 301
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 305
    .end local v1    # "addGlobalListener":Z
    :cond_4
    return-void
.end method

.method public blacklist updateMenuView(Z)V
    .locals 3
    .param p1, "cleared"    # Z

    .line 621
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

    .line 623
    .local v1, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    .line 627
    .end local v1    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    goto :goto_0

    .line 628
    :cond_1
    return-void
.end method
