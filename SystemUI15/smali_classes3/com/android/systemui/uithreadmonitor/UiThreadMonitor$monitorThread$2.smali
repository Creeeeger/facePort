.class final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-direct {v1, p0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$monitorThread$2$1;-><init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "UiThreadMonitor"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
