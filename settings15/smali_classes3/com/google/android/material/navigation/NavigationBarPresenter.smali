.class public final Lcom/google/android/material/navigation/NavigationBarPresenter;
.super Landroidx/appcompat/view/menu/BaseMenuPresenter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public id:I

.field public final mAnimationHandler:Lcom/google/android/material/navigation/NavigationBarPresenter$1;

.field public mContext:Landroid/content/Context;

.field public mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

.field public final mPopupPresenterCallback:Lcom/google/android/material/navigation/NavigationBarPresenter$PopupPresenterCallback;

.field public mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

.field public menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field public updateSuspended:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    new-instance p1, Lcom/google/android/material/navigation/NavigationBarPresenter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$1;-><init>(Lcom/google/android/material/navigation/NavigationBarPresenter;Landroid/os/Looper;)V

    new-instance p1, Lcom/google/android/material/navigation/NavigationBarPresenter$PopupPresenterCallback;

    invoke-direct {p1, p0}, Lcom/google/android/material/navigation/NavigationBarPresenter$PopupPresenterCallback;-><init>(Lcom/google/android/material/navigation/NavigationBarPresenter;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPopupPresenterCallback:Lcom/google/android/material/navigation/NavigationBarPresenter$PopupPresenterCallback;

    return-void
.end method


# virtual methods
.method public final flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    return p0
.end method

.method public final initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iput-object p2, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v1, v6, :cond_0

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v4, v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    move v2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/badge/BadgeState$State;

    if-eqz v5, :cond_2

    new-instance v6, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {v6, v0, v5}, Lcom/google/android/material/badge/BadgeDrawable;-><init>(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)V

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v3

    :goto_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_8

    array-length v0, p1

    :goto_5
    if-ge v3, v0, :cond_8

    aget-object v1, p1, v3

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v2, :cond_7

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    new-instance v1, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget-object v4, v4, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public final onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final updateMenuView(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    goto/16 :goto_5

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object p1, p1, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->hideOverflowMenu()V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v1, v1, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    add-int/2addr v0, v1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    goto/16 :goto_5

    :cond_3
    iget p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v3, v2, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v2, v2, v1

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    :cond_4
    instance-of v3, v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslAddBadge(ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_7
    iget p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    const/4 v1, 0x1

    if-nez p1, :cond_8

    move p1, v1

    goto :goto_1

    :cond_8
    move p1, v0

    :goto_1
    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v3, v3, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iput-boolean v1, v3, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v3, v3, v2

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    if-eq v5, v4, :cond_9

    iput v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    sget-object v4, Lcom/google/android/material/navigation/NavigationBarItemView;->ACTIVE_INDICATOR_LABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    iput-object v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorTransform:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_9
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v3, v3, v2

    iget-boolean v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    if-eq v4, p1, :cond_a

    iput-boolean p1, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_a
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v5, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v3, v4}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iput-boolean v0, v3, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    move p1, v0

    move v2, p1

    :goto_3
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v4, v3, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    if-ge p1, v4, :cond_f

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v3, v3, p1

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    instance-of v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v4, :cond_e

    move-object v5, v3

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget v6, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    instance-of v6, v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v6, :cond_c

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    move-object v6, v4

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v3, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    :cond_c
    iget-object v3, v5, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_4

    :cond_d
    move v3, v0

    :goto_4
    or-int/2addr v2, v3

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_f
    const p1, 0x7f0a0251

    if-eqz v2, :cond_10

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslAddBadge(ILjava/lang/String;)V

    goto :goto_5

    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    :cond_11
    :goto_5
    return-void
.end method
