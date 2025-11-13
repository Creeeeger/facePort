.class public Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockStatusBar"


# instance fields
.field private mCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method

.method private updateVisibility(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isStatusBarIconVisible()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isStatusBarNetworkVisible()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->mCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

    if-eqz p0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {p0, v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;->onVisibilityUpdated(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    const-string p1, "PluginLockStatusBar"

    const-string v0, "apply()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->updateVisibility(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockStatusBar"

    const-string v1, "recover()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 1

    const-string p1, "PluginLockStatusBar"

    const-string v0, "reset()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->mCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;->onVisibilityUpdated(II)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->mCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

    return-void
.end method

.method public bridge synthetic setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(ILcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method public update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 1

    const-string p1, "PluginLockStatusBar"

    const-string/jumbo v0, "update()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->updateVisibility(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
