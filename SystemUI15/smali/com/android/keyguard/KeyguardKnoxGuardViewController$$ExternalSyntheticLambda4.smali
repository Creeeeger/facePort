.class public final synthetic Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "mOptionButton OnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.kgclient.intent.action.SUPPORT_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.kgclient"

    const-string v2, "com.samsung.android.kgclient.receiver.KGIntentReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knoxguard.STATUS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAllSimState()Z

    move-result v0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isDataAllowed(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "mDataButton OnClick noSimState : "

    const-string v3, ", dataAllowed : "

    const-string v4, "KeyguardKnoxGuardView"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13091b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    if-nez v1, :cond_2

    const v0, 0x7f130c36

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f131366

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lcom/android/systemui/Operator;->isKoreaQsTileBranding()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_0
    move v5, v1

    goto :goto_3

    :cond_4
    const-string p0, "ril.currentplmn"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v2, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "oversea"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v5, v1

    goto :goto_2

    :cond_7
    :goto_1
    move v5, v0

    :goto_2
    if-eqz v5, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isNetworkRoaming : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentplmn : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " oversea : "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v2, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_8
    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "data_roaming"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_9

    move v1, v0

    :cond_9
    if-nez v1, :cond_a

    const-string/jumbo p0, "update data roaming settings"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_a
    iget-object p0, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
