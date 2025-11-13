.class public Lcom/android/systemui/pluginlock/PluginLockDelegateApp;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;


# static fields
.field private static final DEF_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "PluginLockDelegateApp"


# instance fields
.field private mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

.field private mRootView:Landroid/view/ViewGroup;

.field private final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginLockDelegateApp, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    return-void
.end method

.method private findPanelView()Landroid/view/ViewGroup;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "com.android.systemui"

    const-string v3, "notification_panel"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public hasBackupWallpaper(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasBackupWallpaper :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->hasBackupWallpaper(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTouchConsumablePosition(FF)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->isTouchConsumablePosition(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAodTransitionEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onAodTransitionEnd()V

    :cond_0
    return-void
.end method

.method public onBarStateChanged(I)V
    .locals 2

    const-string v0, "PluginLockDelegateApp"

    const-string v1, "onBarStateChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setBarState(I)V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onEventReceived(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFolderStateChanged(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onFolderStateChanged(ZZ)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFolderStateChanged, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/AbstractMethodError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PluginLockDelegateApp"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onFolderStateChanged(Z)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onLocaleChanged()V

    :cond_0
    return-void
.end method

.method public onNowBarItemExpanded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onNowBarItemExpanded(Z)V

    :cond_0
    return-void
.end method

.method public onRootViewAttached(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "PluginLockDelegateApp"

    const-string v1, "onRootViewAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onStartedGoingToSleep(IZ)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onStartedGoingToSleep enabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isLockScreenEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " aodClockTransition : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginLockDelegateApp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onStartedGoingToSleep(Z)V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onStartedWakingUp()V

    :cond_0
    return-void
.end method

.method public onWallpaperChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWallpaperChanged :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onLockWallpaperChanged(I)V

    :cond_0
    return-void
.end method

.method public onWallpaperConsumed(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWallpaperConsumed :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", updateColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PluginLockDelegateApp"

    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->onWallpaperConsumed(IZ)V

    :cond_0
    return-void
.end method

.method public setBasicManager(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBasicManager, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockDelegateApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->setPanelView(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V

    :cond_0
    return-void
.end method

.method public setPanelView(Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    const-string v1, "PluginLockDelegateApp"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "com.android.systemui"

    const-string v4, "notification_panel"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPanelView :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setPanelView(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "setPanelView failed. panelView is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "setPanelView failed. mRootView is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setQsExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDelegateApp;->mBasicManager:Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/pluginlock/PluginLockBasicManager;->setQsExpansion(F)V

    :cond_0
    return-void
.end method
