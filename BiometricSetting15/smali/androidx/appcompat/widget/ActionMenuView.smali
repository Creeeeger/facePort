.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# instance fields
.field public mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mFormatItems:Z

.field public mFormatItemsWidth:I

.field public final mGeneratedItemPadding:I

.field public mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public final mMinCellSize:I

.field public mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field public mPopupContext:Landroid/content/Context;

.field public mPopupTheme:I

.field public mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 8
    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method public static generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    const/16 v1, 0x10

    .line 6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 1

    if-eqz p0, :cond_2

    .line 7
    instance-of v0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 9
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean p0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 12
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :goto_0
    iget p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p0, :cond_1

    const/16 p0, 0x10

    .line 14
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object v0

    .line 15
    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 2
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 5
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    invoke-direct {v0, p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 15
    .line 16
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 22
    .line 23
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 32
    .line 33
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 48
    .line 49
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 55
    .line 56
    iput-object p0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 61
    .line 62
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 63
    .line 64
    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    :goto_0
    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 2
    .line 3
    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final hasSupportDividerBeforeChildAt(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-ge p1, p0, :cond_1

    .line 20
    .line 21
    instance-of p0, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :cond_1
    if-lez p1, :cond_2

    .line 32
    .line 33
    instance-of p0, v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 38
    .line 39
    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    or-int/2addr v0, p0

    .line 44
    :cond_2
    return v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    return-void
.end method

.method public final invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/MenuPopup;

    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int v2, p5, p3

    .line 16
    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerWidth()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int v4, p4, p2

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    sub-int v5, v4, v5

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    sub-int/2addr v5, v6

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x1

    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    move v6, v7

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v6, 0x0

    .line 46
    :goto_0
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    :goto_1
    const/16 v12, 0x8

    .line 50
    .line 51
    if-ge v9, v1, :cond_6

    .line 52
    .line 53
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v14

    .line 61
    if-ne v14, v12, :cond_2

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 69
    .line 70
    iget-boolean v14, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 71
    .line 72
    if-eqz v14, :cond_5

    .line 73
    .line 74
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    if-eqz v14, :cond_3

    .line 83
    .line 84
    add-int/2addr v10, v3

    .line 85
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 96
    .line 97
    add-int/2addr v15, v12

    .line 98
    add-int v12, v15, v10

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 106
    .line 107
    .line 108
    move-result v16

    .line 109
    sub-int v15, v15, v16

    .line 110
    .line 111
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 112
    .line 113
    sub-int v12, v15, v12

    .line 114
    .line 115
    sub-int v15, v12, v10

    .line 116
    .line 117
    :goto_2
    div-int/lit8 v16, v14, 0x2

    .line 118
    .line 119
    sub-int v8, v2, v16

    .line 120
    .line 121
    add-int/2addr v14, v8

    .line 122
    invoke-virtual {v13, v15, v8, v12, v14}, Landroid/view/View;->layout(IIII)V

    .line 123
    .line 124
    .line 125
    sub-int/2addr v5, v10

    .line 126
    move v10, v7

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    iget v13, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 133
    .line 134
    add-int/2addr v8, v13

    .line 135
    iget v12, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 136
    .line 137
    add-int/2addr v8, v12

    .line 138
    sub-int/2addr v5, v8

    .line 139
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v11, v11, 0x1

    .line 143
    .line 144
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_6
    if-ne v1, v7, :cond_7

    .line 148
    .line 149
    if-nez v10, :cond_7

    .line 150
    .line 151
    const/4 v3, 0x0

    .line 152
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    div-int/lit8 v4, v4, 0x2

    .line 165
    .line 166
    div-int/lit8 v5, v1, 0x2

    .line 167
    .line 168
    sub-int/2addr v4, v5

    .line 169
    div-int/lit8 v5, v3, 0x2

    .line 170
    .line 171
    sub-int/2addr v2, v5

    .line 172
    add-int/2addr v1, v4

    .line 173
    add-int/2addr v3, v2

    .line 174
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_7
    xor-int/lit8 v3, v10, 0x1

    .line 179
    .line 180
    sub-int/2addr v11, v3

    .line 181
    if-lez v11, :cond_8

    .line 182
    .line 183
    div-int v3, v5, v11

    .line 184
    .line 185
    :goto_4
    const/4 v4, 0x0

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    const/4 v3, 0x0

    .line 188
    goto :goto_4

    .line 189
    :goto_5
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v6, :cond_b

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    sub-int/2addr v5, v6

    .line 204
    move v8, v4

    .line 205
    :goto_6
    if-ge v8, v1, :cond_e

    .line 206
    .line 207
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 216
    .line 217
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    if-eq v7, v12, :cond_a

    .line 222
    .line 223
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 224
    .line 225
    if-eqz v7, :cond_9

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_9
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 229
    .line 230
    sub-int/2addr v5, v7

    .line 231
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    div-int/lit8 v10, v9, 0x2

    .line 240
    .line 241
    sub-int v10, v2, v10

    .line 242
    .line 243
    sub-int v11, v5, v7

    .line 244
    .line 245
    add-int/2addr v9, v10

    .line 246
    invoke-virtual {v4, v11, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 247
    .line 248
    .line 249
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 250
    .line 251
    add-int/2addr v7, v4

    .line 252
    add-int/2addr v7, v3

    .line 253
    sub-int/2addr v5, v7

    .line 254
    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    move v8, v4

    .line 262
    :goto_8
    if-ge v8, v1, :cond_e

    .line 263
    .line 264
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 273
    .line 274
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 275
    .line 276
    .line 277
    move-result v7

    .line 278
    if-eq v7, v12, :cond_d

    .line 279
    .line 280
    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 281
    .line 282
    if-eqz v7, :cond_c

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_c
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 286
    .line 287
    add-int/2addr v5, v7

    .line 288
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    div-int/lit8 v10, v9, 0x2

    .line 297
    .line 298
    sub-int v10, v2, v10

    .line 299
    .line 300
    add-int v11, v5, v7

    .line 301
    .line 302
    add-int/2addr v9, v10

    .line 303
    invoke-virtual {v4, v5, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 304
    .line 305
    .line 306
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 307
    .line 308
    add-int/2addr v7, v4

    .line 309
    add-int/2addr v7, v3

    .line 310
    add-int/2addr v7, v5

    .line 311
    move v5, v7

    .line 312
    :cond_d
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_e
    return-void
.end method

.method public final onMeasure(II)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/high16 v5, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ne v2, v5, :cond_0

    .line 14
    .line 15
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v3

    .line 18
    :goto_0
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 23
    .line 24
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 37
    .line 38
    if-eq v1, v6, :cond_2

    .line 39
    .line 40
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2d

    .line 52
    .line 53
    if-lez v1, :cond_2d

    .line 54
    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v7

    .line 85
    const/4 v7, -0x2

    .line 86
    move/from16 v10, p2

    .line 87
    .line 88
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    sub-int/2addr v2, v8

    .line 93
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 94
    .line 95
    div-int v10, v2, v8

    .line 96
    .line 97
    rem-int v11, v2, v8

    .line 98
    .line 99
    if-nez v10, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1c

    .line 105
    .line 106
    :cond_3
    div-int/2addr v11, v10

    .line 107
    add-int/2addr v11, v8

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    move v12, v3

    .line 113
    move v13, v12

    .line 114
    move v14, v13

    .line 115
    move v15, v14

    .line 116
    move/from16 v18, v15

    .line 117
    .line 118
    move/from16 v19, v18

    .line 119
    .line 120
    const-wide/16 v16, 0x0

    .line 121
    .line 122
    :goto_1
    if-ge v14, v8, :cond_12

    .line 123
    .line 124
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    const/16 v3, 0x8

    .line 133
    .line 134
    if-ne v4, v3, :cond_4

    .line 135
    .line 136
    move/from16 v24, v2

    .line 137
    .line 138
    move/from16 v21, v6

    .line 139
    .line 140
    move/from16 v22, v9

    .line 141
    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :cond_4
    instance-of v3, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 145
    .line 146
    add-int/lit8 v12, v12, 0x1

    .line 147
    .line 148
    if-eqz v3, :cond_5

    .line 149
    .line 150
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 151
    .line 152
    move/from16 v21, v6

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    invoke-virtual {v5, v4, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_5
    move/from16 v21, v6

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 167
    .line 168
    iput-boolean v6, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 169
    .line 170
    iput v6, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 171
    .line 172
    iput v6, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 173
    .line 174
    iput-boolean v6, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 175
    .line 176
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 177
    .line 178
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 179
    .line 180
    if-eqz v3, :cond_6

    .line 181
    .line 182
    move-object v6, v5

    .line 183
    check-cast v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 184
    .line 185
    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    const/16 v20, 0x1

    .line 194
    .line 195
    xor-int/lit8 v6, v6, 0x1

    .line 196
    .line 197
    if-eqz v6, :cond_6

    .line 198
    .line 199
    const/4 v6, 0x1

    .line 200
    goto :goto_3

    .line 201
    :cond_6
    const/4 v6, 0x0

    .line 202
    :goto_3
    iput-boolean v6, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 203
    .line 204
    iget-boolean v6, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 205
    .line 206
    if-eqz v6, :cond_7

    .line 207
    .line 208
    const/4 v6, 0x1

    .line 209
    goto :goto_4

    .line 210
    :cond_7
    move v6, v10

    .line 211
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 212
    .line 213
    .line 214
    move-result-object v22

    .line 215
    move/from16 v23, v12

    .line 216
    .line 217
    move-object/from16 v12, v22

    .line 218
    .line 219
    check-cast v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 220
    .line 221
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 222
    .line 223
    .line 224
    move-result v22

    .line 225
    move/from16 v24, v2

    .line 226
    .line 227
    sub-int v2, v22, v9

    .line 228
    .line 229
    move/from16 v22, v9

    .line 230
    .line 231
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 232
    .line 233
    .line 234
    move-result v9

    .line 235
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v3, :cond_8

    .line 240
    .line 241
    move-object v3, v5

    .line 242
    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_8
    const/4 v3, 0x0

    .line 246
    :goto_5
    if-eqz v3, :cond_9

    .line 247
    .line 248
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    const/4 v9, 0x1

    .line 257
    xor-int/2addr v3, v9

    .line 258
    if-eqz v3, :cond_9

    .line 259
    .line 260
    const/4 v3, 0x1

    .line 261
    goto :goto_6

    .line 262
    :cond_9
    const/4 v3, 0x0

    .line 263
    :goto_6
    if-lez v6, :cond_c

    .line 264
    .line 265
    if-eqz v3, :cond_a

    .line 266
    .line 267
    const/4 v9, 0x2

    .line 268
    if-lt v6, v9, :cond_c

    .line 269
    .line 270
    :cond_a
    mul-int/2addr v6, v11

    .line 271
    const/high16 v9, -0x80000000

    .line 272
    .line 273
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    invoke-virtual {v5, v6, v2}, Landroid/view/View;->measure(II)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    div-int v9, v6, v11

    .line 285
    .line 286
    rem-int/2addr v6, v11

    .line 287
    if-eqz v6, :cond_b

    .line 288
    .line 289
    add-int/lit8 v9, v9, 0x1

    .line 290
    .line 291
    :cond_b
    if-eqz v3, :cond_d

    .line 292
    .line 293
    const/4 v6, 0x2

    .line 294
    if-ge v9, v6, :cond_d

    .line 295
    .line 296
    const/4 v9, 0x2

    .line 297
    goto :goto_7

    .line 298
    :cond_c
    const/4 v9, 0x0

    .line 299
    :cond_d
    :goto_7
    iget-boolean v6, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 300
    .line 301
    if-nez v6, :cond_e

    .line 302
    .line 303
    if-eqz v3, :cond_e

    .line 304
    .line 305
    const/4 v3, 0x1

    .line 306
    goto :goto_8

    .line 307
    :cond_e
    const/4 v3, 0x0

    .line 308
    :goto_8
    iput-boolean v3, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 309
    .line 310
    iput v9, v12, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 311
    .line 312
    mul-int v3, v9, v11

    .line 313
    .line 314
    const/high16 v6, 0x40000000    # 2.0f

    .line 315
    .line 316
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-virtual {v5, v3, v2}, Landroid/view/View;->measure(II)V

    .line 321
    .line 322
    .line 323
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    .line 324
    .line 325
    .line 326
    move-result v13

    .line 327
    iget-boolean v2, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 328
    .line 329
    if-eqz v2, :cond_f

    .line 330
    .line 331
    add-int/lit8 v18, v18, 0x1

    .line 332
    .line 333
    :cond_f
    iget-boolean v2, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 334
    .line 335
    if-eqz v2, :cond_10

    .line 336
    .line 337
    const/4 v15, 0x1

    .line 338
    :cond_10
    sub-int/2addr v10, v9

    .line 339
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    move/from16 v3, v19

    .line 344
    .line 345
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 346
    .line 347
    .line 348
    move-result v19

    .line 349
    const/4 v2, 0x1

    .line 350
    if-ne v9, v2, :cond_11

    .line 351
    .line 352
    shl-int v3, v2, v14

    .line 353
    .line 354
    int-to-long v2, v3

    .line 355
    or-long v2, v16, v2

    .line 356
    .line 357
    move-wide/from16 v16, v2

    .line 358
    .line 359
    :cond_11
    move/from16 v12, v23

    .line 360
    .line 361
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 362
    .line 363
    move/from16 v6, v21

    .line 364
    .line 365
    move/from16 v9, v22

    .line 366
    .line 367
    move/from16 v2, v24

    .line 368
    .line 369
    const/4 v3, 0x0

    .line 370
    const/4 v4, 0x1

    .line 371
    goto/16 :goto_1

    .line 372
    .line 373
    :cond_12
    move/from16 v24, v2

    .line 374
    .line 375
    move/from16 v21, v6

    .line 376
    .line 377
    move/from16 v3, v19

    .line 378
    .line 379
    if-eqz v15, :cond_13

    .line 380
    .line 381
    const/4 v2, 0x2

    .line 382
    if-ne v12, v2, :cond_13

    .line 383
    .line 384
    const/4 v2, 0x1

    .line 385
    goto :goto_a

    .line 386
    :cond_13
    const/4 v2, 0x0

    .line 387
    :goto_a
    const/4 v4, 0x0

    .line 388
    :goto_b
    if-lez v18, :cond_1d

    .line 389
    .line 390
    if-lez v10, :cond_1d

    .line 391
    .line 392
    const v9, 0x7fffffff

    .line 393
    .line 394
    .line 395
    const/4 v5, 0x0

    .line 396
    const/4 v14, 0x0

    .line 397
    const-wide/16 v22, 0x0

    .line 398
    .line 399
    :goto_c
    if-ge v5, v8, :cond_17

    .line 400
    .line 401
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 410
    .line 411
    move/from16 v19, v3

    .line 412
    .line 413
    iget-boolean v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 414
    .line 415
    if-nez v3, :cond_14

    .line 416
    .line 417
    goto :goto_d

    .line 418
    :cond_14
    iget v3, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 419
    .line 420
    if-ge v3, v9, :cond_15

    .line 421
    .line 422
    const-wide/16 v25, 0x1

    .line 423
    .line 424
    shl-long v22, v25, v5

    .line 425
    .line 426
    move v9, v3

    .line 427
    const/4 v14, 0x1

    .line 428
    goto :goto_d

    .line 429
    :cond_15
    const-wide/16 v25, 0x1

    .line 430
    .line 431
    if-ne v3, v9, :cond_16

    .line 432
    .line 433
    shl-long v27, v25, v5

    .line 434
    .line 435
    or-long v22, v22, v27

    .line 436
    .line 437
    add-int/lit8 v3, v14, 0x1

    .line 438
    .line 439
    move v14, v3

    .line 440
    :cond_16
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 441
    .line 442
    move/from16 v3, v19

    .line 443
    .line 444
    goto :goto_c

    .line 445
    :cond_17
    move/from16 v19, v3

    .line 446
    .line 447
    or-long v16, v16, v22

    .line 448
    .line 449
    if-le v14, v10, :cond_18

    .line 450
    .line 451
    :goto_e
    move/from16 v27, v7

    .line 452
    .line 453
    goto :goto_11

    .line 454
    :cond_18
    add-int/lit8 v9, v9, 0x1

    .line 455
    .line 456
    const/4 v3, 0x0

    .line 457
    :goto_f
    if-ge v3, v8, :cond_1c

    .line 458
    .line 459
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 468
    .line 469
    const/4 v6, 0x1

    .line 470
    shl-int v14, v6, v3

    .line 471
    .line 472
    move/from16 v27, v7

    .line 473
    .line 474
    int-to-long v6, v14

    .line 475
    and-long v25, v22, v6

    .line 476
    .line 477
    const-wide/16 v28, 0x0

    .line 478
    .line 479
    cmp-long v14, v25, v28

    .line 480
    .line 481
    if-nez v14, :cond_19

    .line 482
    .line 483
    iget v4, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 484
    .line 485
    if-ne v4, v9, :cond_1b

    .line 486
    .line 487
    or-long v16, v16, v6

    .line 488
    .line 489
    goto :goto_10

    .line 490
    :cond_19
    if-eqz v2, :cond_1a

    .line 491
    .line 492
    iget-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 493
    .line 494
    if-eqz v6, :cond_1a

    .line 495
    .line 496
    const/4 v6, 0x1

    .line 497
    if-ne v10, v6, :cond_1a

    .line 498
    .line 499
    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 500
    .line 501
    add-int v14, v7, v11

    .line 502
    .line 503
    const/4 v6, 0x0

    .line 504
    invoke-virtual {v4, v14, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 505
    .line 506
    .line 507
    :cond_1a
    iget v4, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 508
    .line 509
    const/4 v6, 0x1

    .line 510
    add-int/2addr v4, v6

    .line 511
    iput v4, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 512
    .line 513
    iput-boolean v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 514
    .line 515
    add-int/lit8 v10, v10, -0x1

    .line 516
    .line 517
    :cond_1b
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 518
    .line 519
    move/from16 v7, v27

    .line 520
    .line 521
    goto :goto_f

    .line 522
    :cond_1c
    move/from16 v3, v19

    .line 523
    .line 524
    const/4 v4, 0x1

    .line 525
    goto/16 :goto_b

    .line 526
    .line 527
    :cond_1d
    move/from16 v19, v3

    .line 528
    .line 529
    goto :goto_e

    .line 530
    :goto_11
    const/4 v2, 0x1

    .line 531
    if-nez v15, :cond_1e

    .line 532
    .line 533
    if-ne v12, v2, :cond_1e

    .line 534
    .line 535
    move v3, v2

    .line 536
    goto :goto_12

    .line 537
    :cond_1e
    const/4 v3, 0x0

    .line 538
    :goto_12
    if-lez v10, :cond_29

    .line 539
    .line 540
    const-wide/16 v5, 0x0

    .line 541
    .line 542
    cmp-long v7, v16, v5

    .line 543
    .line 544
    if-eqz v7, :cond_29

    .line 545
    .line 546
    sub-int/2addr v12, v2

    .line 547
    if-lt v10, v12, :cond_1f

    .line 548
    .line 549
    if-nez v3, :cond_1f

    .line 550
    .line 551
    if-le v13, v2, :cond_29

    .line 552
    .line 553
    :cond_1f
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    int-to-float v2, v2

    .line 558
    if-nez v3, :cond_21

    .line 559
    .line 560
    const-wide/16 v5, 0x1

    .line 561
    .line 562
    and-long v5, v16, v5

    .line 563
    .line 564
    const-wide/16 v12, 0x0

    .line 565
    .line 566
    cmp-long v3, v5, v12

    .line 567
    .line 568
    const/high16 v5, 0x3f000000    # 0.5f

    .line 569
    .line 570
    if-eqz v3, :cond_20

    .line 571
    .line 572
    const/4 v3, 0x0

    .line 573
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 582
    .line 583
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 584
    .line 585
    if-nez v3, :cond_20

    .line 586
    .line 587
    sub-float/2addr v2, v5

    .line 588
    :cond_20
    add-int/lit8 v3, v8, -0x1

    .line 589
    .line 590
    const/4 v6, 0x1

    .line 591
    shl-int v7, v6, v3

    .line 592
    .line 593
    int-to-long v6, v7

    .line 594
    and-long v6, v16, v6

    .line 595
    .line 596
    const-wide/16 v12, 0x0

    .line 597
    .line 598
    cmp-long v6, v6, v12

    .line 599
    .line 600
    if-eqz v6, :cond_21

    .line 601
    .line 602
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 611
    .line 612
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 613
    .line 614
    if-nez v3, :cond_21

    .line 615
    .line 616
    sub-float/2addr v2, v5

    .line 617
    :cond_21
    const/4 v3, 0x0

    .line 618
    cmpl-float v3, v2, v3

    .line 619
    .line 620
    if-lez v3, :cond_22

    .line 621
    .line 622
    mul-int/2addr v10, v11

    .line 623
    int-to-float v3, v10

    .line 624
    div-float/2addr v3, v2

    .line 625
    float-to-int v6, v3

    .line 626
    goto :goto_13

    .line 627
    :cond_22
    const/4 v6, 0x0

    .line 628
    :goto_13
    const/4 v2, 0x0

    .line 629
    :goto_14
    if-ge v2, v8, :cond_29

    .line 630
    .line 631
    const/4 v3, 0x1

    .line 632
    shl-int v5, v3, v2

    .line 633
    .line 634
    int-to-long v9, v5

    .line 635
    and-long v9, v16, v9

    .line 636
    .line 637
    const-wide/16 v12, 0x0

    .line 638
    .line 639
    cmp-long v3, v9, v12

    .line 640
    .line 641
    if-nez v3, :cond_23

    .line 642
    .line 643
    const/4 v3, 0x1

    .line 644
    const/4 v7, 0x2

    .line 645
    goto :goto_16

    .line 646
    :cond_23
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 655
    .line 656
    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 657
    .line 658
    if-eqz v3, :cond_25

    .line 659
    .line 660
    iput v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 661
    .line 662
    const/4 v3, 0x1

    .line 663
    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 664
    .line 665
    if-nez v2, :cond_24

    .line 666
    .line 667
    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 668
    .line 669
    if-nez v3, :cond_24

    .line 670
    .line 671
    neg-int v3, v6

    .line 672
    const/4 v7, 0x2

    .line 673
    div-int/2addr v3, v7

    .line 674
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 675
    .line 676
    goto :goto_15

    .line 677
    :cond_24
    const/4 v7, 0x2

    .line 678
    :goto_15
    const/4 v3, 0x1

    .line 679
    const/4 v4, 0x1

    .line 680
    goto :goto_16

    .line 681
    :cond_25
    const/4 v7, 0x2

    .line 682
    iget-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 683
    .line 684
    if-eqz v3, :cond_26

    .line 685
    .line 686
    iput v6, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 687
    .line 688
    const/4 v3, 0x1

    .line 689
    iput-boolean v3, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 690
    .line 691
    neg-int v4, v6

    .line 692
    div-int/2addr v4, v7

    .line 693
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 694
    .line 695
    move v4, v3

    .line 696
    goto :goto_16

    .line 697
    :cond_26
    const/4 v3, 0x1

    .line 698
    if-eqz v2, :cond_27

    .line 699
    .line 700
    div-int/lit8 v9, v6, 0x2

    .line 701
    .line 702
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 703
    .line 704
    :cond_27
    add-int/lit8 v9, v8, -0x1

    .line 705
    .line 706
    if-eq v2, v9, :cond_28

    .line 707
    .line 708
    div-int/lit8 v9, v6, 0x2

    .line 709
    .line 710
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 711
    .line 712
    :cond_28
    :goto_16
    add-int/lit8 v2, v2, 0x1

    .line 713
    .line 714
    goto :goto_14

    .line 715
    :cond_29
    if-eqz v4, :cond_2b

    .line 716
    .line 717
    const/4 v3, 0x0

    .line 718
    :goto_17
    if-ge v3, v8, :cond_2b

    .line 719
    .line 720
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 729
    .line 730
    iget-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 731
    .line 732
    if-nez v5, :cond_2a

    .line 733
    .line 734
    move/from16 v6, v27

    .line 735
    .line 736
    const/high16 v4, 0x40000000    # 2.0f

    .line 737
    .line 738
    goto :goto_18

    .line 739
    :cond_2a
    iget v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 740
    .line 741
    mul-int/2addr v5, v11

    .line 742
    iget v4, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 743
    .line 744
    add-int/2addr v5, v4

    .line 745
    const/high16 v4, 0x40000000    # 2.0f

    .line 746
    .line 747
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    move/from16 v6, v27

    .line 752
    .line 753
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 754
    .line 755
    .line 756
    :goto_18
    add-int/lit8 v3, v3, 0x1

    .line 757
    .line 758
    move/from16 v27, v6

    .line 759
    .line 760
    goto :goto_17

    .line 761
    :cond_2b
    const/high16 v4, 0x40000000    # 2.0f

    .line 762
    .line 763
    if-eq v1, v4, :cond_2c

    .line 764
    .line 765
    move/from16 v6, v19

    .line 766
    .line 767
    :goto_19
    move/from16 v2, v24

    .line 768
    .line 769
    goto :goto_1a

    .line 770
    :cond_2c
    move/from16 v6, v21

    .line 771
    .line 772
    goto :goto_19

    .line 773
    :goto_1a
    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 774
    .line 775
    .line 776
    goto :goto_1c

    .line 777
    :cond_2d
    move/from16 v10, p2

    .line 778
    .line 779
    const/4 v6, 0x0

    .line 780
    :goto_1b
    if-ge v6, v1, :cond_2e

    .line 781
    .line 782
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 791
    .line 792
    const/4 v3, 0x0

    .line 793
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 794
    .line 795
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 796
    .line 797
    add-int/lit8 v6, v6, 0x1

    .line 798
    .line 799
    goto :goto_1b

    .line 800
    :cond_2e
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 801
    .line 802
    .line 803
    :goto_1c
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 4
    .line 5
    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mReserveOverflow:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 2
    .line 3
    iput-object p0, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 8
    .line 9
    return-void
.end method
