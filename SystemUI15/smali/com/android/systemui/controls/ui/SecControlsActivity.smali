.class public final Lcom/android/systemui/controls/ui/SecControlsActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public parent:Landroid/view/ViewGroup;

.field public final secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

.field public final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/SecControlsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/ui/SecControlsUiController;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;Lcom/android/systemui/controls/ui/util/AUIFacade;)V
    .locals 0

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    iput-object p7, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput-object p8, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    iput-object p9, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    return-void
.end method

.method public static addView(Landroid/view/ViewGroup;Ljava/lang/String;IIZ)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p2, " is already done"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecControlsActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    shr-int/lit8 p1, p2, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p2, 0xff

    invoke-static {p1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p4, :cond_1

    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecControlsActivity"

    return-object p0
.end method

.method public final onBackKeyPressed()V
    .locals 2

    const-string v0, "SecControlsActivity"

    const-string v1, "onBackKeyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast p1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    instance-of v0, v0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->onConfigChanged()V

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spanManager:Lcom/android/systemui/controls/ui/util/SpanManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/controls/ui/util/SpanManager;->updateSpanInfos(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->context:Landroid/content/Context;

    iget v0, v0, Lcom/android/systemui/controls/ui/util/SpanManager;->maxSpan:I

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->spanSizeLookup:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$spanSizeLookup$1;

    iput-object p0, v1, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "SecControlsActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    iput-object v2, v1, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/high16 v3, 0x20000000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    const v3, 0x7f0600ab

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0600aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const-string v5, "SolidViewTag"

    invoke-static {v3, v5, v4, v2, v2}, Lcom/android/systemui/controls/ui/SecControlsActivity;->addView(Landroid/view/ViewGroup;Ljava/lang/String;IIZ)V

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f0600ad

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const-string v4, "DimViewTag"

    invoke-static {v3, v4, p1, v1, v1}, Lcom/android/systemui/controls/ui/SecControlsActivity;->addView(Landroid/view/ViewGroup;Ljava/lang/String;IIZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_show_controls"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "canAccessLockScreenDevice"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/controls/util/ControlsUtil;->isSecureLocked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_1
    const p1, 0x7f0d001e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    iget-object p1, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    const v3, 0x7f0a00a8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;

    invoke-direct {v0, v6, v4, v2, v5}, Lcom/android/systemui/controls/management/ControlsAnimations$observerForAnimations$1;-><init>(Landroid/content/Intent;Landroid/view/ViewGroup;ZLandroid/view/Window;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const p1, 0x7f0a0d52

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-boolean v4, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_5
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsActivity$onCreate$3$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/ui/SecControlsActivity$onCreate$3$1;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    sget-object v0, Lcom/android/systemui/controls/ui/SecControlsActivity$onCreate$3$2;->INSTANCE:Lcom/android/systemui/controls/ui/SecControlsActivity$onCreate$3$2;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    check-cast p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->initialize()V

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    const-string v0, "SecControlsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    check-cast v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->finalize()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SecControlsUiControllerImpl"

    const-string v2, "clear"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hide(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;->onDestroy()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->onDestroy()V

    :cond_2
    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->onDestroy()V

    :cond_3
    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->isChanged:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    iput-object v3, v4, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    sget-object v3, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    iput-object v3, v4, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    iput-boolean v2, v4, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->models:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlViewHolders:Ljava/util/Map;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, v2, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    check-cast v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object v1, v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelPendingIntent:Landroid/app/PendingIntent;

    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    sget-object v2, Lcom/android/systemui/controls/ui/SecRenderInfo;->Companion:Lcom/android/systemui/controls/ui/SecRenderInfo$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/controls/ui/SecRenderInfo;->actionIconMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    sget-object v2, Lcom/android/systemui/controls/ui/SecRenderInfo;->statusIconDrawableMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    new-instance v2, Lcom/android/systemui/controls/util/SALogger$Event$QuitDevices;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v3, :cond_5

    const v4, 0x7f0a0472

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    instance-of v4, v3, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    if-eqz v4, :cond_6

    sget-object v3, Lcom/android/systemui/controls/util/SALogger$Screen$IntroNoAppsToShow;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$IntroNoAppsToShow;

    goto :goto_1

    :cond_6
    instance-of v3, v3, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$NoDeviceSelected;

    goto :goto_1

    :cond_7
    sget-object v3, Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$MainScreen;

    :goto_1
    invoke-direct {v2, v3}, Lcom/android/systemui/controls/util/SALogger$Event$QuitDevices;-><init>(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    iget-object v3, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary()V

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secBindingController:Lcom/android/systemui/controls/controller/SecControlsBindingController;

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->loadedControls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_8
    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->panelView:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    iput-object v2, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    iput-object v1, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->parent:Landroid/view/ViewGroup;

    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onHomeKeyPressed()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onHomeKeyPressed()V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary()V

    return-void
.end method

.method public final onRecentAppsKeyPressed()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onRecentAppsKeyPressed()V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary()V

    return-void
.end method

.method public final onStart()V
    .locals 11

    const-string v0, "SecControlsActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const v0, 0x7f0a0472

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsActivity$onStart$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/ui/SecControlsActivity$onStart$1$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsActivity;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "show()"

    const-string v6, "SecControlsUiControllerImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, 0x1000

    const-string v5, "SecControlsUiControllerImpl#show"

    invoke-static {v7, v8, v5}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iput-object v0, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    iput-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    iput-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    iput-object v3, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hidden:Z

    iget-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    check-cast v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object v2, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    iget-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->context:Landroid/content/Context;

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ControlsOOBEManageAppsCompleted"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->loadComponentInfo()V

    iget-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsController;

    sget-object v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$1;->INSTANCE:Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$1;

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-boolean v5, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    iget-object v7, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    if-nez v5, :cond_5

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v2, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->secControlsController:Ldagger/Lazy;

    if-nez v1, :cond_2

    iget-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    instance-of v5, v1, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    iget-boolean v5, v5, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;->hasControls:Z

    if-eqz v5, :cond_2

    :cond_1
    instance-of v1, v1, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/SecControlsController;

    iget-object v5, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/controls/controller/Favorites;->getActiveFlag(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v0, v3

    :cond_3
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingController;

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/SecControlsController;

    iget-object v5, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/controls/controller/Favorites;->getActiveFlag(Landroid/content/ComponentName;)Z

    move-result v2

    iget-object v5, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const-string v8, "needToShowNonMainView "

    const-string v9, ", service.size = "

    const-string v10, ", selectedItem = "

    invoke-static {v8, v1, v9, v0, v10}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", activeFlag = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", componentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$3;

    invoke-direct {v0, v4}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$3;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1;

    invoke-direct {v1, v4, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$4;

    invoke-direct {v0, v4}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$4;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1;

    invoke-direct {v1, v4, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addSeedingFavoritesCallback$1;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addSeedingFavoritesCallback$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;)V

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$2;

    invoke-direct {v0, v4}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$show$2;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1;

    invoke-direct {v1, v4, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Lkotlin/jvm/functions/Function2;)V

    :goto_0
    iput-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v1, v4, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    check-cast v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;)V

    :cond_7
    sget-object v0, Lcom/android/systemui/controls/management/ControlsAnimations;->INSTANCE:Lcom/android/systemui/controls/management/ControlsAnimations;

    const v1, 0x7f0a00a8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "SecControlsActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->parent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    check-cast p0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->hide(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
