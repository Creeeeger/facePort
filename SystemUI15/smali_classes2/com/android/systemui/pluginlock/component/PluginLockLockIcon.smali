.class public Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;
.super Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginLockLockIcon"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/pluginlock/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/util/SettingsHelper;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    .locals 0

    return-void
.end method

.method public recover()V
    .locals 0

    return-void
.end method

.method public reset(Z)V
    .locals 0

    const-string p0, "PluginLockLockIcon"

    const-string p1, "reset()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 2

    const-string v0, "PluginLockLockIcon"

    const-string/jumbo v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    return-void
.end method
