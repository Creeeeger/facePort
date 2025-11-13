.class public final Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;
.super Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mSubscriptions:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;-><init>()V

    return-void
.end method


# virtual methods
.method public final deleteSubscription()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->mSubscriptions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->createCallbackIntent()Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleting subscription ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeleteEuiccSubscriptionSidecar"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public final getReceiverAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.network.DELETE_SUBSCRIPTION"

    return-object p0
.end method

.method public final onActionReceived()V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->mSubscriptions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionSidecar;->deleteSubscription()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onActionReceived()V

    :goto_0
    return-void
.end method
