.class public final synthetic Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;I)V
    .locals 0

    iput p4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    iget-object v1, p1, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    :goto_0
    const-string v2, "KeyguardKnoxGuardView"

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v0, "click call button"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t find the component "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "not support call"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130912

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;->f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

    const-string v1, "KeyguardKnoxGuardView"

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    :try_start_1
    const-string v2, "click customer app button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.kgclient.intent.action.CUSTOMER_APP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.kgclient"

    const-string v4, "com.samsung.android.kgclient.receiver.KGIntentReceiver"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string v3, "customerPackageName"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v4, "com.samsung.android.knoxguard.STATUS"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find the component "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    iget-object p0, p1, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
