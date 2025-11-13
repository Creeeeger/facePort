.class public final Lcom/samsung/android/settings/eternal/data/EpisodeHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBackupInfo:Lcom/samsung/android/settings/eternal/data/BackupInfo;

.field public final mBackupSceneMap:Ljava/util/HashMap;

.field public final mGeneralInfoList:Ljava/util/List;

.field public final mRestoreResultMap:Ljava/util/HashMap;

.field public final mSourceInfoMap:Ljava/util/HashMap;

.field public final mSupplierInfo:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mRestoreResultMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSourceInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mGeneralInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mSupplierInfo:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final hasRestoreResult()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mRestoreResultMap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final putBackupSceneList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/data/EpisodeHolder;->mBackupSceneMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method
