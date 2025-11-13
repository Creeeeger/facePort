.class Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
.super Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentInterceptorDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$C7PKd0PqD2-0ji6M9yiHi4Scrs4(Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->lambda$onIntentIntercepted$0(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onIntentIntercepted$0(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;->onIntentIntercepted(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public blacklist onIntentIntercepted(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;Landroid/content/Intent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
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
