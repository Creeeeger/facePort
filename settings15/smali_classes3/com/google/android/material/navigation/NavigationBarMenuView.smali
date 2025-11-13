.class public abstract Lcom/google/android/material/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# static fields
.field public static final CHECKED_STATE_SET:[I

.field public static final DISABLED_STATE_SET:[I


# instance fields
.field public final badgeDrawables:Landroid/util/SparseArray;

.field buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

.field public itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

.field public itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field public itemBackgroundRes:I

.field public itemIconSize:I

.field public itemIconTint:Landroid/content/res/ColorStateList;

.field public final itemPool:Landroidx/core/util/Pools$SynchronizedPool;

.field public itemStateListAnimatorId:I

.field public itemTextAppearanceActive:I

.field public itemTextAppearanceInactive:I

.field public final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field public itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field public labelVisibilityMode:I

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mExclusiveCheckable:Z

.field public mHasOverflowMenu:Z

.field public mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

.field public mMaxItemCount:I

.field public mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

.field public mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field public mSelectedCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public mSeslLabelTextAppearance:I

.field public mUseItemPool:Z

.field public mViewType:I

.field public mViewVisibleItemCount:I

.field public mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

.field public mVisibleItemCount:I

.field public menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final onClickListener:Lcom/google/android/material/navigation/NavigationBarMenuView$1;

.field public presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field public selectedItemId:I

.field public selectedItemPosition:I

.field public final set:Landroidx/transition/AutoTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/material/navigation/NavigationBarMenuView;

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemStateListAnimatorId:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    iput-boolean v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mUseItemPool:Z

    iput-boolean v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mExclusiveCheckable:Z

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/transition/AutoTransition;

    invoke-direct {v2}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    invoke-virtual {v2, v0}, Landroidx/transition/TransitionSet;->setOrdering(I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/transition/TransitionSet;->setDuration$1(J)V

    new-instance v3, Lcom/google/android/material/internal/TextScale;

    invoke-direct {v3}, Landroidx/transition/Transition;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    :goto_0
    new-instance v2, Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {v2, v3, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;I)V

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mContentResolver:Landroid/content/ContentResolver;

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public final buildMenu(Landroidx/appcompat/view/menu/MenuItemImpl;Z)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v0, :cond_0

    iget v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    new-instance v0, Lcom/google/android/material/navigation/NavigationBarMenuView$2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move v4, v6

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/navigation/NavigationBarMenuView$2;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;Landroid/content/Context;ILandroidx/appcompat/view/menu/MenuItemImpl;I)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSeslLabelTextAppearance:I

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mLargeLabelAppearance:I

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mSmallLabelAppearance:I

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->calculateTextScaleFactors(FF)V

    iget v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mLargeLabelAppearance:I

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    iget v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mSmallLabelAppearance:I

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLargeTextSize(ILandroid/widget/TextView;)V

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->inflateStateListAnimator(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    iget-boolean v1, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    if-eq v1, p2, :cond_3

    iput-boolean p2, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->isShifting:Z

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_3
    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget p2, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    if-eq p2, p0, :cond_4

    iput p0, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->labelVisibilityMode:I

    sget-object p0, Lcom/google/android/material/navigation/NavigationBarItemView;->ACTIVE_INDICATOR_LABELED_TRANSFORM:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    iput-object p0, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorTransform:Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_4
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-object v0
.end method

.method public final buildMenuView()V
    .locals 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/AutoTransition;

    invoke-static {p0, v0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mUseItemPool:Z

    if-eqz v4, :cond_5

    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v0, v5

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v7, v6}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    iget-object v7, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    iget-object v8, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v8, :cond_3

    if-eqz v7, :cond_2

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object v8, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iput-object v2, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    :cond_3
    iput-object v2, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v7, 0x0

    iput v7, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorProgress:F

    iput-boolean v3, v6, Lcom/google/android/material/navigation/NavigationBarItemView;->initialized:Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_6

    const v0, 0x7f0a0251

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iput-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    return-void

    :cond_7
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    move v5, v3

    :goto_3
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->delete(I)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    if-nez v4, :cond_b

    move v4, v1

    goto :goto_4

    :cond_b
    move v4, v3

    :goto_4
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v5, v5, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/material/navigation/NavigationBarItemView;

    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    new-instance v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    invoke-direct {v5, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    new-instance v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    invoke-direct {v5, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    new-instance v5, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iput v3, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iput v3, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_5
    if-ge v5, v0, :cond_e

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iput-boolean v1, v8, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iput-boolean v3, v8, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->requiresOverflow()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v9, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    iget v10, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    aput v5, v9, v10

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-nez v8, :cond_d

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v9, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    iget v10, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    aput v5, v9, v10

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_d

    add-int/lit8 v7, v7, 0x1

    :cond_d
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    sub-int/2addr v0, v6

    if-lez v0, :cond_f

    move v0, v1

    goto :goto_7

    :cond_f
    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    add-int/2addr v7, v0

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    if-le v7, v5, :cond_13

    sub-int/2addr v5, v1

    sub-int/2addr v7, v5

    if-eqz v0, :cond_10

    add-int/lit8 v7, v7, -0x1

    :cond_10
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_13

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v6, v6, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    iget v8, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v9, v9, v0

    aput v9, v6, v8

    iget v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    sub-int/2addr v6, v1

    iput v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    goto :goto_9

    :cond_11
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    iget v8, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget-object v9, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v9, v9, v0

    aput v9, v6, v8

    iget v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    sub-int/2addr v6, v1

    iput v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_12

    goto :goto_a

    :cond_12
    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_13
    :goto_a
    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    move v0, v3

    :goto_b
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v6, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    const-string v7, "NavigationBarMenuView"

    if-ge v0, v6, :cond_1d

    iget-object v5, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v6, :cond_14

    goto/16 :goto_f

    :cond_14
    if-ltz v5, :cond_1b

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v5, v6, :cond_1b

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    instance-of v6, v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-nez v6, :cond_15

    goto/16 :goto_e

    :cond_15
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, v6, v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenu(Landroidx/appcompat/view/menu/MenuItemImpl;Z)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    iget v9, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    aput-object v7, v8, v9

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_16

    move v8, v3

    goto :goto_c

    :cond_16
    const/16 v8, 0x8

    :goto_c
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    iget v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-ne v5, v8, :cond_17

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    iput v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    :cond_17
    iget-object v5, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    if-eqz v5, :cond_18

    iget v6, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p0, v6, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslAddBadge(ILjava/lang/String;)V

    goto :goto_d

    :cond_18
    iget v5, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {p0, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->seslRemoveBadge(I)V

    :goto_d
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_19

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v5, :cond_19

    invoke-virtual {v7, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_19
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1a

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1c

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    goto :goto_f

    :cond_1b
    :goto_e
    const-string v6, "position is out of index (pos="

    const-string v8, "/size="

    invoke-static {v5, v6, v8}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v6, v6, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") or not instance of MenuItemImpl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v0, v0, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    if-lez v0, :cond_26

    move v0, v3

    move v5, v0

    :goto_10
    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mInvisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v8, v6, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    if-ge v0, v8, :cond_20

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v6, v6, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->originPos:[I

    aget v6, v6, v0

    invoke-virtual {v8, v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v6, :cond_1f

    iget-object v8, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v8, :cond_1e

    iget-object v8, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mContentDescription:Ljava/lang/CharSequence;

    :cond_1e
    iget-object v9, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget v10, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mGroup:I

    iget v11, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    iget v12, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mCategoryOrder:I

    invoke-virtual {v9, v10, v11, v12, v8}, Landroidx/appcompat/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-boolean v3, v8, Landroidx/appcompat/view/menu/MenuBuilder;->mGroupDividerEnabled:Z

    iget-object v8, v6, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1f

    add-int/lit8 v5, v5, 0x1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    sub-int/2addr v8, v5

    if-lez v8, :cond_26

    iput-boolean v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    new-instance v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const v6, 0x7f0f000a

    invoke-virtual {v0, v6, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-nez v0, :cond_21

    goto/16 :goto_12

    :cond_21
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    if-ne v5, v1, :cond_22

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    goto :goto_11

    :cond_22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f142b29

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    :goto_11
    invoke-virtual {p0, v0, v4}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenu(Landroidx/appcompat/view/menu/MenuItemImpl;Z)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->inflateStateListAnimator(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    iput v3, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mBadgeType:I

    new-instance v4, Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;I)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f142abc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080bec

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x101009e

    const v9, -0x101009e

    filled-new-array {v8, v9}, [I

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v8, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070f02

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v4, v3, v3, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v4, 0x12

    invoke-virtual {v5, v6, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput-object v5, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mLabelImgSpan:Landroid/text/SpannableStringBuilder;

    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_24

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_13

    :cond_25
    :goto_12
    move-object v0, v2

    :goto_13
    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleBtns:Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;

    iget v5, v5, Lcom/google/android/material/navigation/NavigationBarMenuView$InternalBtnInfo;->cnt:I

    aput-object v0, v4, v5

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_26
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    if-le v0, v4, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Maximum number of visible items supported by BottomNavigationView is "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Current visible count is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    invoke-static {v0, v4, v7}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewVisibleItemCount:I

    :cond_27
    move v0, v3

    :goto_14
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    array-length v5, v4

    if-ge v0, v5, :cond_2c

    aget-object v4, v4, v0

    if-nez v4, :cond_28

    goto/16 :goto_17

    :cond_28
    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "show_button_background"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_2b

    iget-object v6, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSBBTextColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    goto :goto_16

    :cond_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const v7, 0x7f0607ef

    goto :goto_15

    :cond_2a
    const v7, 0x7f0607ee

    :goto_15
    invoke-virtual {v6, v7, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    :goto_16
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080b5c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v7, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v5, :cond_2b

    iget-object v4, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->itemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v4, :cond_2b

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mDummyMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v5, :cond_2b

    iget v4, v4, Landroidx/appcompat/view/menu/MenuItemImpl;->mId:I

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v4, v5, :cond_2b

    invoke-virtual {p0, v6, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setOverflowSpanColor(IZ)V

    :cond_2b
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2c
    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final createDefaultColorStateList()Landroid/content/res/ColorStateList;
    .locals 6

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010038

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v4, 0x7f040155

    invoke-virtual {p0, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    new-instance v2, Landroid/content/res/ColorStateList;

    sget-object v3, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    sget-object v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    sget-object v5, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    filled-new-array {v3, v4, v5}, [[I

    move-result-object v4

    invoke-virtual {v1, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    invoke-direct {v2, v4, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public final findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid view id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hideOverflowMenu()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mHasOverflowMenu:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mPostedOpenRunnable:Lcom/google/android/material/navigation/NavigationBarPresenter$OpenOverflowRunnable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->mOverflowPopup:Lcom/google/android/material/navigation/NavigationBarPresenter$OverflowPopup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final inflateStateListAnimator(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemStateListAnimatorId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemStateListAnimatorId:I

    invoke-static {v0, p0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070f02

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemIconSize(I)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070efd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->defaultMargin:I

    iget-object v5, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    iget v6, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->defaultMargin:I

    add-int/2addr v4, v6

    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v3, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->labelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->hideOverflowMenu()V

    return-void
.end method

.method public final seslAddBadge(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object p1

    if-eqz p1, :cond_3

    const v0, 0x7f0a0ab2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0ab1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0ae0

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object v0, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x3e7

    if-le v1, v3, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mIsBadgeNumberless:Z

    const-string p2, "999+"

    goto :goto_2

    :cond_2
    iput-boolean v2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mIsBadgeNumberless:Z

    goto :goto_2

    :catch_0
    :goto_1
    iput-boolean v2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mIsBadgeNumberless:Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->updateBadge(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    return-void
.end method

.method public final seslRemoveBadge(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object p0

    if-eqz p0, :cond_0

    const p1, 0x7f0a0ab2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final seslSetLabelTextAppearance(I)V
    .locals 5

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mSeslLabelTextAppearance:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public final setActiveIndicatorLabelPadding(I)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorLabelPadding:I

    if-eq v3, p1, :cond_0

    iput p1, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorLabelPadding:I

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method public final setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 5

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setItemActiveIndicatorEnabled()V
    .locals 5

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorEnabled:Z

    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    iget-object v4, v3, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setItemActiveIndicatorHeight(I)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iput p1, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredHeight:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setItemActiveIndicatorMarginHorizontal(I)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iput p1, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 5

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setItemActiveIndicatorWidth(I)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iput p1, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->updateActiveIndicatorLayoutParams(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setItemBackgroundRes(I)V
    .locals 7

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_2
    iput-object v5, v4, Lcom/google/android/material/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_6

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_5
    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    :cond_6
    return-void
.end method

.method public final setItemIconSize(I)V
    .locals 4

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    :cond_2
    return-void
.end method

.method public final setItemPaddingBottom(I)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    if-eq v3, p1, :cond_0

    iput p1, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingBottom:I

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setItemPaddingTop(I)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    if-eq v3, p1, :cond_0

    iput p1, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->itemPaddingTop:I

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshChecked()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iput-object p1, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->itemRippleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->refreshItemBackground()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setItemStateListAnimator(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemStateListAnimatorId:I

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->inflateStateListAnimator(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->inflateStateListAnimator(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    :cond_2
    return-void
.end method

.method public final setItemTextAppearanceActive(I)V
    .locals 5

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public final setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget v3, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->activeTextAppearance:I

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-object v2, v2, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setItemTextAppearanceInactive(I)V
    .locals 5

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method public final setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 5

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setOverflowSpanColor(IZ)V

    :cond_2
    return-void
.end method

.method public final setOverflowSpanColor(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationBarItemView;->mLabelImgSpan:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080bec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ImageSpan;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ImageSpan;

    if-eqz v2, :cond_1

    array-length v3, v2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x101009e

    const v5, -0x101009e

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f02

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p1, 0x12

    const/4 p2, 0x1

    invoke-virtual {v0, v2, v4, p2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mOverflowButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->mLabelImgSpan:Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final updateBadge(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0ab1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0710f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3f99999a    # 1.2f

    cmpl-float v5, v3, v4

    const/4 v6, 0x0

    if-lez v5, :cond_2

    int-to-float v2, v2

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget v2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->mBadgeType:I

    const v3, 0x7f070efb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mVisibleItemCount:I

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mMaxItemCount:I

    if-ne v4, v5, :cond_3

    const v4, 0x7f070eff

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_3
    const v4, 0x7f070f00

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    const v5, 0x7f070ef6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v7, 0x7f070ef5

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->smallLabel:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    iget-object v8, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->largeLabel:Landroid/widget/TextView;

    :goto_1
    const/4 v9, 0x1

    if-nez v8, :cond_5

    move v10, v9

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    :goto_2
    if-nez v8, :cond_6

    move v8, v9

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    :goto_3
    if-eq v2, v9, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const v11, 0x7f080c8f

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6, v6}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    goto :goto_5

    :cond_8
    :goto_4
    const v6, 0x7f080bb6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move v1, v3

    move v6, v1

    :goto_5
    iget v11, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->mViewType:I

    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    if-ne v2, v9, :cond_9

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v4

    div-int/lit8 v3, v3, 0x2

    goto :goto_6

    :cond_a
    if-ne v2, v9, :cond_b

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v10

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, v8

    div-int/lit8 v3, p1, 0x2

    goto :goto_6

    :cond_b
    if-nez v2, :cond_c

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr v10, p0

    sub-int/2addr v10, v7

    div-int/lit8 p0, v10, 0x2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    sub-int/2addr p1, v8

    div-int/lit8 p1, p1, 0x2

    sub-int v3, p1, v5

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v10

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v8

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v2, v5

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-le v4, v2, :cond_d

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    sub-int/2addr v2, v4

    add-int/2addr p0, v2

    :cond_d
    :goto_6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-ne v2, v1, :cond_e

    if-eq v4, p0, :cond_f

    :cond_e
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method public final updateBadgeIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->updateBadge(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
