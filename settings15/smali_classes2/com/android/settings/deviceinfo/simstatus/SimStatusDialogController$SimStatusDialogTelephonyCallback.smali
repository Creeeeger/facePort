.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataConnectionStateChanged(II)V
    .locals 1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f141df4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f141dee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f141deb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f141dec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f141ded

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->CELLULAR_NETWORK_STATE:I

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    return-void
.end method

.method public final onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    sget v2, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->NETWORK_PROVIDER_VALUE_ID:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {v0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$SimStatusDialogTelephonyCallback;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method
