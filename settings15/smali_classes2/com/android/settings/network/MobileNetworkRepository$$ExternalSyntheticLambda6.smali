.class public final synthetic Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkRepository;

.field public final synthetic f$1:Landroid/telephony/SubscriptionInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkRepository;Landroid/telephony/SubscriptionInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/SubscriptionInfo;

    iput p3, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;->f$0:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/SubscriptionInfo;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkRepository$$ExternalSyntheticLambda6;->f$2:I

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    iput p0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mPhysicalSlotIndex:I

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p0

    iput p0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mLogicalSlotIndex:I

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mIsActive:Z

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result p0

    iput p0, v0, Lcom/android/settings/network/MobileNetworkRepository;->mPortIndex:I

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/settings/network/MobileNetworkRepository;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Can not get port index and physicalSlotIndex for subId "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
