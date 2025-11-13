.class public final synthetic Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;->$r8$classId:I

    iget p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;->f$0:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/telephony/UiccCardInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->isMultipleEnabledProfilesSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
