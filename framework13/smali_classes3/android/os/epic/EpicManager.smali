.class public final Landroid/os/epic/EpicManager;
.super Ljava/lang/Object;
.source "EpicManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "EpicManager"


# instance fields
.field final blacklist mService:Landroid/os/epic/IEpicManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/epic/IEpicManager;)V
    .locals 0
    .param p1, "service"    # Landroid/os/epic/IEpicManager;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/os/epic/EpicManager;->mService:Landroid/os/epic/IEpicManager;

    .line 39
    return-void
.end method


# virtual methods
.method blacklist Create(I)Landroid/os/epic/IEpicObject;
    .locals 2
    .param p1, "scenario_id"    # I

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "ret":Landroid/os/epic/IEpicObject;
    iget-object v1, p0, Landroid/os/epic/EpicManager;->mService:Landroid/os/epic/IEpicManager;

    if-nez v1, :cond_0

    .line 47
    return-object v0

    .line 50
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/epic/IEpicManager;->Create(I)Landroid/os/epic/IEpicObject;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 55
    :goto_0
    return-object v0
.end method

.method blacklist Creates([I)Landroid/os/epic/IEpicObject;
    .locals 2
    .param p1, "scenario_id_list"    # [I

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "ret":Landroid/os/epic/IEpicObject;
    iget-object v1, p0, Landroid/os/epic/EpicManager;->mService:Landroid/os/epic/IEpicManager;

    if-nez v1, :cond_0

    .line 64
    return-object v0

    .line 67
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/epic/IEpicManager;->Creates([I)Landroid/os/epic/IEpicObject;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 70
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 72
    :goto_0
    return-object v0
.end method
