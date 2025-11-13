.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActionButtonPaddingEnd:I

.field public mActionButtonPaddingStart:I

.field public mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mFormatItems:Z

.field public mFormatItemsWidth:I

.field public final mGeneratedItemPadding:I

.field public final mIsOneUI41:Z

.field public mLastItemEndPadding:I

.field public mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public final mMinCellSize:I

.field public mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$1;

.field public final mOverflowBadgeText:Ljava/lang/String;

.field public mOverflowButtonMinWidth:I

.field public mOverflowButtonPaddingEnd:I

.field public mOverflowButtonPaddingStart:I

.field public mPopupContext:Landroid/content/Context;

.field public mPopupTheme:I

.field public mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    invoke-static {}, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->getField_SEM_PLATFORM_INT()I

    move-result v1

    const v2, 0x1fc34

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mIsOneUI41:Z

    sget-object v2, Landroidx/appcompat/R$styleable;->View:[I

    const v3, 0x7f04000e

    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v3, 0x7f040024

    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f13113f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071122

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07111d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07111b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07111a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    return-void
.end method

.method public static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    const/16 v0, 0x10

    if-eqz p0, :cond_2

    instance-of v1, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p0, :cond_1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    return p0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_0
    iput-object v0, v1, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iput-object p0, v0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public final hasSupportDividerBeforeChildAt(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    instance-of p0, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v0

    :cond_1
    if-lez p1, :cond_2

    instance-of p0, v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public final invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onConfigurationChanged()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Landroidx/appcompat/R$styleable;->View:[I

    const/4 v2, 0x0

    const v3, 0x7f04000e

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v5, 0x7f040024

    invoke-virtual {p1, v2, v1, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mIsOneUI41:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071122

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07111d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07111b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07111a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_5

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v9, v3

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    move v9, v12

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v9, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_7

    div-int v3, v5, v10

    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    :goto_4
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move v7, v4

    :goto_5
    if-ge v7, v1, :cond_d

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    move v7, v4

    :goto_7
    if-ge v7, v1, :cond_d

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_b

    goto :goto_8

    :cond_b
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v8, v5

    move v5, v8

    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method public final onMeasure(II)V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eq v2, v3, :cond_1

    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v3, :cond_2

    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v2, v7, :cond_2

    iput v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    invoke-virtual {v3, v5}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v3, :cond_2d

    if-lez v2, :cond_2d

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v8

    const/4 v8, -0x2

    move/from16 v11, p2

    invoke-static {v11, v10, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    sub-int/2addr v3, v9

    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    div-int v11, v3, v9

    rem-int v12, v3, v9

    if-nez v11, :cond_3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto/16 :goto_20

    :cond_3
    div-int/2addr v12, v11

    add-int/2addr v12, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v13, v4

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v19, v16

    move/from16 v20, v19

    const-wide/16 v17, 0x0

    :goto_1
    if-ge v15, v9, :cond_12

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_4

    move v1, v5

    move/from16 v22, v7

    move/from16 v21, v10

    goto/16 :goto_a

    :cond_4
    instance-of v1, v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/2addr v13, v5

    if-eqz v1, :cond_5

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iput-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    iput v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    iput v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eqz v1, :cond_6

    move-object v5, v6

    check-cast v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    move v5, v11

    :goto_4
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move/from16 v22, v7

    move-object/from16 v7, v21

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    move/from16 v23, v13

    sub-int v13, v21, v10

    move/from16 v21, v10

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    if-eqz v1, :cond_8

    move-object v1, v6

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    if-lez v5, :cond_c

    if-eqz v1, :cond_a

    const/4 v13, 0x2

    if-lt v5, v13, :cond_c

    :cond_a
    mul-int/2addr v5, v12

    const/high16 v13, -0x80000000

    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v6, v5, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int v13, v5, v12

    rem-int/2addr v5, v12

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    add-int/2addr v13, v5

    :cond_b
    if-eqz v1, :cond_d

    const/4 v5, 0x2

    if-ge v13, v5, :cond_d

    const/4 v13, 0x2

    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    :cond_d
    :goto_7
    iget-boolean v5, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v5, :cond_e

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    iput v13, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v1, v13, v12

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v6, v1, v10}, Landroid/view/View;->measure(II)V

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-boolean v1, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x1

    :goto_9
    iget-boolean v4, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_10

    move/from16 v16, v1

    :cond_10
    sub-int/2addr v11, v13

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move/from16 v5, v20

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v20

    if-ne v13, v1, :cond_11

    shl-int v4, v1, v15

    int-to-long v4, v4

    or-long v4, v17, v4

    move-wide/from16 v17, v4

    :cond_11
    move/from16 v13, v23

    :goto_a
    add-int/2addr v15, v1

    move v5, v1

    move/from16 v10, v21

    move/from16 v7, v22

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_12
    move/from16 v22, v7

    move/from16 v5, v20

    if-eqz v16, :cond_13

    const/4 v1, 0x2

    if-ne v13, v1, :cond_13

    const/4 v1, 0x1

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    :goto_b
    const/4 v4, 0x0

    :goto_c
    if-lez v19, :cond_1d

    if-lez v11, :cond_1d

    const v10, 0x7fffffff

    const/4 v15, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    :goto_d
    if-ge v15, v9, :cond_17

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v6, v20

    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v7, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v7, :cond_15

    :cond_14
    move/from16 v21, v4

    move/from16 v4, v25

    const/16 v20, 0x1

    goto :goto_e

    :cond_15
    iget v6, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v6, v10, :cond_16

    const-wide/16 v26, 0x1

    shl-long v23, v26, v15

    move/from16 v21, v4

    move v10, v6

    const/16 v20, 0x1

    const/16 v25, 0x1

    goto :goto_f

    :cond_16
    const-wide/16 v26, 0x1

    if-ne v6, v10, :cond_14

    shl-long v6, v26, v15

    or-long v6, v23, v6

    move/from16 v21, v4

    move/from16 v4, v25

    const/16 v20, 0x1

    add-int/lit8 v25, v4, 0x1

    move-wide/from16 v23, v6

    goto :goto_f

    :goto_e
    move/from16 v25, v4

    :goto_f
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v21

    goto :goto_d

    :cond_17
    move/from16 v21, v4

    move/from16 v4, v25

    const/16 v20, 0x1

    or-long v17, v17, v23

    if-le v4, v11, :cond_18

    move/from16 v25, v3

    move/from16 v3, v20

    move/from16 v20, v2

    goto :goto_12

    :cond_18
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v9, :cond_1c

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    shl-int v15, v20, v4

    move/from16 v20, v2

    move/from16 v25, v3

    int-to-long v2, v15

    and-long v26, v23, v2

    const-wide/16 v28, 0x0

    cmp-long v15, v26, v28

    if-nez v15, :cond_1a

    iget v6, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v6, v10, :cond_19

    or-long v17, v17, v2

    :cond_19
    const/4 v3, 0x1

    goto :goto_11

    :cond_1a
    if-eqz v1, :cond_1b

    iget-boolean v2, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    if-ne v11, v2, :cond_1b

    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v15, v3, v12

    const/4 v2, 0x0

    invoke-virtual {v6, v15, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1b
    iget v2, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v3, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v11, v11, -0x1

    :goto_11
    add-int/2addr v4, v3

    move/from16 v2, v20

    move/from16 v20, v3

    move/from16 v3, v25

    goto :goto_10

    :cond_1c
    move/from16 v25, v3

    move/from16 v3, v20

    move v4, v3

    move/from16 v3, v25

    goto/16 :goto_c

    :cond_1d
    move/from16 v20, v2

    move/from16 v25, v3

    move/from16 v21, v4

    const/4 v3, 0x1

    :goto_12
    if-nez v16, :cond_1e

    if-ne v13, v3, :cond_1e

    move v1, v3

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    :goto_13
    if-lez v11, :cond_29

    const-wide/16 v6, 0x0

    cmp-long v2, v17, v6

    if-eqz v2, :cond_29

    sub-int/2addr v13, v3

    if-lt v11, v13, :cond_1f

    if-nez v1, :cond_1f

    if-le v14, v3, :cond_29

    :cond_1f
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    if-nez v1, :cond_21

    const-wide/16 v3, 0x1

    and-long v3, v17, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v1, :cond_20

    sub-float/2addr v2, v3

    :cond_20
    const/4 v1, 0x1

    add-int/lit8 v4, v9, -0x1

    shl-int v6, v1, v4

    int-to-long v6, v6

    and-long v6, v17, v6

    const-wide/16 v13, 0x0

    cmp-long v1, v6, v13

    if-eqz v1, :cond_21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v1, :cond_21

    sub-float/2addr v2, v3

    :cond_21
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-lez v1, :cond_22

    mul-int/2addr v11, v12

    int-to-float v1, v11

    div-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_14

    :cond_22
    const/4 v1, 0x0

    :goto_14
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v9, :cond_29

    const/4 v3, 0x1

    shl-int v4, v3, v2

    int-to-long v3, v4

    and-long v3, v17, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_23

    const/4 v3, 0x1

    const/4 v10, 0x2

    goto :goto_17

    :cond_23
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    instance-of v3, v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_25

    iput v1, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v3, 0x1

    iput-boolean v3, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v2, :cond_24

    iget-boolean v3, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v3, :cond_24

    neg-int v3, v1

    const/4 v10, 0x2

    div-int/2addr v3, v10

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_16

    :cond_24
    const/4 v10, 0x2

    :goto_16
    const/4 v3, 0x1

    const/16 v21, 0x1

    goto :goto_17

    :cond_25
    const/4 v10, 0x2

    iget-boolean v3, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_26

    iput v1, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v3, 0x1

    iput-boolean v3, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v11, v1

    div-int/2addr v11, v10

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v21, v3

    goto :goto_17

    :cond_26
    const/4 v3, 0x1

    if-eqz v2, :cond_27

    div-int/lit8 v11, v1, 0x2

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_27
    add-int/lit8 v11, v9, -0x1

    if-eq v2, v11, :cond_28

    div-int/lit8 v11, v1, 0x2

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_28
    :goto_17
    add-int/2addr v2, v3

    goto :goto_15

    :cond_29
    move/from16 v4, v21

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v9, :cond_2b

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v3, :cond_2a

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_19

    :cond_2a
    iget v3, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v3, v12

    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v3, v8}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x1

    :goto_19
    add-int/2addr v4, v1

    goto :goto_18

    :cond_2b
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v1, v20

    if-eq v1, v2, :cond_2c

    move v7, v5

    :goto_1a
    move/from16 v3, v25

    goto :goto_1b

    :cond_2c
    move/from16 v7, v22

    goto :goto_1a

    :goto_1b
    invoke-virtual {v0, v3, v7}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto/16 :goto_20

    :cond_2d
    move/from16 v11, p2

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v2, :cond_36

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    instance-of v6, v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_33

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    sget-object v8, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v6, v4, v7, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v4, 0x1

    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_32

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_2f

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2e
    :goto_1d
    const/4 v1, 0x1

    const/4 v3, 0x0

    goto :goto_1f

    :cond_2f
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1d

    :cond_30
    iget-boolean v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mIsOneUI41:Z

    if-eqz v6, :cond_31

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v4, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    move v3, v6

    :goto_1e
    const/4 v1, 0x1

    goto :goto_1f

    :cond_31
    const/4 v6, 0x0

    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    invoke-virtual {v1, v3, v6, v4, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1d

    :cond_32
    if-ge v5, v6, :cond_2e

    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    goto :goto_1d

    :cond_33
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_35

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v3, :cond_34

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    iget v7, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    invoke-virtual {v4, v6, v3, v7, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1e

    :cond_34
    const/4 v3, 0x0

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v4, v3, v6, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1e

    :cond_35
    const/4 v3, 0x0

    goto :goto_1e

    :goto_1f
    add-int/2addr v5, v1

    goto/16 :goto_1c

    :cond_36
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_20
    return-void
.end method
