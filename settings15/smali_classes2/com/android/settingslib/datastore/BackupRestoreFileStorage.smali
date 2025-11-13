.class public abstract Lcom/android/settingslib/datastore/BackupRestoreFileStorage;
.super Lcom/android/settingslib/datastore/BackupRestoreStorage;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final storageFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settingslib/datastore/BackupRestoreStorage;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/datastore/BackupRestoreFileStorage;->storageFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createBackupRestoreEntities()Ljava/util/List;
    .locals 0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public abstract getBackupFile()Ljava/io/File;
.end method

.method public abstract onRestoreFinished(Ljava/io/File;)V
.end method
