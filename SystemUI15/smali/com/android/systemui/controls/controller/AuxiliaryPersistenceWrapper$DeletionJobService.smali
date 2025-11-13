.class public final Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;
.super Landroid/app/job/JobService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService$Companion;

.field public static final DELETE_FILE_JOB_ID:I

.field public static final USER:Ljava/lang/String;

.field public static final WEEK_IN_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->Companion:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService$Companion;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->DELETE_FILE_JOB_ID:I

    const-string v0, "USER"

    sput-object v0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->USER:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->WEEK_IN_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final attachContext(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/job/JobService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper$DeletionJobService;->USER:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sget-object v1, Lcom/android/systemui/backup/BackupHelper;->Companion:Lcom/android/systemui/backup/BackupHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/backup/BackupHelper;->controlsDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/systemui/settings/UserFileManagerImpl;->Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    const-string v3, "aux_controls_favorites.xml"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/job/JobService;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
