.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupSchemeId;,
        Landroid/app/backup/FullBackup$BackupScheme;,
        Landroid/app/backup/FullBackup$ConfigSection;
    }
.end annotation


# static fields
.field public static final greylist-max-o APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final greylist-max-o APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final greylist-max-o CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final greylist-max-o CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final greylist-max-o DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final greylist-max-o DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final greylist-max-o DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final greylist-max-o DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final greylist-max-o DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final greylist-max-o DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final greylist-max-o DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final greylist-max-o FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field private static final blacklist FLAG_DISABLE_IF_NO_ENCRYPTION_CAPABILITIES:Ljava/lang/String; = "disableIfNoEncryptionCapabilities"

.field public static final greylist-max-o FLAG_REQUIRED_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "clientSideEncryption"

.field public static final greylist-max-o FLAG_REQUIRED_DEVICE_TO_DEVICE_TRANSFER:Ljava/lang/String; = "deviceToDeviceTransfer"

.field public static final greylist-max-o FLAG_REQUIRED_FAKE_CLIENT_SIDE_ENCRYPTION:Ljava/lang/String; = "fakeClientSideEncryption"

.field public static final greylist-max-o FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final greylist-max-o FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field private static final blacklist IGNORE_FULL_BACKUP_CONTENT_IN_D2D:J = 0xac2922cL

.field public static final greylist-max-o KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final blacklist MANAGED_EXTERNAL_SPECIFIC_TREE_RESTORE_TOKEN:Ljava/lang/String; = "ef_s"

.field public static final blacklist MANAGED_EXTERNAL_SPECIFIC_TREE_TOKEN:Ljava/lang/String; = "/storage/"

.field public static final greylist-max-o MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final greylist-max-o NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final greylist-max-o OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final greylist-max-o ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final greylist-max-o SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final greylist-max-o SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final greylist-max-o SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final greylist-max-o TAG:Ljava/lang/String; = "FullBackup"

.field static final greylist-max-o TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final greylist-max-o kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/backup/FullBackup$BackupSchemeId;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native greylist backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized blacklist getBackupScheme(Landroid/content/Context;I)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 4

    const-class v0, Landroid/app/backup/FullBackup;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/app/backup/FullBackup$BackupSchemeId;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/app/backup/FullBackup$BackupSchemeId;-><init>(Ljava/lang/String;I)V

    sget-object v2, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/FullBackup$BackupScheme;

    if-nez v2, :cond_0

    new-instance v3, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v3, p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    move-object v2, v3

    sget-object v3, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static greylist-max-o getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .locals 2

    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    return-object v0
.end method

.method public static greylist-max-o restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p8

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    if-ne v4, v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->mkdirs()Z

    :cond_0
    move-wide/from16 v11, p1

    goto/16 :goto_6

    :cond_1
    const/4 v5, 0x0

    const-string v6, "FullBackup"

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create/open file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    const/high16 v0, 0x10000

    new-array v7, v0, [B

    move-wide/from16 v8, p1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    move-wide/from16 v11, p1

    :goto_2
    cmp-long v0, v11, v2

    if-lez v0, :cond_7

    array-length v0, v7

    int-to-long v13, v0

    cmp-long v0, v11, v13

    if-lez v0, :cond_4

    array-length v0, v7

    goto :goto_3

    :cond_4
    long-to-int v0, v11

    :goto_3
    move v13, v0

    const/4 v0, 0x0

    invoke-virtual {v10, v7, v0, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v14

    if-gtz v14, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incomplete read: expected "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " but got "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v2, v8, v11

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    :try_start_1
    invoke-virtual {v5, v7, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write to file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->delete()Z

    move-object v5, v2

    :cond_6
    :goto_4
    int-to-long v2, v14

    sub-long/2addr v11, v2

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_7
    :goto_5
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_9

    if-eqz v1, :cond_9

    const-wide/16 v2, 0x1c0

    and-long v2, p4, v2

    :try_start_2
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    long-to-int v5, v2

    invoke-static {v0, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_7
    move-wide/from16 v5, p6

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_8

    :cond_9
    move-wide/from16 v5, p6

    move-wide/from16 v2, p4

    :goto_8
    return-void
.end method
