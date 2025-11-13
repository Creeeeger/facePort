.class public final Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;
.super Lcom/android/internal/app/ChooserActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;
.implements Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field public static final Companion:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$Companion;


# instance fields
.field public final activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

.field public final activityTaskManagerService:Landroid/app/IActivityTaskManager;

.field public component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

.field public final componentFactory:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;

.field public configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

.field public final lifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final listControllerFactory:Lkotlin/jvm/functions/Function1;

.field public final pluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

.field public recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

.field public reviewGrantedConsentRequired:Z

.field public taskSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->Companion:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/IActivityTaskManager;Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;Lcom/android/systemui/util/AsyncActivityLauncher;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;-><init>(Landroid/app/IActivityTaskManager;Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;Lcom/android/systemui/util/AsyncActivityLauncher;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/IActivityTaskManager;Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;Lcom/android/systemui/util/AsyncActivityLauncher;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IActivityTaskManager;",
            "Lcom/android/systemui/doze/PluginAODManager;",
            "Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;",
            "Lcom/android/systemui/util/AsyncActivityLauncher;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->activityTaskManagerService:Landroid/app/IActivityTaskManager;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->pluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->componentFactory:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->listControllerFactory:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public final appliedThemeResId()I
    .locals 0

    const p0, 0x7f140612

    return p0
.end method

.method public final bind(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->bind(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getPersonalListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public final createBlockerEmptyStateProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyStateProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getEmptyStateProvider()Lcom/android/systemui/mediaprojection/appselector/MediaProjectionBlockerEmptyStateProvider;

    move-result-object p0

    return-object p0
.end method

.method public final createContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->root:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    :cond_1
    const v0, 0x7f0d020d

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0a06e0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->setTaskHeightSize(Landroid/view/View;)V

    const v3, 0x7f0a06e1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a06e2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f070998

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;-><init>(I)V

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    invoke-direct {p1, v0, v2, v3, v4}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->lastBoundData:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->bind(Ljava/util/List;)V

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->root:Landroid/view/ViewGroup;

    :cond_3
    return-object v0
.end method

.method public final createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->listControllerFactory:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverListController;

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity;->createListController(Landroid/os/UserHandle;)Lcom/android/internal/app/ResolverListController;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final createMyUserIdProvider()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$MyUserIdProvider;
    .locals 1

    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$createMyUserIdProvider$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;)V

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 0

    const p0, 0x7f0d020c

    return p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final onActivityStarted(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->componentFactory:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "launched_from_user_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/UserHandle;

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launched_from_host_uid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    move-object v6, p0

    move-object v7, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;->create(Landroid/os/UserHandle;ILjava/lang/String;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorView;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;Z)Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    invoke-interface {v2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getLifecycleObservers()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/DefaultLifecycleObserver;

    iget-object v5, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v5, v4}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    invoke-interface {v2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    if-nez v2, :cond_4

    move-object v2, v3

    :cond_4
    invoke-interface {v2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getController()Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    if-nez v2, :cond_5

    move-object v2, v3

    :cond_5
    invoke-interface {v2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getRecentsViewController()Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    sget-object v2, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->Companion:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$Companion;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    if-nez v6, :cond_6

    move-object v6, v3

    :cond_6
    invoke-interface {v6}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getHostUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    if-nez v7, :cond_7

    move-object v7, v3

    :cond_7
    invoke-interface {v7}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getPersonalProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v4, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v2, 0x7f130fd3

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    const-string v2, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_media_projection_user_consent_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->reviewGrantedConsentRequired:Z

    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    if-nez p1, :cond_8

    move-object p1, v3

    :cond_8
    iget-boolean v0, p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->isFirstStart:Z

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->hostUid:I

    iget-object v2, p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->logger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v2, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->notifyAppSelectorDisplayed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "MediaProjectionMetricsLogger"

    const-string v4, "Error notifying server of app selector displayed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;

    invoke-direct {v0, p1, v3}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController$init$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x3

    invoke-static {p1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const p1, 0x1020278

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_c

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v3, 0x10204f6

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    instance-of v3, v2, Lcom/android/internal/widget/RecyclerView;

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    check-cast v2, Lcom/android/internal/widget/RecyclerView;

    new-instance v3, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$RecyclerViewExpandingAccessibilityDelegate;

    invoke-direct {v3, p1, v2}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$RecyclerViewExpandingAccessibilityDelegate;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_5

    :cond_b
    :goto_4
    const-string v2, "MediaProjectionAppSelectorActivity"

    const-string v3, "MediaProjection only supports RecyclerView"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MediaProjectionAppSelectorActivity should be provided with launched_from_host_uid extra"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MediaProjectionAppSelectorActivity should be provided with launched_from_user_handle extra"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MediaProjectionAppSelectorActivity should be launched with extras"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->component:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;->getLifecycleObservers()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/DefaultLifecycleObserver;

    iget-object v3, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->taskSelected:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->Companion:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

    iget-boolean v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->reviewGrantedConsentRequired:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;->setReviewedConsentIfNeeded(IZLandroid/media/projection/IMediaProjection;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->logger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iget v0, v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->hostUid:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v2, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->notifyPermissionRequestCancelled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MediaProjectionMetricsLogger"

    const-string v3, "Error notifying server of projection cancelled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-virtual {v0}, Lcom/android/systemui/util/AsyncActivityLauncher;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->controller:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    invoke-super {p0}, Lcom/android/internal/app/ChooserActivity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Lcom/android/internal/app/ChooserActivity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/ChooserActivity;->onResume()V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/ChooserActivity;->onStart()V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Lcom/android/internal/app/ChooserActivity;->onStop()V

    return-void
.end method

.method public final returnSelectedApp(Landroid/app/ActivityOptions$LaunchCookie;I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->taskSelected:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "capture_region_result_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v3, Landroid/os/ResultReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    new-instance v1, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;-><init>(Landroid/app/ActivityOptions$LaunchCookie;I)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "capture_region"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/projection/IMediaProjection;->setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V

    invoke-interface {v0, p2}, Landroid/media/projection/IMediaProjection;->setTaskId(I)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/app/ChooserActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->setForceSendResultForMediaProjection()V

    sget-object p1, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->Companion:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

    iget-boolean p2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->reviewGrantedConsentRequired:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    invoke-static {p1, p2, v0}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;->setReviewedConsentIfNeeded(IZLandroid/media/projection/IMediaProjection;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    return-void
.end method

.method public final shouldGetOnlyDefaultActivities()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldShowContentPreview()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->recentsViewController:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->lastBoundData:Ljava/util/List;

    if-eqz p0, :cond_3

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method public final shouldShowServiceTargets()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldShowStickyContentPreviewWhenEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->shouldShowContentPreview()Z

    move-result p0

    return p0
.end method

.method public final startSelected(IZZ)V
    .locals 4

    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {p2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p2, p1, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;

    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p3

    const/high16 v0, 0x10000000

    or-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p3

    const v0, -0x2000001

    and-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean p3, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    if-eqz p3, :cond_4

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p3, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p3, p3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez p3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    :cond_2
    const-string p3, ""

    :cond_3
    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->activityTaskManagerService:Landroid/app/IActivityTaskManager;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-interface {v1, p3, v2}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->pluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p3, v0, p2}, Lcom/android/systemui/doze/PluginAODManager;->showCoverToast(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_4
    new-instance p3, Landroid/app/ActivityOptions$LaunchCookie;

    const-string v0, "media_projection_launch_token"

    invoke-direct {p3, v0}, Landroid/app/ActivityOptions$LaunchCookie;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;->activityLauncher:Lcom/android/systemui/util/AsyncActivityLauncher;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;

    invoke-direct {v3, p0, p3}, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity$startSelected$activityStarted$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;Landroid/app/ActivityOptions$LaunchCookie;)V

    invoke-virtual {v2, p2, v1, v0, v3}, Lcom/android/systemui/util/AsyncActivityLauncher;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z

    invoke-interface {p1}, Lcom/android/internal/app/chooser/TargetInfo;->isSuspended()Z

    return-void
.end method
