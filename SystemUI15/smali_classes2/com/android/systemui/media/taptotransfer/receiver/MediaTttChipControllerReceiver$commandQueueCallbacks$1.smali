.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 18

    move/from16 v1, p1

    move-object/from16 v2, p3

    sget v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->$r8$clinit:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->Companion:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->values()[Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->getStateInt()I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v4, "Array contains no element matching the predicate."

    invoke-direct {v0, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not find requested state "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ChipStateReceiver"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "Invalid"

    :cond_3
    iget-object v4, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    check-cast v4, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverLogger;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "MediaTttReceiver"

    invoke-static {v4, v8, v0, v5, v7}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChange(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_4

    invoke-static {v4, v8, v1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttLoggerUtils;->logStateChangeError(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    iget-object v0, v3, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->instanceMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/InstanceId;

    if-nez v0, :cond_5

    iget-object v0, v3, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->temporaryViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    :cond_5
    move-object v15, v0

    iget-object v0, v3, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v6}, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->getUiEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    sget-object v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;->CLOSE_TO_SENDER:Lcom/android/systemui/media/taptotransfer/receiver/ChipStateReceiver;

    if-eq v6, v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v0, v3, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->instanceMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_7

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x58

    const/16 v17, 0x0

    move-object v7, v0

    move-object/from16 v8, p2

    move-object/from16 v10, p4

    invoke-direct/range {v7 .. v17}, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;-><init>(Landroid/media/MediaRoute2Info;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/ViewPriority;Lcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->displayView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;)V

    goto :goto_3

    :cond_7
    iget-object v0, v3, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-direct {v1, v3, v4, v5, v15}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateMediaTapToTransferReceiverDisplay$1;-><init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/media/MediaRoute2Info;Ljava/lang/CharSequence;Lcom/android/internal/logging/InstanceId;)V

    iget-object v3, v3, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    :goto_3
    return-void
.end method
