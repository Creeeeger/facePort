.class Lcom/android/keyguard/CarrierTextManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/CarrierTextManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$2;->this$0:Lcom/android/keyguard/CarrierTextManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceProvisioned()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$2;->this$0:Lcom/android/keyguard/CarrierTextManager;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    return-void
.end method

.method public final onRefreshCarrierInfo(Landroid/content/Intent;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$2;->this$0:Lcom/android/keyguard/CarrierTextManager;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateCarrierTextForReason(I)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    return-void
.end method

.method public final onSimStateChanged(III)V
    .locals 5

    const-string v0, "CarrierTextController"

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$2;->this$0:Lcom/android/keyguard/CarrierTextManager;

    if-ltz p2, :cond_a

    iget v1, p0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    if-lt p2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/keyguard/CarrierTextManager;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    aput-boolean v3, p1, p2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    aget-boolean v2, v1, p2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    aput-boolean v4, v1, p2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSimNetworkLock:[Z

    aput-boolean v3, p1, p2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mSimNetworkLock:[Z

    aget-boolean v2, v1, p2

    if-eqz v2, :cond_4

    aput-boolean v4, v1, p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x2

    if-eq p3, p2, :cond_6

    const/4 p2, 0x3

    if-eq p3, p2, :cond_6

    const/16 p2, 0xc

    if-ne p3, p2, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_8

    const/4 p1, 0x7

    if-ne p3, p1, :cond_7

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    goto :goto_1

    :cond_7
    move v3, v4

    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onSimStateChanged: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/keyguard/CarrierTextManager;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", update: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    :cond_9
    return-void

    :cond_a
    :goto_2
    const-string p1, "onSimStateChanged() - slotId invalid: "

    const-string p3, " mTelephonyCapable: "

    invoke-static {p2, p1, p3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyCapable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTelephonyCapable(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$2;->this$0:Lcom/android/keyguard/CarrierTextManager;

    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mLogger:Lcom/android/keyguard/logging/CarrierTextManagerLogger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->logUpdateCarrierTextForReason(I)V

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyCapable:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText(Landroid/content/Intent;)V

    return-void
.end method
