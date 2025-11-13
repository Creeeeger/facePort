.class public final synthetic Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    check-cast p1, Landroid/telephony/UiccPortInfo;

    iget-boolean p0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mDisabledSlotsIncluded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    :goto_0
    return p0
.end method
