.class public final Lcom/android/keyguard/SecRotationWatcher$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecRotationWatcher;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecRotationWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecRotationWatcher$1;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/keyguard/SecRotationWatcher$1;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    iget-object p1, p1, Lcom/android/keyguard/SecRotationWatcher;->mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher$1;->this$0:Lcom/android/keyguard/SecRotationWatcher;

    iget-object p0, p0, Lcom/android/keyguard/SecRotationWatcher;->mHandler:Lcom/android/keyguard/SecRotationWatcher$2;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
