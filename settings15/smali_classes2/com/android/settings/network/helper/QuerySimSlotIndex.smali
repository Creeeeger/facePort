.class public final Lcom/android/settings/network/helper/QuerySimSlotIndex;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public mDisabledSlotsIncluded:Z

.field public mOnlySlotWithSim:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex;->mOnlySlotWithSim:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>([I)V

    move-object p0, v2

    :goto_1
    return-object p0
.end method
