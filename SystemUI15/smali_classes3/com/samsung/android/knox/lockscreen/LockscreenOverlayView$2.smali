.class Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Received intent: "

    const-string v0, "LSO_LockscreenOverlayView"

    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.samsung.android.knox.intent.action.LSO_CONFIG_CHANGED_INTERNAL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$2;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
