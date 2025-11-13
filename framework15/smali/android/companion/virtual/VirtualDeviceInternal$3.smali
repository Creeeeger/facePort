.class Landroid/companion/virtual/VirtualDeviceInternal$3;
.super Landroid/os/ResultReceiver;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/companion/virtual/VirtualDeviceInternal;->launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/companion/virtual/VirtualDeviceInternal;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Ljava/util/function/IntConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceInternal;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$3;->this$0:Landroid/companion/virtual/VirtualDeviceInternal;

    iput-object p3, p0, Landroid/companion/virtual/VirtualDeviceInternal$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/companion/virtual/VirtualDeviceInternal$3;->val$listener:Ljava/util/function/IntConsumer;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Ljava/util/function/IntConsumer;I)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceInternal$3;->val$listener:Ljava/util/function/IntConsumer;

    new-instance v2, Landroid/companion/virtual/VirtualDeviceInternal$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/companion/virtual/VirtualDeviceInternal$3$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
