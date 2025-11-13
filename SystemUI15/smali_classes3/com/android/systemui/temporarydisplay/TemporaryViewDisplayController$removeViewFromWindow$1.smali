.class public final Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayInfo:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

.field public final synthetic $view:Landroid/view/ViewGroup;

.field public final synthetic this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;",
            "Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    iput-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->$displayInfo:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iput-object p3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->$displayInfo:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->$view:Landroid/view/ViewGroup;

    sget-object v3, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->Companion:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger$Companion;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logViewRemovedFromWindowManager(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->this$0:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->$view:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;->$displayInfo:Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->wakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;->getWakeReason()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
