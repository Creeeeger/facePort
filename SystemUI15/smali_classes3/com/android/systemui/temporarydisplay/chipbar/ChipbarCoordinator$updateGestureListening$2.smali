.class final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$2;
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
.field final synthetic this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$2;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$2;->this$0:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    sget-object p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    if-nez p1, :cond_0

    check-cast v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logSwipeGestureError$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logSwipeGestureError$2;

    iget-object v2, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    invoke-virtual {v2, v1, p0, p1, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const-string v0, "No info is being displayed"

    iput-object v0, p1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    check-cast v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    iget-boolean v3, v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->allowSwipeToDismiss:Z

    if-nez v3, :cond_1

    check-cast v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logSwipeGestureError$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logSwipeGestureError$2;

    iget-object v3, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    invoke-virtual {v3, v1, p0, p1, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/log/LogMessageImpl;

    iget-object v0, v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    const-string v0, "This view prohibits swipe-to-dismiss"

    iput-object v0, p1, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->tempViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/temporarydisplay/TemporaryViewUiEvent;->TEMPORARY_VIEW_MANUALLY_DISMISSED:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEvent;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    check-cast p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    iget-object p1, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->id:Ljava/lang/String;

    const-string v0, "SWIPE_UP_GESTURE_DETECTED"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->removeView(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->updateGestureListening$1()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
