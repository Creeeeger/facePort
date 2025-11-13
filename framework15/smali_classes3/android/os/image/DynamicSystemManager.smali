.class public Landroid/os/image/DynamicSystemManager;
.super Ljava/lang/Object;
.source "DynamicSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/DynamicSystemManager$Session;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DynamicSystemManager"


# instance fields
.field private final blacklist mService:Landroid/os/image/IDynamicSystemService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/image/DynamicSystemManager;)Landroid/os/image/IDynamicSystemService;
    .locals 0

    iget-object p0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/image/IDynamicSystemService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    return-void
.end method


# virtual methods
.method public blacklist abort()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->abort()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist closePartition()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->closePartition()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist createPartition(Ljava/lang/String;JZ)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/image/DynamicSystemManager$Session;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/image/IDynamicSystemService;->createPartition(Ljava/lang/String;JZ)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/image/DynamicSystemManager$Session;

    invoke-direct {v4, p0, v1}, Landroid/os/image/DynamicSystemManager$Session;-><init>(Landroid/os/image/DynamicSystemManager;Landroid/os/image/DynamicSystemManager$Session-IA;)V

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist finishInstallation()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->finishInstallation()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getActiveDsuSlot()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->getActiveDsuSlot()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getInstallationProgress()Landroid/gsi/GsiProgress;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isEnabled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isInUse()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->isInUse()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist isInstalled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->isInstalled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist remove()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->remove()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setEnable(ZZ)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0, p1, p2}, Landroid/os/image/IDynamicSystemService;->setEnable(ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist startInstallation(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0, p1}, Landroid/os/image/IDynamicSystemService;->startInstallation(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist suggestScratchSize()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemManager;->mService:Landroid/os/image/IDynamicSystemService;

    invoke-interface {v0}, Landroid/os/image/IDynamicSystemService;->suggestScratchSize()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
