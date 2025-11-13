.class Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryCommitResult"
.end annotation


# instance fields
.field final blacklist keysCleared:Z

.field final greylist-max-o keysModified:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mapToWriteToDisk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o memoryStateGeneration:J

.field greylist-max-o wasWritten:Z

.field volatile greylist-max-o writeToDiskResult:Z

.field final greylist-max-o writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor blacklist <init>(JZLjava/util/List;Ljava/util/Set;Ljava/util/Map;)V
    .locals 2
    .param p1, "memoryStateGeneration"    # J
    .param p3, "keysCleared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 394
    .local p4, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .local p6, "mapToWriteToDisk":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    .line 389
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->wasWritten:Z

    .line 395
    iput-wide p1, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->memoryStateGeneration:J

    .line 396
    iput-boolean p3, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysCleared:Z

    .line 397
    iput-object p4, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->keysModified:Ljava/util/List;

    .line 398
    iput-object p5, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->listeners:Ljava/util/Set;

    .line 399
    iput-object p6, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    .line 400
    return-void
.end method

.method synthetic constructor blacklist <init>(JZLjava/util/List;Ljava/util/Set;Ljava/util/Map;Landroid/app/SharedPreferencesImpl$MemoryCommitResult-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>(JZLjava/util/List;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method greylist-max-o setDiskWriteResult(ZZ)V
    .locals 1
    .param p1, "wasWritten"    # Z
    .param p2, "result"    # Z

    .line 403
    iput-boolean p1, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->wasWritten:Z

    .line 404
    iput-boolean p2, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    .line 405
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 406
    return-void
.end method
