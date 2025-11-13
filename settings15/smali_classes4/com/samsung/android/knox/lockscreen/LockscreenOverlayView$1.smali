.class Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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
