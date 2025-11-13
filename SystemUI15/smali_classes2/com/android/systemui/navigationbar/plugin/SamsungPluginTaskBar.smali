.class public final Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;


# instance fields
.field public final buttonDispatcherProxy:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

.field public iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field public isKeyguardShowing:Z

.field public final keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mainContext:Landroid/content/Context;

.field public final mainDisplayId:I

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final pluginBundle:Landroid/os/Bundle;

.field public final rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field public taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

    invoke-direct {p1, p2, v1}, Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->buttonDispatcherProxy:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;-><init>(Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    return-void
.end method


# virtual methods
.method public final forceSetBackGesture(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    return-void
.end method

.method public final getBarDisplayId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    return p0
.end method

.method public final getBarLayoutParamsProvider()Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    return-object p0
.end method

.method public final getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->buttonDispatcherProxy:Lcom/android/systemui/navigationbar/plugin/TaskBarButtonDispatcherProxy;

    return-object p0
.end method

.method public final getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    return-object p0
.end method

.method public final getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconTheme;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getProvider(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    return-object p0
.end method

.method public final getDisabledFlags()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->getDisabledFlags()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
    .locals 0

    new-instance p0, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/plugin/BasicRuneFeatureChecker;-><init>()V

    return-object p0
.end method

.method public final getNavBarStoreAdapter()Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->Companion:Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

    new-instance v1, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v2, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/basic/util/LogWrapper;)V

    sput-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;

    :cond_0
    return-object v0
.end method

.method public final getNavigationBarContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getTaskStackAdapter()Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isKeyguardShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->isKeyguardShowing:Z

    return p0
.end method

.method public final isTaskbarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager;)Z

    move-result p0

    return p0
.end method

.method public final notifyForceImmersiveStateChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->updatePluginBundle()V

    return-void
.end method

.method public final parseAndUpdateBundle()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isBottomGestureMode(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getGesturalLayout(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, ";"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, ","

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v1, v5, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "order"

    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    const-string v4, "pin"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    check-cast v1, Ljava/util/Collection;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "recent"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "home"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "back"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    sget-object v7, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "("

    invoke-static {v3, v7, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v3, "1"

    goto :goto_2

    :cond_4
    invoke-static {v3, v7, v2, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    add-int/2addr v7, v5

    const-string v9, ":"

    invoke-static {v3, v9, v2, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v9

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public final registerKeyguardStateCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final resetScheduleAutoHide()V
    .locals 0

    return-void
.end method

.method public final setBarLayoutParamsProvider(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    return-void
.end method

.method public final setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
    .locals 1

    iget p2, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    return-void
.end method

.method public final setDefaultBarLayoutParamsProvider()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    return-void
.end method

.method public final setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->iconResourceMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v2, "setPreloadedIconSet() null: "

    invoke-static {v2, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->preloadedIconSet:Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateTaskbarButtonIconsAndHints()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->updatePluginBundle()V

    :cond_3
    return-void
.end method

.method public final setForceShowNavigationBarFlag(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method

.method public final setIconThemeAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    const-string v1, "alpha"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->updatePluginBundle()V

    :cond_0
    return-void
.end method

.method public final setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->mainDisplayId:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setProvider(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->parseAndUpdateBundle()V

    return-void
.end method

.method public final setRotationLockAtAngle(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz p0, :cond_0

    const-string v0, "SamsungPluginTaskBar#setRotationLockAtAngle"

    invoke-interface {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final setRotationLocked(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->rotationLockContainer:Lcom/android/systemui/statusbar/policy/RotationLockController;

    if-eqz p0, :cond_0

    const-string v0, "SamsungPluginTaskBar#setRotationLocked"

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final unregisterKeyguardStateCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->keyguardCallback:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar$keyguardCallback$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final updateOpaqueColor(I)V
    .locals 0

    return-void
.end method

.method public final updatePluginBundle()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v14, 0xfff

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v15

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_SPLUGIN_BUNDLE:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v1, v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->pluginBundle:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->pluginBundle:Landroid/os/Bundle;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    :cond_0
    return-void
.end method
