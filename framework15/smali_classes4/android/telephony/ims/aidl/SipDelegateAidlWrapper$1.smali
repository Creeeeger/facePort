.class Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;
.super Landroid/telephony/ims/aidl/ISipDelegate$Stub;
.source "SipDelegateAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$cleanupSession$3(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/SipDelegate;->cleanupSession(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyMessageReceiveError$2(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyMessageReceived$1(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMessage$0(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/stub/SipDelegate;->sendMessage(Landroid/telephony/ims/SipMessage;J)V

    return-void
.end method


# virtual methods
.method public blacklist cleanupSession(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public blacklist notifyMessageReceiveError(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, p1, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public blacklist notifyMessageReceived(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public blacklist sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-static {v3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p1, p2, p3}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipDelegate;Landroid/telephony/ims/SipMessage;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
