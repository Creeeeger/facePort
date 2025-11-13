.class public final Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

.field public final context:Landroid/content/Context;

.field public final defaultTimeout:I

.field public final displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

.field public final mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

.field public final stateMap:Ljava/util/Map;

.field public final uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/statusbar/CommandQueue;Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;Lcom/android/systemui/media/taptotransfer/MediaTttFlags;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p5, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    iput-object p6, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

    iput-object p7, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0058

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->defaultTimeout:I

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

    new-instance p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    return-void
.end method

.method public static final access$updateMediaTapToTransferSenderDisplay(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .locals 24

    move-object/from16 v2, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->values()[Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    move-result-object v0

    array-length v5, v0

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v0, v6

    invoke-virtual {v7}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getStateInt()I

    move-result v8

    if-ne v8, v1, :cond_0

    move-object v0, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v5, "Array contains no element matching the predicate."

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not find requested state "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ChipStateSender"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    const-string v5, "Invalid"

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v8, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v10, "MediaTttSender"

    invoke-static {v9, v10, v5, v6, v7}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChange(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    invoke-static {v9, v10, v1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChangeError(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;I)V

    goto/16 :goto_d

    :cond_4
    iget-object v1, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    iget-object v5, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    iget-object v11, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/logging/InstanceId;

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move-object v15, v5

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v5, v11, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    iget-object v5, v5, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v5}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v5

    goto :goto_4

    :goto_6
    sget-object v5, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->Companion:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    if-nez v1, :cond_8

    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    check-cast v7, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$FAR_FROM_RECEIVER;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;->access$stateIsStartOfSequence(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender$Companion;Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z

    move-result v5

    goto :goto_7

    :cond_8
    if-ne v1, v0, :cond_9

    move v5, v6

    goto :goto_7

    :cond_9
    invoke-virtual {v1, v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->isValidNextState(Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;)Z

    move-result v5

    :goto_7
    const-string v7, "FAR_FROM_RECEIVER"

    if-nez v5, :cond_c

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    move-object v7, v1

    :cond_b
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logInvalidStateTransitionError$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logInvalidStateTransitionError$2;

    invoke-virtual {v9, v10, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v7, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_d

    :cond_c
    iget-object v5, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    iget-object v5, v5, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getUiEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v12

    invoke-interface {v5, v12, v15}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    sget-object v5, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->FAR_FROM_RECEIVER:Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;

    if-ne v0, v5, :cond_10

    if-nez v1, :cond_d

    goto/16 :goto_d

    :cond_d
    invoke-virtual {v1}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->IN_PROGRESS:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    if-eq v0, v4, :cond_f

    invoke-virtual {v1}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->SUCCEEDED:Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    if-ne v0, v4, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->removeIdFromStore(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0, v7}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeView(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_f
    :goto_9
    invoke-virtual {v1}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transferStatus="

    invoke-static {v1, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logRemovalBypass$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logRemovalBypass$2;

    invoke-virtual {v9, v10, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v7, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto/16 :goto_d

    :cond_10
    iget-object v1, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v15, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;

    invoke-virtual {v9, v10, v5, v7, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v9, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v1, v11, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    iget-object v5, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->context:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    const v7, 0x7f130c07

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_a
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v9, Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils;->Companion:Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils$Companion;

    new-instance v10, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;

    invoke-direct {v10, v5, v8}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$createChipbarInfo$icon$1;-><init>(Ljava/lang/String;Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5, v4, v10}, Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils$Companion;->getIconInfoFromPackageName(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTimeoutLength()Lcom/android/systemui/media/taptotransfer/sender/TimeoutLength;

    move-result-object v5

    sget-object v8, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    iget v8, v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->defaultTimeout:I

    if-eq v5, v6, :cond_12

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    mul-int/lit8 v8, v8, 0x2

    :cond_12
    move/from16 v20, v8

    goto :goto_b

    :cond_13
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :goto_b
    new-instance v8, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    invoke-virtual {v4}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->toTintedIcon()Lcom/android/systemui/common/shared/model/TintedIcon;

    move-result-object v13

    invoke-virtual {v0, v1, v7}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getChipTextString(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/common/shared/model/Text;

    move-result-object v14

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getEndItem()Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_c

    :cond_14
    instance-of v4, v1, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Loading;

    if-eqz v4, :cond_15

    sget-object v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    goto :goto_c

    :cond_15
    instance-of v4, v1, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$Error;

    if-eqz v4, :cond_16

    sget-object v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;

    goto :goto_c

    :cond_16
    instance-of v1, v1, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;

    if-eqz v1, :cond_18

    if-eqz p3, :cond_17

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getEndItem()Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;

    iget-object v3, v1, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;->uiEventOnClick:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getEndItem()Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;

    iget v6, v1, Lcom/android/systemui/media/taptotransfer/sender/SenderEndItem$UndoButton;->newState:I

    new-instance v9, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;-><init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;ILandroid/media/MediaRoute2Info;)V

    new-instance v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    new-instance v1, Lcom/android/systemui/common/shared/model/Text$Resource;

    const v2, 0x7f130c04

    invoke-direct {v1, v2}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    invoke-direct {v3, v1, v9}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;-><init>(Lcom/android/systemui/common/shared/model/Text;Landroid/view/View$OnClickListener;)V

    :cond_17
    :goto_c
    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/ChipStateSender;->getTransferStatus()Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/sender/TransferStatus;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/android/systemui/temporarydisplay/ViewPriority;->NORMAL:Lcom/android/systemui/temporarydisplay/ViewPriority;

    const/16 v17, 0x1

    const-string v18, "Media Transfer Chip View (Sender)"

    const-string v19, "MEDIA_TRANSFER_ACTIVATED_SENDER"

    move-object v12, v8

    move-object v5, v15

    move-object v15, v3

    move-object/from16 v23, v5

    invoke-direct/range {v12 .. v23}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;-><init>(Lcom/android/systemui/common/shared/model/TintedIcon;Lcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;Landroid/os/VibrationEffect;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/systemui/temporarydisplay/ViewPriority;Lcom/android/internal/logging/InstanceId;)V

    invoke-virtual {v11, v8}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    :goto_d
    return-void

    :cond_18
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "Current sender states:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final removeIdFromStore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->logger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMapRemoval$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMapRemoval$2;

    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "MediaTttSender"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    sget-object p2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderLogger$logStateMap$2;

    invoke-virtual {v0, v3, v1, p2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object p1, v1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->stateMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->displayListener:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$displayListener$1;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->MEDIA_TAP_TO_TRANSFER:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$commandQueueCallbacks$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Lcom/android/systemui/Dumpable;)V

    :cond_0
    return-void
.end method
