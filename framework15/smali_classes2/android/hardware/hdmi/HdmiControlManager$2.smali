.class Landroid/hardware/hdmi/HdmiControlManager$2;
.super Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiControlManager;->getHdmiControlStatusChangeListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/hdmi/HdmiControlManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$2;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiControlManager$2;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlStatusChangeListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChange$0(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;IZ)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;->onStatusChange(IZ)V

    return-void
.end method


# virtual methods
.method public blacklist onStatusChange(IZ)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/hdmi/HdmiControlManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/hardware/hdmi/HdmiControlManager$2;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;

    new-instance v4, Landroid/hardware/hdmi/HdmiControlManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;IZ)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
