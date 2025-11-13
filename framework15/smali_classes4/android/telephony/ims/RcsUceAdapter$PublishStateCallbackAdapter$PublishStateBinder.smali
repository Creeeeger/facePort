.class Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;
.super Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishStateBinder"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$ycTIu2o9RaJe0xI_SWr8iIM6sj4(Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;Landroid/telephony/ims/PublishAttributes;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->lambda$onPublishUpdated$0(Landroid/telephony/ims/PublishAttributes;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    return-void
.end method

.method private synthetic blacklist lambda$onPublishUpdated$0(Landroid/telephony/ims/PublishAttributes;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;->onPublishStateChange(Landroid/telephony/ims/PublishAttributes;)V

    return-void
.end method


# virtual methods
.method public blacklist onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;Landroid/telephony/ims/PublishAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    throw v2
.end method
