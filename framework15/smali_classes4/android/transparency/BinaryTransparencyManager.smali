.class public Landroid/transparency/BinaryTransparencyManager;
.super Ljava/lang/Object;
.source "BinaryTransparencyManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TransparencyManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/android/internal/os/IBinaryTransparencyService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/os/IBinaryTransparencyService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transparency/BinaryTransparencyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    return-void
.end method


# virtual methods
.method public blacklist collectAllApexInfo(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$ApexInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IBinaryTransparencyService;->collectAllApexInfo(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "TransparencyManager"

    const-string v1, "Calling backend\'s collectAllSilentInstalledMbaInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IBinaryTransparencyService;->collectAllSilentInstalledMbaInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "TransparencyManager"

    const-string v1, "Calling backend\'s collectAllUpdatedPreloadInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0, p1}, Lcom/android/internal/os/IBinaryTransparencyService;->collectAllUpdatedPreloadInfo(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSignedImageInfo()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0}, Lcom/android/internal/os/IBinaryTransparencyService;->getSignedImageInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
