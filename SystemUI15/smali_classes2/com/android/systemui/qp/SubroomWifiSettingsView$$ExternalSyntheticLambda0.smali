.class public final synthetic Lcom/android/systemui/qp/SubroomWifiSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomWifiSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomWifiSettingsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomWifiSettingsView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomWifiSettingsView;

    sget p1, Lcom/android/systemui/qp/SubroomWifiSettingsView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "SubroomWifiSettingsView"

    const-string p1, "Subscreen Wifi tile not available by KnoxStateMonitor."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView;->mSubscreenWifiController:Lcom/android/systemui/qp/SubscreenWifiController;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SWC isEnabled enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    const-string v2, "SubscreenWifiController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView;->mSubscreenWifiController:Lcom/android/systemui/qp/SubscreenWifiController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/qp/SubscreenWifiController;->mContext:Landroid/content/Context;

    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "WIFI_STATE_CHANGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "wifi_state"

    iget-boolean v1, v1, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/qp/SubscreenWifiController;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "showCoverToast"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "runOnCover"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "afterKeyguardGone"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "ignoreKeyguardState"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1, v1}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView;->mSubscreenWifiController:Lcom/android/systemui/qp/SubscreenWifiController;

    xor-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiAdapter:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE2001"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
