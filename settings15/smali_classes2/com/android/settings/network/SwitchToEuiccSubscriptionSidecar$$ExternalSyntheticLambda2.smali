.class public final synthetic Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
