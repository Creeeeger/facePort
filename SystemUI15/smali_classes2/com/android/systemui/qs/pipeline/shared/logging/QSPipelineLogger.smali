.class public final Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final restoreLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final tileAutoAddLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final tileListLogBuffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->tileListLogBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p3, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->restoreLogBuffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logParsedTiles(Ljava/util/List;ZI)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logParsedTiles$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logParsedTiles$2;

    const-string v2, "QSTileListLog"

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->tileListLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-boolean p2, v1, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput p3, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logProcessTileChange(Lcom/android/systemui/qs/pipeline/data/repository/UserTileSpecRepository$RestoreTiles;Ljava/util/List;I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logProcessTileChange$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logProcessTileChange$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->tileListLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSTileListLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput p3, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logSettingsRestored(Lcom/android/systemui/qs/pipeline/data/model/RestoreData;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logSettingsRestored$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logSettingsRestored$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->restoreLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSRestoreLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget v2, p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->userId:I

    iput v2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iget-object v1, p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredTiles:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/qs/pipeline/data/model/RestoreData;->restoredAutoAddedTiles:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logSettingsRestoredOnUserSetupComplete(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logSettingsRestoredOnUserSetupComplete$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logSettingsRestoredOnUserSetupComplete$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->restoreLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSRestoreLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logTilesRestoredAndReconciled(Ljava/util/List;Ljava/util/List;I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logTilesRestoredAndReconciled$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logTilesRestoredAndReconciled$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->tileListLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSTileListLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, p2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput p3, p2, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logUsingRetailTiles()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logUsingRetailTiles$2;->INSTANCE:Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger$logUsingRetailTiles$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/shared/logging/QSPipelineLogger;->tileListLogBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSTileListLog"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
