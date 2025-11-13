.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    sget-boolean v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->setAwake(I)V

    return-void
.end method
