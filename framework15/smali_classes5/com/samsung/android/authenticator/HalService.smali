.class final Lcom/samsung/android/authenticator/HalService;
.super Ljava/lang/Object;
.source "HalService.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HS"

.field private static blacklist sService:Lcom/samsung/android/authenticator/XidlHalService;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static blacklist checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not found service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/authenticator/XidlHalService;->execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/authenticator/XidlHalService;->execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized blacklist getService()Lcom/samsung/android/authenticator/XidlHalService;
    .locals 2

    const-class v0, Lcom/samsung/android/authenticator/HalService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/authenticator/HalService;->sService:Lcom/samsung/android/authenticator/XidlHalService;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/authenticator/XidlHalService;->makeHalService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/authenticator/HalService;->sService:Lcom/samsung/android/authenticator/XidlHalService;

    :cond_0
    sget-object v1, Lcom/samsung/android/authenticator/HalService;->sService:Lcom/samsung/android/authenticator/XidlHalService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 8

    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/authenticator/XidlHalService;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    return v1
.end method

.method public static blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 8

    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/authenticator/XidlHalService;->load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v1

    return v1
.end method

.method public static blacklist unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    invoke-interface {v0, p0}, Lcom/samsung/android/authenticator/XidlHalService;->unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z

    move-result v1

    return v1
.end method

.method public static blacklist unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lcom/samsung/android/authenticator/XidlHalService;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/authenticator/XidlHalService;

    invoke-interface {v0, p0}, Lcom/samsung/android/authenticator/XidlHalService;->unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z

    move-result v1

    return v1
.end method
