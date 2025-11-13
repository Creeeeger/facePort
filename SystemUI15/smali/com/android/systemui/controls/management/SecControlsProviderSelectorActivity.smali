.class public final Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

.field public final authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

.field public final backExecutor:Ljava/util/concurrent/Executor;

.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsController:Lcom/android/systemui/controls/controller/ControlsController;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public doneButton:Landroid/widget/Button;

.field public final executor:Ljava/util/concurrent/Executor;

.field public isOOBE:Z

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public final saLogger:Lcom/android/systemui/controls/util/SALogger;

.field public final secControlsController:Lcom/android/systemui/controls/controller/SecControlsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/controller/SecControlsController;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;)V
    .locals 0

    invoke-direct {p0, p8, p4, p5, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iput-object p4, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p6, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->secControlsController:Lcom/android/systemui/controls/controller/SecControlsController;

    iput-object p7, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iput-object p8, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p9, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iput-object p10, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iput-object p11, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    iput-object p12, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    iput-object p13, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    return-void
.end method

.method public static final access$updateButtonStatue(Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result p0

    const-string/jumbo v0, "updateButtonStatue donButton.isEnabled = "

    const-string v1, "SecControlsProviderSelectorActivity"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecControlsProviderSelectorActivity"

    return-object p0
.end method

.method public final handleDone()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ControlsOOBEManageAppsCompleted"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    iget-object v2, v2, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/android/systemui/controls/util/SALogger$Event$IntroStart;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/controls/util/SALogger$Event$IntroStart;-><init>(II)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    check-cast v0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startSecControlsActivity(Landroid/content/Context;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackKeyPressed()V
    .locals 2

    const-string v0, "SecControlsProviderSelectorActivity"

    const-string v1, "onBackKeyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    check-cast v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss()V

    iget-boolean v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->isOOBE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->handleDone()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v14, p0

    const-string v0, "SecControlsProviderSelectorActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d0020

    invoke-virtual {v14, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v1, 0x7f0a0d52

    invoke-virtual {v14, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v14, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v1, 0x7f0a0688

    invoke-virtual {v14, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iget-object v3, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->getWidthPercentBasic(F)F

    move-result v2

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(FLandroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ControlsOOBEManageAppsCompleted"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->isOOBE:Z

    const-string v4, "onCreate isOOBE = "

    invoke-static {v4, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->isOOBE:Z

    const v1, 0x7f0a0c99

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f13048d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v14, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130471

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0232

    invoke-virtual {v14, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$5$1;

    invoke-direct {v1, v14}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$5$1;-><init>(Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->doneButton:Landroid/widget/Button;

    const v0, 0x7f0a0228

    invoke-virtual {v14, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f13045d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    invoke-virtual {v14, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130473

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v15, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    iget-object v1, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->backExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, v14, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$9;

    invoke-direct {v6, v14}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$9;-><init>(Ljava/lang/Object;)V

    new-instance v13, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$10;

    iget-object v0, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    invoke-direct {v9, v0}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$10;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$11;

    iget-object v0, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->secControlsController:Lcom/android/systemui/controls/controller/SecControlsController;

    invoke-direct {v10, v0}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$11;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$12;

    invoke-direct {v11, v0}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$12;-><init>(Ljava/lang/Object;)V

    new-instance v12, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$13;

    invoke-direct {v12, v0}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$13;-><init>(Ljava/lang/Object;)V

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    new-instance v12, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$14;

    invoke-direct {v12, v14}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$14;-><init>(Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;)V

    iget-object v11, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    iget-object v10, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    iget-object v4, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    iget-object v9, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object v8, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    move-object v0, v15

    move-object v13, v8

    move-object/from16 v8, p0

    move-object/from16 v16, v10

    move-object v10, v13

    move-object v13, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/lifecycle/Lifecycle;Lcom/android/systemui/controls/management/ControlsListingController;Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/controls/management/adapter/SecFavoritesRenderer;Landroid/content/Context;Lcom/android/systemui/controls/util/ControlsUtil;Lcom/android/systemui/controls/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$15$1;

    invoke-direct {v0, v14}, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity$onCreate$15$1;-><init>(Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;)V

    iget-object v1, v15, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v1, v0}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    iput-object v15, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    const v0, 0x7f0a02fc

    invoke-virtual {v14, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06061e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-boolean v0, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->isOOBE:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/controls/util/SALogger$Screen$Intro;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$Intro;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/controls/util/SALogger$Screen$ManageApps;->INSTANCE:Lcom/android/systemui/controls/util/SALogger$Screen$ManageApps;

    :goto_1
    iget-object v1, v14, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/util/SALogger$Screen;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 8

    const-string v0, "SecControlsProviderSelectorActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->secControlsController:Lcom/android/systemui/controls/controller/SecControlsController;

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$saveCurrentFavorites$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$saveCurrentFavorites$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->getTotalFavoriteAndActiveAppCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->appAdapter:Lcom/android/systemui/controls/management/adapter/SecAppAdapter;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iget-object v1, v1, Lcom/android/systemui/controls/management/adapter/SecAppAdapter;->listOfServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Lcom/android/systemui/controls/util/SALogger$StatusEvent$NumberOfApps;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/controls/util/SALogger$StatusEvent$NumberOfApps;-><init>(II)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/controls/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/util/SALogger$StatusEvent;)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/SecControlsProviderSelectorActivity;->controlsController:Lcom/android/systemui/controls/controller/ControlsController;

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/controls/util/SALogger;->Companion:Lcom/android/systemui/controls/util/SALogger$Companion;

    check-cast v3, Ljava/lang/Iterable;

    instance-of v6, v3, Ljava/util/Collection;

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v3, v7

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    iget-boolean v6, v6, Lcom/android/systemui/controls/controller/StructureInfo;->active:Z

    if-eqz v6, :cond_7

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v7}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/controls/util/SALogger$AppStatus;

    invoke-direct {v5, v4, v3}, Lcom/android/systemui/controls/util/SALogger$AppStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/android/systemui/controls/util/SALogger$StatusEvent$DeviceAppStatus;

    new-instance v3, Lcom/android/systemui/controls/util/SALogger$AppStatusList;

    invoke-direct {v3, v1}, Lcom/android/systemui/controls/util/SALogger$AppStatusList;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/android/systemui/controls/util/SALogger$StatusEvent$DeviceAppStatus;-><init>(Lcom/android/systemui/controls/util/SALogger$AppStatusList;)V

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/controls/util/SALogger;->sendStatusEvent(Landroid/content/Context;Lcom/android/systemui/controls/util/SALogger$StatusEvent;)V

    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method
