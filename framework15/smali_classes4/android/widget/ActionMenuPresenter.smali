.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$SavedState;,
        Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemImageOverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
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

    const v0, 0x1090024

    const v1, 0x1090023

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$PopupPresenterCallback-IA;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    new-instance v0, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mNavigationBarHeight:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200ef

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11102be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v4

    :cond_1
    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$1100(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$300(Landroid/widget/ActionMenuPresenter;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic blacklist access$400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic blacklist access$700(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic blacklist access$900(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method private greylist-max-o computeMenuItemAnimationInfo(Z)V
    .locals 7

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v6, v4, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private greylist-max-o findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v5}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private greylist-max-o runItemAnimations()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v2, :cond_b

    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v8, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v9, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    const/4 v10, 0x0

    if-ltz v9, :cond_8

    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v15, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    if-eq v14, v15, :cond_0

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget v15, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    sub-int/2addr v15, v3

    int-to-float v3, v15

    new-array v4, v5, [F

    aput v3, v4, v6

    aput v10, v4, v7

    invoke-static {v14, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    :cond_0
    iget v3, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    if-eq v3, v4, :cond_1

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v4, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v14, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    sub-int/2addr v4, v14

    int-to-float v4, v4

    new-array v14, v5, [F

    aput v4, v14, v6

    aput v10, v14, v7

    invoke-static {v3, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    :cond_1
    if-nez v12, :cond_2

    if-eqz v13, :cond_7

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    iget v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v10, v2, :cond_3

    iget v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v10, :cond_3

    iget-object v10, v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v12, :cond_6

    if-eqz v13, :cond_5

    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v4, v6

    aput-object v13, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_2

    :cond_5
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v3, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v13, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    :goto_2
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v4, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v4, v2, v11, v3, v6}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    iget-object v5, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/widget/ActionMenuPresenter$3;

    invoke-direct {v5, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4

    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    :goto_3
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v12, v2, :cond_9

    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v12, v7, :cond_9

    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v12, v12, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v3

    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->cancel()V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    iget-object v4, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v5, [F

    aput v3, v12, v6

    aput v10, v12, v7

    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    iget-object v7, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v6, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v6, v2, v8, v4, v5}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    move-object v5, v6

    iget-object v6, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Landroid/widget/ActionMenuPresenter$4;

    invoke-direct {v6, v0, v8}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_5
    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    iget-object v2, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_e

    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v11, v2, :cond_c

    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v11, v5, :cond_c

    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v11, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v8

    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    iget-object v9, v4, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v5, [F

    aput v8, v11, v6

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v7

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v12, v2, v4, v9, v7}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    iget-object v13, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Landroid/widget/ActionMenuPresenter$5;

    invoke-direct {v13, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v9, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_7

    :cond_e
    const-wide/16 v10, 0x96

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private greylist-max-o setupItemAnimations()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/widget/ActionMenuView;

    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback-IA;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    return-void
.end method

.method public greylist-max-r dismissPopupMenus()Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o flagActionItems()Z
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    iget v4, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_4

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    :goto_2
    iget-boolean v14, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v3, 0x0

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v12, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v12, :cond_6

    if-nez v11, :cond_5

    add-int v12, v8, v9

    if-le v12, v3, :cond_6

    :cond_5
    add-int/lit8 v3, v3, -0x1

    :cond_6
    sub-int/2addr v3, v8

    iget-object v12, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v15, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_7

    iget v15, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v4, v15

    iget v15, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    rem-int v15, v4, v15

    iget v5, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v16, v15, v14

    add-int v13, v5, v16

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_c

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v17

    if-eqz v17, :cond_b

    move/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move/from16 v18, v8

    iget-boolean v8, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    invoke-static {v3, v13, v14, v6, v8}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v16

    sub-int v14, v14, v16

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v4, v8

    if-nez v10, :cond_9

    move v10, v8

    :cond_9
    move-object/from16 v16, v3

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v19, v4

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    :cond_a
    move/from16 v19, v4

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v15, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    move/from16 v4, v19

    goto :goto_6

    :cond_b
    move/from16 v17, v3

    move/from16 v18, v8

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v17

    move/from16 v8, v18

    goto :goto_3

    :cond_c
    move/from16 v17, v3

    move/from16 v18, v8

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_22

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v17, :cond_e

    if-eqz v15, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v19, v2

    goto :goto_9

    :cond_e
    :goto_8
    if-lez v4, :cond_10

    move/from16 v19, v2

    iget-boolean v2, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_f

    if-lez v14, :cond_11

    :cond_f
    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    move/from16 v19, v2

    :cond_11
    :goto_9
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_1a

    move/from16 v20, v2

    move/from16 v16, v9

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iget-boolean v2, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    invoke-static {v9, v13, v14, v6, v2}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v21

    sub-int v14, v14, v21

    if-nez v21, :cond_12

    const/4 v2, 0x0

    goto :goto_b

    :cond_12
    move/from16 v2, v20

    :goto_b
    goto :goto_c

    :cond_13
    invoke-virtual {v9, v6, v6}, Landroid/view/View;->measure(II)V

    move/from16 v2, v20

    :goto_c
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v4, v4, v20

    if-nez v10, :cond_14

    move/from16 v10, v20

    :cond_14
    move/from16 v21, v6

    iget-boolean v6, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v6, :cond_16

    if-ltz v4, :cond_15

    const/4 v6, 0x1

    goto :goto_d

    :cond_15
    const/4 v6, 0x0

    :goto_d
    and-int/2addr v2, v6

    goto :goto_10

    :cond_16
    iget-boolean v6, v0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v6, :cond_18

    if-ltz v4, :cond_17

    const/4 v6, 0x1

    goto :goto_e

    :cond_17
    const/4 v6, 0x0

    :goto_e
    and-int/2addr v2, v6

    goto :goto_10

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

    :cond_1a
    move/from16 v20, v2

    move/from16 v21, v6

    move/from16 v16, v9

    :goto_10
    if-eqz v2, :cond_1b

    if-eqz v8, :cond_1b

    const/4 v6, 0x1

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    goto :goto_13

    :cond_1b
    if-eqz v15, :cond_1f

    const/4 v6, 0x0

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v3, :cond_1e

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v8, :cond_1d

    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_1c

    add-int/lit8 v17, v17, 0x1

    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    :goto_12
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_11

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    :cond_1f
    const/4 v0, 0x0

    :goto_13
    if-eqz v2, :cond_20

    add-int/lit8 v17, v17, -0x1

    :cond_20
    invoke-virtual {v5, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_14

    :cond_21
    move/from16 v19, v2

    move/from16 v21, v6

    move/from16 v16, v9

    const/4 v0, 0x0

    :goto_14
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v16

    move/from16 v2, v19

    move/from16 v6, v21

    goto/16 :goto_7

    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

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

    move-object v1, p3

    check-cast v1, Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 4

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    if-eq v0, v1, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-object v1
.end method

.method public greylist-max-o getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hideOverflowMenu()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o hideSubMenus()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_0

    const v0, 0x1090145

    const v1, 0x1090144

    invoke-super {p0, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setMenuLayoutResources(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    :cond_1
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    :cond_3
    :goto_0
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    :cond_4
    iget v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    new-instance v3, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    goto :goto_1

    :cond_5
    new-instance v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v6}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    check-cast v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    :cond_6
    :goto_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    :cond_7
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_8
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    :goto_2
    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42600000    # 56.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    return-void
.end method

.method public greylist-max-o isOverflowMenuShowPending()Z
    .locals 1

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

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

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

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const v2, 0x10102f6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    const/16 v2, 0x25

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    :cond_2
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_3

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

    :cond_3
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    :cond_4
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    goto :goto_1

    :cond_5
    iget v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    :goto_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_6
    return-void
.end method

.method public greylist-max-r onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/ActionMenuPresenter$SavedState;

    iget v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    :cond_0
    return-void
.end method

.method public greylist-max-r onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    invoke-virtual {p1, v4}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v4, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1, v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    const/4 v4, 0x1

    return v4
.end method

.method public greylist-max-o onSubUiVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o setExpandedActionViewsExclusive(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public greylist-max-o setItemLimit(I)V
    .locals 1

    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    return-void
.end method

.method public greylist-max-o setMenuView(Landroid/widget/ActionMenuView;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public greylist-max-o setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public greylist-max-o setReserveOverflow(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public greylist-max-o setWidthLimit(IZ)V
    .locals 1

    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    return-void
.end method

.method public greylist-max-o shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o showOverflowMenu()Z
    .locals 7

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

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o updateMenuView(Z)V
    .locals 8

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_0

    const-string v0, "ActionMenuPresenter"

    const-string v1, "ActionMenuPresenter::updateMenuView() mMenuView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    nop

    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v4

    xor-int/2addr v4, v5

    move v2, v4

    goto :goto_2

    :cond_4
    if-lez v3, :cond_5

    move v4, v5

    :cond_5
    move v2, v4

    :cond_6
    :goto_2
    if-eqz v2, :cond_b

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-nez v3, :cond_8

    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_7

    new-instance v3, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    goto :goto_3

    :cond_7
    new-instance v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    :cond_8
    :goto_3
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_9
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v4, v5, :cond_c

    if-eqz v4, :cond_a

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_b
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    goto :goto_5

    :cond_c
    :goto_4
    nop

    :cond_d
    :goto_5
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    check-cast v4, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;

    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButtonContainer;->invalidateBadgeText()V

    :cond_e
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSemOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    :cond_10
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    iget-boolean v4, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method
