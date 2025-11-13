.class public final synthetic Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomBluetoothSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomBluetoothSettingsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomBluetoothSettingsView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomBluetoothSettingsView;

    sget p1, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "SubroomBluetoothSettingsView"

    const-string p1, "Subscreen Bluetooth tile not available by KnoxStateMonitor."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isTransient "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenBleController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/qp/SubscreenBleController;->mContext:Landroid/content/Context;

    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "BLUETOOTH_STATE_CHANGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/qp/SubscreenBleController;->mContext:Landroid/content/Context;

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

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    invoke-virtual {p1}, Lcom/android/systemui/qp/SubscreenBleController;->isEnabled()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    xor-int/2addr p1, v0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPBE2003"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
