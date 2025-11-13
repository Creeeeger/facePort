.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$EventReceiver;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTouchHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method
