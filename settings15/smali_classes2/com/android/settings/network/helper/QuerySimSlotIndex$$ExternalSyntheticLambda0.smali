.class public final synthetic Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/helper/QuerySimSlotIndex;

    check-cast p1, Landroid/telephony/UiccSlotInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Ljava/util/stream/IntStream;->of(I)Ljava/util/stream/IntStream;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/helper/QuerySimSlotIndex;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/helper/QuerySimSlotIndex$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method
