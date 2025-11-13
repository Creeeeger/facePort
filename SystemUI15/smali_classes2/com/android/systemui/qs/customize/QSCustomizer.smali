.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCollapseAnimationListener:Lcom/android/systemui/qs/customize/QSCustomizer$1;

.field public mIsShowingNavBackdrop:Z

.field public mQs:Lcom/android/systemui/plugins/qs/QS;

.field public mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

.field public final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSceneContainerEnabled:Z

.field public final mToolbar:Landroid/widget/Toolbar;

.field public final mTransparentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d02ec

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Lcom/android/systemui/qs/QSDetailClipper;

    const p2, 0x7f0a032e

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    const p1, 0x10201c2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101030b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x1040c8f

    invoke-interface {p2, v0, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f130e45

    invoke-virtual {p1, p2}, Landroid/widget/Toolbar;->setTitle(I)V

    const p1, 0x102000a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a0333

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0x96

    iput-wide v0, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mMoveDuration:J

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/DefaultItemAnimator;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateTransparentViewHeight()V

    return-void
.end method


# virtual methods
.method public final isCustomizing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isShown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x10301c6

    invoke-virtual {p1, v0, v1}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const v1, 0x1040c8f

    invoke-interface {p0, p1, v0, p1, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public final updateNavBackDrop(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 4

    const v0, 0x7f0a07b2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSceneContainerEnabled:Z

    if-nez p0, :cond_2

    move p0, v3

    goto :goto_2

    :cond_2
    const/16 p0, 0x8

    :goto_2
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean p0, p2, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :goto_3
    return-void
.end method

.method public final updateTransparentViewHeight()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mSceneContainerEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/qs/QSUtils;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    move-result v2

    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTransparentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
