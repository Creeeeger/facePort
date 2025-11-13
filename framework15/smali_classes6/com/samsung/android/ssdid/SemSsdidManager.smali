.class public final Lcom/samsung/android/ssdid/SemSsdidManager;
.super Ljava/lang/Object;
.source "SemSsdidManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemSsdidManager"


# instance fields
.field private blacklist mService:Lcom/samsung/android/ssdid/ISemSsdidManagerService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/ssdid/ISemSsdidManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/ssdid/SemSsdidManager;->mService:Lcom/samsung/android/ssdid/ISemSsdidManagerService;

    const-string v0, "SemSsdidManager, constructor"

    const-string v1, "SemSsdidManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string v0, "ISemSsdidManagerService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist getSsdid()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/ssdid/SemSsdidManager;->mService:Lcom/samsung/android/ssdid/ISemSsdidManagerService;

    const-string v1, "SemSsdidManager"

    if-nez v0, :cond_0

    const-string v0, "getSsdid, ISemSsdidManagerService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ssdid/SemSsdidManager;->mService:Lcom/samsung/android/ssdid/ISemSsdidManagerService;

    invoke-interface {v0}, Lcom/samsung/android/ssdid/ISemSsdidManagerService;->getSsdid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "getSsdid, RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v0, ""

    return-object v0
.end method
