.class public final Lcom/android/systemui/communal/data/backup/CommunalBackupHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# instance fields
.field public final communalBackupUtils:Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper;->userHandle:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper;->communalBackupUtils:Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;

    return-void
.end method


# virtual methods
.method public final performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    const-string p0, "CommunalBackupHelper"

    const-string p1, "Skipping backup. Communal not enabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 4

    const-string v0, "CommunalBackupHelper"

    if-nez p1, :cond_0

    const-string p0, "Restore failed. Data is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "Restore skipped for non-system user"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "communal_hub_state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Restore skipped due to mismatching entity key"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3, v1}, Landroid/app/backup/BackupDataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/communal/data/backup/CommunalBackupHelper;->communalBackupUtils:Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/systemui/communal/data/backup/CommunalBackupUtils;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "communal_restore"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "Restore complete"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Restore failed while writing to disk: "

    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Restore failed while reading data: "

    invoke-static {p1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method
