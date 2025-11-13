.class final Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;->$reason:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    sget-object v0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->Companion:Lcom/android/keyguard/logging/CarrierTextManagerLogger$Companion;

    iget p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;->$reason:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "SATELLITE_CHANGED"

    goto :goto_0

    :cond_1
    const-string p0, "ACTIVE_DATA_SUB_CHANGED"

    goto :goto_0

    :cond_2
    const-string p0, "SIM_ERROR_STATE_CHANGED"

    goto :goto_0

    :cond_3
    const-string p0, "ON_TELEPHONY_CAPABLE"

    goto :goto_0

    :cond_4
    const-string p0, "REFRESH_CARRIER_INFO"

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "(unknown)"

    :cond_5
    const-string v0, "refreshing carrier info for reason: "

    const-string v1, " location="

    invoke-static {v0, p0, v1, p1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
