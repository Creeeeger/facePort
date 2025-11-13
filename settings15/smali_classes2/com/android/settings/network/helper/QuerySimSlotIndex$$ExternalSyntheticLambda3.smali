.class public final synthetic Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result p0

    return p0
.end method
