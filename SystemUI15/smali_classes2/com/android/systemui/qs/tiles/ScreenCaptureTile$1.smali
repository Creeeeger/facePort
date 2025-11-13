.class public final Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iget-object p2, p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "doScreenCapture"

    const/4 v1, 0x3

    const-string v2, "capturedOrigin"

    const-string v3, "com.samsung.android.capture.ScreenshotExecutor"

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iget-boolean p2, p1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    if-eqz p2, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;-><init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mNeedDoScreenCapture:Z

    :cond_1
    :goto_0
    return-void
.end method
