.class public final Lcom/android/systemui/qs/customize/QSCustomizerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

.field public final mKeyguardCallback:Lcom/android/systemui/qs/customize/QSCustomizerController$2;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mOnMenuItemClickListener:Lcom/android/systemui/qs/customize/QSCustomizerController$1;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field public final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field public final mToolbar:Landroid/widget/Toolbar;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p3, Lcom/android/systemui/qs/customize/QSCustomizerController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mOnMenuItemClickListener:Lcom/android/systemui/qs/customize/QSCustomizerController$1;

    new-instance p3, Lcom/android/systemui/qs/customize/QSCustomizerController$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    new-instance p3, Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    invoke-direct {p3, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p6, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p7, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object p8, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p9, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget p2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-boolean p2, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mSceneContainerEnabled:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mSceneContainerEnabled:Z

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateTransparentViewHeight()V

    iget-boolean p3, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mSceneContainerEnabled:Z

    const/16 p4, 0x8

    const p5, 0x7f0a07b2

    if-eqz p3, :cond_0

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mIsShowingNavBackdrop:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, p4

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    const p2, 0x10201c2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final applyBottomNavBarSizeToRecyclerViewPadding(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public final hide(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget p1, p1, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final isCustomizing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method public final onViewAttached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/phone/LightBarController;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    iput v0, v2, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->mHalfMargin:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v2, Lcom/android/systemui/qs/customize/QSCustomizerController$4;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/systemui/qs/customize/QSCustomizerController$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;Landroid/content/Context;ILandroidx/recyclerview/widget/RecyclerView;)V

    iget-object v3, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Lcom/android/systemui/qs/customize/TileAdapter$4;

    iput-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mOnMenuItemClickListener:Lcom/android/systemui/qs/customize/QSCustomizerController$1;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    return-void
.end method

.method public final setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-void
.end method
