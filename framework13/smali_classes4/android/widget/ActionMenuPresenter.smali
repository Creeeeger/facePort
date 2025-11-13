.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final blacklist ACTION_MENU_WIDTH_LIMIT:F = 0.7f

.field private static final greylist-max-o ITEM_ANIMATION_DURATION:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final greylist-max-o mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private greylist-max-o mActionItemWidthLimit:I

.field private greylist-max-o mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private greylist-max-o mExpandedActionViewsExclusive:Z

.field private blacklist mIsThemeDeviceDefaultFamily:Z

.field private greylist-max-o mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private greylist-max-o mMaxItems:I

.field private greylist-max-o mMaxItemsSet:Z

.field private greylist-max-o mMinCellSize:I

.field private blacklist mNavigationBarHeight:I

.field greylist-max-o mOpenSubMenuId:I

.field private greylist-max-o mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

.field private greylist-max-o mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field private greylist-max-o mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mPendingOverflowIconSet:Z

.field private greylist-max-o mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final greylist-max-o mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private greylist-max-o mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private greylist-max-o mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReserveOverflow:Z

.field private greylist-max-o mReserveOverflowSet:Z

.field private greylist-max-o mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemOverflowButton:Landroid/view/View;

.field private greylist-max-o mStrictWidthLimit:Z

.field private blacklist mTooltipText:Ljava/lang/CharSequence;

.field private blacklist mUseTextItemMode:Z

.field private greylist-max-o mWidthLimit:I

.field private greylist-max-o mWidthLimitSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionButtonPopup(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/ActionMenuPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemAnimationPreDrawListener(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNavigationBarHeight(Landroid/widget/ActionMenuPresenter;)I
    .locals 0

    iget p0, p0, Landroid/widget/ActionMenuPresenter;->mNavigationBarHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostLayoutItems(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreLayoutItems(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningItemAnimations(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemOverflowButton(Landroid/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTooltipText(Landroid/widget/ActionMenuPresenter;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/widget/ActionMenuPresenter;->mTooltipText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseTextItemMode(Landroid/widget/ActionMenuPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActionButtonPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNavigationBarHeight(Landroid/widget/ActionMenuPresenter;I)V
    .locals 0

    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mNavigationBarHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverflowPopup(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPostedOpenRunnable(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTooltipText(Landroid/widget/ActionMenuPresenter;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mTooltipText:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcomputeMenuItemAnimationInfo(Landroid/widget/ActionMenuPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunItemAnimations(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->runItemAnimations()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    const v0, 0x1090022

    const v1, 0x1090021

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 104
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 112
    new-instance v0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$PopupPresenterCallback-IA;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    .line 122
    new-instance v0, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 132
    new-instance v0, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mNavigationBarHeight:I

    .line 164
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v1, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b9

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 167
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    .line 169
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v4

    :cond_1
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    .line 172
    .end local v1    # "themeValue":Landroid/util/TypedValue;
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/ActionMenuPresenter;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 83
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method private greylist-max-o computeMenuItemAnimationInfo(Z)V
    .locals 7
    .param p1, "preLayout"    # Z

    .line 378
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 379
    .local v0, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 380
    .local v1, "count":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 381
    .local v2, "items":Landroid/util/SparseArray;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 382
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 383
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 384
    .local v5, "id":I
    if-lez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v6, :cond_1

    .line 385
    new-instance v6, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v6, v4, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    .line 386
    .local v6, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "id":I
    .end local v6    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private greylist-max-o findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 675
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 676
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 678
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 679
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 680
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 681
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 682
    invoke-interface {v5}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 683
    return-object v4

    .line 679
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 686
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private greylist-max-o runItemAnimations()V
    .locals 16

    .line 400
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v2, :cond_b

    .line 401
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 402
    .local v2, "id":I
    iget-object v8, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 403
    .local v8, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    iget-object v9, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    .line 404
    .local v9, "postLayoutIndex":I
    const/4 v10, 0x0

    if-ltz v9, :cond_8

    .line 406
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 407
    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 408
    .local v11, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v12, 0x0

    .line 409
    .local v12, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    .line 410
    .local v13, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v14, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v15, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    if-eq v14, v15, :cond_0

    .line 411
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v5, [F

    iget v3, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v15, v6

    aput v10, v15, v7

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 414
    :cond_0
    iget v3, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    if-eq v3, v4, :cond_1

    .line 415
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v5, [F

    iget v14, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v15, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    aput v14, v4, v6

    aput v10, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 418
    :cond_1
    if-nez v12, :cond_2

    if-eqz v13, :cond_7

    .line 419
    :cond_2
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 420
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 421
    .local v4, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v10, v2, :cond_3

    iget v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v10, :cond_3

    .line 422
    iget-object v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    .line 419
    .end local v4    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    .end local v3    # "j":I
    :cond_4
    if-eqz v12, :cond_6

    .line 427
    if-eqz v13, :cond_5

    .line 428
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v4, v6

    aput-object v13, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 431
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .restart local v3    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 434
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v13, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 436
    .restart local v3    # "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 437
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 438
    new-instance v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v4, v2, v11, v3, v6}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 440
    .local v4, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v5, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v5, Landroid/widget/ActionMenuPresenter$3;

    invoke-direct {v5, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_7
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 454
    .end local v11    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v12    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "pvhY":Landroid/animation/PropertyValuesHolder;
    goto :goto_4

    .line 456
    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 457
    .local v3, "oldAlpha":F
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 458
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 459
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v12, v2, :cond_9

    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v12, v7, :cond_9

    .line 460
    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v12, v12, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 461
    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->cancel()V

    .line 457
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 464
    .end local v4    # "j":I
    :cond_a
    iget-object v4, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v5, [F

    aput v3, v12, v6

    aput v10, v12, v7

    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 467
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    iget-object v6, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    iget-object v7, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 468
    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 469
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 470
    new-instance v6, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v6, v2, v8, v4, v5}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    move-object v5, v6

    .line 471
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v6, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v6, Landroid/widget/ActionMenuPresenter$4;

    invoke-direct {v6, v0, v8}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    .end local v2    # "id":I
    .end local v3    # "oldAlpha":F
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v8    # "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v9    # "postLayoutIndex":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 486
    .end local v1    # "i":I
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 487
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 488
    .restart local v2    # "id":I
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 489
    .local v3, "postLayoutIndex":I
    if-ltz v3, :cond_e

    .line 491
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 492
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 493
    .local v4, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v8, 0x0

    .line 494
    .local v8, "oldAlpha":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    .line 495
    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 496
    .local v10, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v11, v2, :cond_c

    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v11, v5, :cond_c

    .line 497
    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v11, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v8

    .line 498
    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    .line 494
    .end local v10    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 501
    .end local v9    # "j":I
    :cond_d
    iget-object v9, v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v5, [F

    aput v8, v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v7

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 503
    .local v9, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    .line 504
    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 505
    new-instance v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v12, v2, v4, v9, v7}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 506
    .local v12, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v13, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v13, Landroid/widget/ActionMenuPresenter$5;

    invoke-direct {v13, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v9, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_7

    .line 489
    .end local v4    # "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v8    # "oldAlpha":F
    .end local v9    # "anim":Landroid/animation/ObjectAnimator;
    .end local v12    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_e
    const-wide/16 v10, 0x96

    .line 486
    .end local v2    # "id":I
    .end local v3    # "postLayoutIndex":I
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 520
    .end local v1    # "i":I
    :cond_f
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 521
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 522
    return-void
.end method

.method private greylist-max-o setupItemAnimations()V
    .locals 2

    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    .line 530
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 531
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 532
    return-void
.end method


# virtual methods
.method public greylist-max-o bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 352
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 354
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/widget/ActionMenuView;

    .line 355
    .local v0, "menuView":Landroid/widget/ActionMenuView;
    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 356
    .local v1, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 358
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 359
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback-IA;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 361
    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 362
    return-void
.end method

.method public greylist-max-r dismissPopupMenus()Z
    .locals 2

    .line 737
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 738
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 739
    return v0
.end method

.method public greylist-max-o filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 630
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 631
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o flagActionItems()Z
    .locals 23

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 779
    .local v1, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "itemsSize":I
    goto :goto_0

    .line 781
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "itemsSize":I
    :cond_0
    const/4 v1, 0x0

    .line 782
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/4 v2, 0x0

    .line 785
    .restart local v2    # "itemsSize":I
    :goto_0
    iget v3, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 786
    .local v3, "maxActions":I
    iget v4, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 787
    .local v4, "widthLimit":I
    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 788
    .local v6, "querySpec":I
    iget-object v7, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 790
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 791
    .local v8, "requiredItems":I
    const/4 v9, 0x0

    .line 792
    .local v9, "requestedItems":I
    const/4 v10, 0x0

    .line 793
    .local v10, "firstActionWidth":I
    const/4 v11, 0x0

    .line 794
    .local v11, "hasOverflow":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v2, :cond_4

    .line 795
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 796
    .local v13, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 797
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 798
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 799
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 801
    :cond_2
    const/4 v11, 0x1

    .line 803
    :goto_2
    iget-boolean v14, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 806
    const/4 v3, 0x0

    .line 794
    .end local v13    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 811
    .end local v12    # "i":I
    :cond_4
    iget-boolean v12, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v12, :cond_6

    if-nez v11, :cond_5

    add-int v12, v8, v9

    if-le v12, v3, :cond_6

    .line 813
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 815
    :cond_6
    sub-int/2addr v3, v8

    .line 817
    iget-object v12, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 818
    .local v12, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clear()V

    .line 820
    const/4 v13, 0x0

    .line 821
    .local v13, "cellSize":I
    const/4 v14, 0x0

    .line 822
    .local v14, "cellsRemaining":I
    iget-boolean v15, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_7

    .line 823
    iget v15, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v4, v15

    .line 824
    rem-int v16, v4, v15

    .line 825
    .local v16, "cellSizeRemaining":I
    div-int v17, v16, v14

    add-int v13, v15, v17

    .line 829
    .end local v16    # "cellSizeRemaining":I
    :cond_7
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v2, :cond_c

    .line 830
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 832
    .local v5, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 833
    move/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "maxActions":I
    .local v18, "maxActions":I
    invoke-virtual {v0, v5, v3, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 834
    .local v3, "v":Landroid/view/View;
    move/from16 v19, v8

    .end local v8    # "requiredItems":I
    .local v19, "requiredItems":I
    iget-boolean v8, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_8

    .line 835
    const/4 v8, 0x0

    invoke-static {v3, v13, v14, v6, v8}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v17

    sub-int v14, v14, v17

    goto :goto_4

    .line 838
    :cond_8
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 840
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 841
    .local v8, "measuredWidth":I
    sub-int/2addr v4, v8

    .line 842
    if-nez v10, :cond_9

    .line 843
    move v10, v8

    .line 845
    :cond_9
    move-object/from16 v17, v3

    .end local v3    # "v":Landroid/view/View;
    .local v17, "v":Landroid/view/View;
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 846
    .local v3, "groupId":I
    if-eqz v3, :cond_a

    .line 847
    move/from16 v20, v4

    const/4 v4, 0x1

    .end local v4    # "widthLimit":I
    .local v20, "widthLimit":I
    invoke-virtual {v12, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    .line 846
    .end local v20    # "widthLimit":I
    .restart local v4    # "widthLimit":I
    :cond_a
    move/from16 v20, v4

    const/4 v4, 0x1

    .line 849
    .end local v4    # "widthLimit":I
    .restart local v20    # "widthLimit":I
    :goto_5
    invoke-virtual {v5, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 850
    .end local v3    # "groupId":I
    .end local v8    # "measuredWidth":I
    .end local v17    # "v":Landroid/view/View;
    move/from16 v4, v20

    goto :goto_6

    .line 854
    .end local v18    # "maxActions":I
    .end local v19    # "requiredItems":I
    .end local v20    # "widthLimit":I
    .local v3, "maxActions":I
    .restart local v4    # "widthLimit":I
    .local v8, "requiredItems":I
    :cond_b
    move/from16 v18, v3

    move/from16 v19, v8

    .end local v3    # "maxActions":I
    .end local v8    # "requiredItems":I
    .restart local v18    # "maxActions":I
    .restart local v19    # "requiredItems":I
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 829
    .end local v5    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v18

    move/from16 v8, v19

    const/4 v5, 0x0

    goto :goto_3

    .end local v18    # "maxActions":I
    .end local v19    # "requiredItems":I
    .restart local v3    # "maxActions":I
    .restart local v8    # "requiredItems":I
    :cond_c
    move/from16 v18, v3

    move/from16 v19, v8

    .line 861
    .end local v3    # "maxActions":I
    .end local v8    # "requiredItems":I
    .end local v15    # "i":I
    .restart local v18    # "maxActions":I
    .restart local v19    # "requiredItems":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_22

    .line 862
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 864
    .restart local v5    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 867
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v8

    .line 868
    .local v8, "groupId":I
    invoke-virtual {v12, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    .line 869
    .local v15, "inGroup":Z
    if-gtz v18, :cond_e

    if-eqz v15, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v20, v2

    goto :goto_9

    :cond_e
    :goto_8
    if-lez v4, :cond_10

    move/from16 v20, v2

    .end local v2    # "itemsSize":I
    .local v20, "itemsSize":I
    iget-boolean v2, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_f

    if-lez v14, :cond_11

    :cond_f
    const/4 v2, 0x1

    goto :goto_a

    .end local v20    # "itemsSize":I
    .restart local v2    # "itemsSize":I
    :cond_10
    move/from16 v20, v2

    .end local v2    # "itemsSize":I
    .restart local v20    # "itemsSize":I
    :cond_11
    :goto_9
    const/4 v2, 0x0

    .line 872
    .local v2, "isAction":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 873
    move/from16 v21, v2

    move/from16 v17, v9

    const/4 v2, 0x0

    .end local v2    # "isAction":Z
    .end local v9    # "requestedItems":I
    .local v17, "requestedItems":I
    .local v21, "isAction":Z
    invoke-virtual {v0, v5, v2, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 874
    .local v9, "v":Landroid/view/View;
    iget-boolean v2, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_13

    .line 875
    const/4 v2, 0x0

    invoke-static {v9, v13, v14, v6, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v22

    .line 877
    .local v22, "cells":I
    sub-int v14, v14, v22

    .line 878
    if-nez v22, :cond_12

    .line 879
    const/4 v2, 0x0

    .end local v21    # "isAction":Z
    .restart local v2    # "isAction":Z
    goto :goto_b

    .line 878
    .end local v2    # "isAction":Z
    .restart local v21    # "isAction":Z
    :cond_12
    move/from16 v2, v21

    .line 881
    .end local v21    # "isAction":Z
    .end local v22    # "cells":I
    .restart local v2    # "isAction":Z
    :goto_b
    goto :goto_c

    .line 882
    .end local v2    # "isAction":Z
    .restart local v21    # "isAction":Z
    :cond_13
    invoke-virtual {v9, v6, v6}, Landroid/view/View;->measure(II)V

    move/from16 v2, v21

    .line 884
    .end local v21    # "isAction":Z
    .restart local v2    # "isAction":Z
    :goto_c
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 885
    .local v21, "measuredWidth":I
    sub-int v4, v4, v21

    .line 886
    if-nez v10, :cond_14

    .line 887
    move/from16 v10, v21

    .line 890
    :cond_14
    move/from16 v22, v6

    .end local v6    # "querySpec":I
    .local v22, "querySpec":I
    iget-boolean v6, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v6, :cond_16

    .line 891
    if-ltz v4, :cond_15

    const/4 v6, 0x1

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    :goto_d
    and-int/2addr v2, v6

    goto :goto_10

    .line 895
    :cond_16
    iget-boolean v6, v0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v6, :cond_18

    .line 896
    if-ltz v4, :cond_17

    const/4 v6, 0x1

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    :goto_e
    and-int/2addr v2, v6

    goto :goto_10

    .line 898
    :cond_18
    add-int v6, v4, v10

    if-lez v6, :cond_19

    const/4 v6, 0x1

    goto :goto_f

    :cond_19
    const/4 v6, 0x0

    :goto_f
    and-int/2addr v2, v6

    goto :goto_10

    .line 872
    .end local v17    # "requestedItems":I
    .end local v21    # "measuredWidth":I
    .end local v22    # "querySpec":I
    .restart local v6    # "querySpec":I
    .local v9, "requestedItems":I
    :cond_1a
    move/from16 v21, v2

    move/from16 v22, v6

    move/from16 v17, v9

    .line 903
    .end local v6    # "querySpec":I
    .end local v9    # "requestedItems":I
    .restart local v17    # "requestedItems":I
    .restart local v22    # "querySpec":I
    :goto_10
    if-eqz v2, :cond_1b

    if-eqz v8, :cond_1b

    .line 904
    const/4 v6, 0x1

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    goto :goto_13

    .line 905
    :cond_1b
    if-eqz v15, :cond_1f

    .line 907
    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 908
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_11
    if-ge v6, v3, :cond_1e

    .line 909
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 910
    .local v9, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v8, :cond_1d

    .line 912
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_1c

    add-int/lit8 v18, v18, 0x1

    .line 913
    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_12

    .line 910
    :cond_1d
    const/4 v0, 0x0

    .line 908
    .end local v9    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_11

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    .line 905
    .end local v6    # "j":I
    :cond_1f
    const/4 v0, 0x0

    .line 918
    :goto_13
    if-eqz v2, :cond_20

    add-int/lit8 v18, v18, -0x1

    .line 920
    :cond_20
    invoke-virtual {v5, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_14

    .line 864
    .end local v8    # "groupId":I
    .end local v15    # "inGroup":Z
    .end local v17    # "requestedItems":I
    .end local v20    # "itemsSize":I
    .end local v22    # "querySpec":I
    .local v2, "itemsSize":I
    .local v6, "querySpec":I
    .local v9, "requestedItems":I
    :cond_21
    move/from16 v20, v2

    move/from16 v22, v6

    move/from16 v17, v9

    const/4 v0, 0x0

    .line 861
    .end local v2    # "itemsSize":I
    .end local v5    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v6    # "querySpec":I
    .end local v9    # "requestedItems":I
    .restart local v17    # "requestedItems":I
    .restart local v20    # "itemsSize":I
    .restart local v22    # "querySpec":I
    :goto_14
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v17

    move/from16 v2, v20

    move/from16 v6, v22

    goto/16 :goto_7

    .line 930
    .end local v3    # "i":I
    .end local v17    # "requestedItems":I
    .end local v20    # "itemsSize":I
    .end local v22    # "querySpec":I
    .restart local v2    # "itemsSize":I
    .restart local v6    # "querySpec":I
    .restart local v9    # "requestedItems":I
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 336
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 340
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    move-object v1, p3

    check-cast v1, Landroid/widget/ActionMenuView;

    .line 343
    .local v1, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 344
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    :cond_3
    return-object v0
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 322
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 323
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 324
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_1

    .line 325
    move-object v2, v1

    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 326
    if-eqz v0, :cond_0

    .line 327
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 329
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 331
    :cond_1
    return-object v1
.end method

.method public greylist-max-o getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 309
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_0

    .line 310
    check-cast v0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    check-cast v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 314
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 317
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hideOverflowMenu()Z
    .locals 3

    .line 717
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 720
    return v1

    .line 723
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 724
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 726
    return v1

    .line 728
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o hideSubMenus()Z
    .locals 1

    .line 748
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 750
    const/4 v0, 0x1

    return v0

    .line 752
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 176
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 178
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_0

    .line 179
    const v0, 0x109013c

    const v1, 0x109013b

    invoke-super {p0, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setMenuLayoutResources(II)V

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 186
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_1

    .line 187
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 190
    :cond_1
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_3

    .line 191
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 200
    :cond_3
    :goto_0
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_4

    .line 201
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 204
    :cond_4
    iget v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 205
    .local v2, "width":I
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 206
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-nez v3, :cond_7

    .line 207
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 208
    new-instance v3, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    goto :goto_1

    .line 210
    :cond_5
    new-instance v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 211
    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    .line 212
    iget-boolean v6, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v6, :cond_6

    .line 213
    move-object v6, v3

    check-cast v6, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    iput-boolean v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 219
    :cond_6
    :goto_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 220
    .local v3, "spec":I
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 222
    .end local v3    # "spec":I
    :cond_7
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_2

    .line 224
    :cond_8
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 225
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    .line 228
    :goto_2
    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 230
    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 231
    return-void
.end method

.method public greylist-max-o isOverflowMenuShowPending()Z
    .locals 1

    .line 764
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

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

.method public greylist-max-r isOverflowMenuShowing()Z
    .locals 1

    .line 760
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isOverflowReserved()Z
    .locals 1

    .line 771
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 935
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 936
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 937
    return-void
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 235
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->View:[I

    const v3, 0x10102f6

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    const/16 v2, 0x25

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 242
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    instance-of v2, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 244
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 254
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_4

    .line 255
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 262
    :cond_4
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 263
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    goto :goto_1

    .line 265
    :cond_5
    iget v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 269
    :goto_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 272
    :cond_6
    return-void
.end method

.method public greylist-max-r onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 950
    move-object v0, p1

    check-cast v0, Landroid/widget/ActionMenuPresenter$SavedState;

    .line 951
    .local v0, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_0

    .line 952
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 953
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 954
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 955
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 958
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public greylist-max-r onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 942
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 943
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 944
    return-object v0
.end method

.method public greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 635
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 636
    return v0

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 641
    :cond_1
    move-object v1, p1

    .line 642
    .local v1, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_2

    .line 643
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    .line 646
    .local v2, "anchor":Landroid/view/View;
    if-nez v2, :cond_3

    .line 651
    return v0

    .line 654
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v3

    .line 658
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 659
    invoke-virtual {p1, v4}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 660
    .local v5, "childItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 661
    const/4 v0, 0x1

    .line 662
    goto :goto_2

    .line 658
    .end local v5    # "childItem":Landroid/view/MenuItem;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 666
    .end local v4    # "i":I
    :cond_5
    :goto_2
    new-instance v4, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1, v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 667
    invoke-virtual {v4, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 668
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 670
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 671
    const/4 v4, 0x1

    return v4
.end method

.method public greylist-max-o onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 962
    if-eqz p1, :cond_0

    .line 964
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 965
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 968
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .line 291
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 292
    return-void
.end method

.method public greylist-max-o setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .line 286
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 288
    return-void
.end method

.method public greylist-max-o setMenuView(Landroid/widget/ActionMenuView;)V
    .locals 2
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

    .line 973
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 976
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 977
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 978
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 980
    return-void
.end method

.method public greylist-max-o setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 295
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 296
    iget-boolean v1, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_0

    .line 297
    check-cast v0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 299
    :cond_0
    check-cast v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 303
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 305
    :goto_0
    return-void
.end method

.method public greylist-max-o setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .line 281
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 283
    return-void
.end method

.method public greylist-max-o setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .line 275
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 276
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 278
    return-void
.end method

.method public greylist-max-o shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 366
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o showOverflowMenu()Z
    .locals 7

    .line 694
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 695
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 698
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 700
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 704
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 706
    const/4 v1, 0x1

    return v1

    .line 708
    .end local v0    # "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o updateMenuView(Z)V
    .locals 8
    .param p1, "cleared"    # Z

    .line 536
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 537
    const-string v0, "ActionMenuPresenter"

    const-string v1, "ActionMenuPresenter::updateMenuView() mMenuView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 542
    .local v0, "menuViewParent":Landroid/view/ViewGroup;
    nop

    .line 545
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 547
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 549
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 551
    .local v1, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 552
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 553
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v4

    .line 554
    .local v4, "provider":Landroid/view/ActionProvider;
    if-eqz v4, :cond_1

    .line 555
    invoke-virtual {v4, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 552
    .end local v4    # "provider":Landroid/view/ActionProvider;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    .end local v1    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 561
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 563
    .local v1, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 564
    .local v2, "hasOverflow":Z
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    .line 565
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 566
    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 567
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v4

    xor-int/2addr v4, v5

    move v2, v4

    goto :goto_2

    .line 569
    :cond_4
    if-lez v3, :cond_5

    move v4, v5

    :cond_5
    move v2, v4

    .line 573
    .end local v3    # "count":I
    :cond_6
    :goto_2
    if-eqz v2, :cond_b

    .line 574
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-nez v3, :cond_8

    .line 575
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_7

    .line 576
    new-instance v3, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    goto :goto_3

    .line 578
    :cond_7
    new-instance v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 579
    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    .line 583
    :cond_8
    :goto_3
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    .line 587
    .local v3, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .line 588
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v4, :cond_9

    .line 589
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 590
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_9

    .line 591
    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutDirection(I)V

    .line 596
    .end local v4    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v5    # "view":Landroid/view/View;
    :cond_9
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 597
    .local v4, "parent":Landroid/view/ViewGroup;
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v4, v5, :cond_c

    .line 598
    if-eqz v4, :cond_a

    .line 599
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 601
    :cond_a
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 603
    .end local v3    # "menuView":Landroid/widget/ActionMenuView;
    .end local v4    # "parent":Landroid/view/ViewGroup;
    :cond_b
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v3, v4, :cond_c

    .line 604
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 606
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 607
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    goto :goto_5

    .line 603
    :cond_c
    :goto_4
    nop

    .line 612
    :cond_d
    :goto_5
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    if-eqz v3, :cond_e

    .line 613
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    .line 614
    .restart local v3    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->invalidateBadgeText()V

    .line 618
    .end local v3    # "menuView":Landroid/widget/ActionMenuView;
    :cond_e
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_10

    .line 619
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 620
    :cond_f
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 624
    :cond_10
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 625
    return-void
.end method
