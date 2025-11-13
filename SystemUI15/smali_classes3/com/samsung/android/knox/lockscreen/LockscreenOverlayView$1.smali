.class Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;->this$0:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    sget-object p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setLayout()Z

    return-void
.end method
