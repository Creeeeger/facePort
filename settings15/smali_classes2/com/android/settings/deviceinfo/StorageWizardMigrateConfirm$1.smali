.class public final Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SPEED_ESTIMATE_BPS:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSizeBytes:J

.field public final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->SPEED_ESTIMATE_BPS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mSizeBytes:J

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, [Ljava/lang/Void;

    const-string p1, "Measuring size of "

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mSizeBytes:J

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    const-string v3, "MigrateEstimateTask"

    if-nez p0, :cond_1

    const-string p0, "Failed to find current primary storage"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v2, p0, v6}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v7

    add-long/2addr v0, v7

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v5, :cond_2

    invoke-virtual {v6}, Landroid/app/usage/ExternalStorageStats;->getObbBytes()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "Failed to measure"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v4
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mSizeBytes:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-wide v4, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->SPEED_ESTIMATE_BPS:J

    div-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->mSizeBytes:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const p1, 0x7f142db2

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    return-void
.end method
