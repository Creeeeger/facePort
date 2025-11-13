.class final synthetic Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$restoreData$2;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "logSettingsRestored(Lcom/android/systemui/qs/pipeline/data/model/RestoreData;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    const-string v4, "logSettingsRestored"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;

    check-cast p2, Lkotlin/coroutines/Continuation;

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;

    sget-object p2, Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository;->Companion:Lcom/android/systemui/qs/pipeline/data/repository/QSSettingsRestoredBroadcastRepository$Companion;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->logSettingsRestored(Lcom/android/systemui/qs/pipeline/data/model/RestoreData;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
