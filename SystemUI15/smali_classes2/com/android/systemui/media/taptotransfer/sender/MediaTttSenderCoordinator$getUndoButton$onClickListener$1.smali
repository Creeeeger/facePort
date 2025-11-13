.class public final Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $newState:I

.field public final synthetic $routeInfo:Landroid/media/MediaRoute2Info;

.field public final synthetic $uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

.field public final synthetic $undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;ILandroid/media/MediaRoute2Info;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    iput-object p4, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    iput p5, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$newState:I

    iput-object p6, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;

    iget-object p1, p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$uiEvent:Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_RECEIVER_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;->MEDIA_TTT_SENDER_UNDO_TRANSFER_TO_THIS_DEVICE_CLICKED:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEvents;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-class p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "Must pass an undo-specific UiEvent."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$undoCallback:Lcom/android/internal/statusbar/IUndoMediaTransferCallback;

    invoke-interface {p1}, Lcom/android/internal/statusbar/IUndoMediaTransferCallback;->onUndoTriggered()V

    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->this$0:Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;

    iget v0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$newState:I

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator$getUndoButton$onClickListener$1;->$routeInfo:Landroid/media/MediaRoute2Info;

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;->access$updateMediaTapToTransferSenderDisplay(Lcom/android/systemui/media/taptotransfer/sender/MediaTttSenderCoordinator;ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V

    return-void
.end method
