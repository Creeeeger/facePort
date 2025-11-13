.class public final Lcom/android/systemui/slimindicator/SlimIndicatorIconBlacklistReceiver;
.super Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    const-string p1, "[QuickStar]SlimIndicatorIconBlacklistReceiver"

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorIconBlacklistReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorIconBlacklistReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive - action:"

    const-string v3, ",  pkgName: "

    invoke-static {v2, p1, v3, v0, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconblacklist"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setIconBlacklist(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mSettingsBackUpManager:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    const-string/jumbo p1, "rotate,headset"

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setIconBlacklist(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final register()V
    .locals 8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x2

    const-string v7, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    return-void
.end method

.method public final setFilter()V
    .locals 1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string p0, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final unregister()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
