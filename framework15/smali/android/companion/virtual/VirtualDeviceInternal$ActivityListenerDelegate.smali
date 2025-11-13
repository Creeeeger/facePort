.class Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;
.super Ljava/lang/Object;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$6fkyx7j63UAsHyDdcNPQ-NVOxO4(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onTopActivityChanged$0(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nJVQ8kY_b5c1qDPKyh5xLPdWH1w(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onDisplayEmpty$2(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wMTNQEFQS9Syz-aC40dZOG_d1HQ(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->lambda$onTopActivityChanged$1(ILandroid/content/ComponentName;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic blacklist lambda$onDisplayEmpty$2(I)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onTopActivityChanged$0(ILandroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic blacklist lambda$onTopActivityChanged$1(ILandroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public blacklist onDisplayEmpty(I)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onTopActivityChanged(ILandroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onTopActivityChanged(ILandroid/content/ComponentName;I)V
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$ActivityListenerDelegate;ILandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
