.class public final synthetic Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget p0, p0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroid/telephony/UiccSlotInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    check-cast p1, Landroid/telephony/UiccCardInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->isMultipleEnabledProfilesSupported()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
