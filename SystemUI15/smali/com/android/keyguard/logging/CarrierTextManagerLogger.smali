.class public final Lcom/android/keyguard/logging/CarrierTextManagerLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/keyguard/logging/CarrierTextManagerLogger$Companion;


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public location:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/logging/CarrierTextManagerLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->Companion:Lcom/android/keyguard/logging/CarrierTextManagerLogger$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logCallbackSentFromUpdate(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2;

    const-string v2, "CarrierTextManagerLog"

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    iget-object v1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    iput-boolean v1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iget-boolean p1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    iput-boolean p1, v2, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logNewSatelliteCarrierText(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logNewSatelliteCarrierText$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logNewSatelliteCarrierText$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "CarrierTextManagerLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logStartListeningForSatelliteCarrierText()V
    .locals 5

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logStartListeningForSatelliteCarrierText$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logStartListeningForSatelliteCarrierText$2;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "CarrierTextManagerLog"

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logStopListeningForSatelliteCarrierText(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logStopListeningForSatelliteCarrierText$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logStopListeningForSatelliteCarrierText$2;

    const-string v2, "CarrierTextManagerLog"

    iget-object v3, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdate(I)V
    .locals 5

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdate$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdate$2;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "CarrierTextManagerLog"

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    move-object p1, v0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p0, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdateCarrierTextForReason(I)V
    .locals 5

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;

    invoke-direct {v1, p1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateCarrierTextForReason$2;-><init>(I)V

    const-string v2, "CarrierTextManagerLog"

    iget-object v3, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->location:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdateFromStickyBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateFromStickyBroadcast$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateFromStickyBroadcast$2;

    const-string v2, "CarrierTextManagerLog"

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdateLoopStart(IILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateLoopStart$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateLoopStart$2;

    const-string v2, "CarrierTextManagerLog"

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput p2, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iput-object p3, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUpdateWfcCheck()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateWfcCheck$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUpdateWfcCheck$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "CarrierTextManagerLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUsingSatelliteText(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUsingSatelliteText$2;->INSTANCE:Lcom/android/keyguard/logging/CarrierTextManagerLogger$logUsingSatelliteText$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/keyguard/logging/CarrierTextManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "CarrierTextManagerLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
