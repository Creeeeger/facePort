.class public final Lcom/android/keyguard/KeyguardCarrierViewController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

.field public final synthetic val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardCarrierView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    invoke-virtual {p2, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setCarrierLockPlusInfo()V

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p2, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p1, v0, p2, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x749e82b0 -> :sswitch_2
        -0x290a5660 -> :sswitch_1
        -0xdb21ee7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
