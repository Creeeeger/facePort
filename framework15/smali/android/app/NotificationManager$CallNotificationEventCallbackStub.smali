.class Landroid/app/NotificationManager$CallNotificationEventCallbackStub;
.super Landroid/app/ICallNotificationEventCallback$Stub;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallNotificationEventCallbackStub"
.end annotation


# instance fields
.field final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final blacklist mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

.field final blacklist mPackageName:Ljava/lang/String;

.field final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic blacklist $r8$lambda$1DaJdXvLMG2PebvGeHAHmHI42EE(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->lambda$onCallNotificationRemoved$1(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$as9yRruhHDkcfpMiiN974qtx5dQ(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->lambda$onCallNotificationPosted$0(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/app/NotificationManager$CallNotificationEventListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ICallNotificationEventCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mUserHandle:Landroid/os/UserHandle;

    iput-object p3, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

    return-void
.end method

.method private synthetic blacklist lambda$onCallNotificationPosted$0(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

    invoke-interface {v0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventListener;->onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic blacklist lambda$onCallNotificationRemoved$1(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mListener:Landroid/app/NotificationManager$CallNotificationEventListener;

    invoke-interface {v0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventListener;->onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public blacklist onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onCallNotificationRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/NotificationManager$CallNotificationEventCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/NotificationManager$CallNotificationEventCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/app/NotificationManager$CallNotificationEventCallbackStub;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
