.class public Landroid/app/PropertyInvalidatedCache;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PropertyInvalidatedCache$DefaultComputer;,
        Landroid/app/PropertyInvalidatedCache$QueryHandler;,
        Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;,
        Landroid/app/PropertyInvalidatedCache$AutoCorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Query:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist MODULE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final blacklist MODULE_SYSTEM:Ljava/lang/String; = "system_server"

.field public static final blacklist MODULE_TELEPHONY:Ljava/lang/String; = "telephony"

.field public static final blacklist MODULE_TEST:Ljava/lang/String; = "test"

.field static final blacklist NAME_CONTAINS:Ljava/lang/String; = "-name-has="

.field static final blacklist NAME_LIKE:Ljava/lang/String; = "-name-like="

.field private static final blacklist NONCE_BYPASS:I = 0x3

.field private static final blacklist NONCE_CORKED:I = 0x2

.field private static final blacklist NONCE_DISABLED:I = 0x1

.field private static final blacklist NONCE_UNSET:I = 0x0

.field static final blacklist PROPERTY_CONTAINS:Ljava/lang/String; = "-property-has="

.field private static final blacklist PROPERTY_FAILURE_RETRY_DELAY_MILLIS:I = 0xc8

.field private static final blacklist PROPERTY_FAILURE_RETRY_LIMIT:I = 0x5

.field static final blacklist PROPERTY_LIKE:Ljava/lang/String; = "-property-like="

.field private static final blacklist TAG:Ljava/lang/String; = "PropertyInvalidatedCache"

.field private static final blacklist VERIFY:Z

.field private static final blacklist sCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/PropertyInvalidatedCache;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorkLock:Ljava/lang/Object;

.field private static final blacklist sCorkedInvalidates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sCorks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sDisabledKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sEnabled:Z

.field private static final blacklist sGlobalLock:Ljava/lang/Object;

.field private static final blacklist sInvalidates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNonceName:[Ljava/lang/String;

.field private static volatile blacklist sTesting:Z

.field private static final blacklist sTestingPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private final blacklist mCacheName:Ljava/lang/String;

.field private blacklist mClears:J

.field private blacklist mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;"
        }
    .end annotation
.end field

.field private blacklist mDisabled:Z

.field private blacklist mHighWaterMark:J

.field private blacklist mHits:J

.field private blacklist mLastSeenNonce:J

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMaxEntries:I

.field private blacklist mMissOverflow:J

.field private blacklist mMisses:J

.field private volatile blacklist mPropertyHandle:Landroid/os/SystemProperties$Handle;

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mSkips:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I
    .locals 0

    iget p0, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCorkLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCorkedInvalidates()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-string v0, "corked"

    const-string v1, "bypass"

    const-string/jumbo v2, "unset"

    const-string v3, "disabled"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sNonceName:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    iput-object p2, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    iput p1, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    new-instance v0, Landroid/app/PropertyInvalidatedCache$DefaultComputer;

    invoke-direct {v0, p0}, Landroid/app/PropertyInvalidatedCache$DefaultComputer;-><init>(Landroid/app/PropertyInvalidatedCache;)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/app/PropertyInvalidatedCache$QueryHandler<",
            "TQuery;TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    const/4 v2, 0x4

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    invoke-static {p2, p3}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    iput p1, p0, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    iput-object p5, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->createMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->registerCache()V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static blacklist anyDetailed([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, "-name-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-name-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-has="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-property-like="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private static blacklist chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist corkInvalidations(Ljava/lang/String;)V
    .locals 8

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonce(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    invoke-static {p0, v2, v3}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V

    :cond_1
    goto :goto_0

    :cond_2
    sget-object v6, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, p0, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist createMap()Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "TQuery;TResult;>;"
        }
    .end annotation

    new-instance v0, Landroid/app/PropertyInvalidatedCache$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Landroid/app/PropertyInvalidatedCache$1;-><init>(Landroid/app/PropertyInvalidatedCache;IFZ)V

    return-object v0
.end method

.method public static blacklist createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_3

    if-lez v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0x5f

    aput-char v6, v2, v3

    move v3, v5

    :cond_2
    add-int/lit8 v5, v3, 0x1

    aget-char v6, v0, v4

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    aput-char v6, v2, v3

    move v3, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v3, 0x1

    aget-char v6, v0, v4

    aput-char v6, v2, v3

    move v3, v5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid api name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache_key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist disableForCurrentProcess(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist disableForTestMode()V
    .locals 2

    const-string v0, "PropertyInvalidatedCache"

    const-string v1, "disabling all caches in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    return-void
.end method

.method private static final blacklist disableLocal(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    iget-object v3, v2, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    :cond_1
    goto :goto_0

    :cond_2
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist disableSystemWide(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V

    return-void
.end method

.method public static blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, p1}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "PropertyInvalidatedCache"

    const-string v4, "Failed to dump PropertyInvalidatedCache instances"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static blacklist dumpCacheInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "  Caching is disabled in this process."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/app/PropertyInvalidatedCache;->anyDetailed([Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->dumpCorkInfo(Ljava/io/PrintWriter;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PropertyInvalidatedCache;

    invoke-direct {v3, p0, v0, p1}, Landroid/app/PropertyInvalidatedCache;->dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist dumpContents(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz p2, :cond_0

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Landroid/app/PropertyInvalidatedCache;->showDetailed([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    move-object/from16 v3, p3

    :cond_1
    sget-object v4, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v7, v1, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    const-string v0, "  Cache Name: %s"

    invoke-virtual/range {p0 .. p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Property: %s"

    iget-object v4, v1, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v4, 0x2

    aget-wide v10, v0, v4

    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v12, 0x0

    aget-wide v13, v0, v12

    add-long/2addr v10, v13

    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v13, 0x1

    aget-wide v14, v0, v13

    add-long/2addr v10, v14

    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v14, 0x3

    aget-wide v15, v0, v14

    add-long/2addr v10, v15

    const-string v0, "    Hits: %d, Misses: %d, Skips: %d, Clears: %d"

    iget-wide v13, v1, Landroid/app/PropertyInvalidatedCache;->mHits:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v17, v5

    :try_start_2
    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v7

    :try_start_3
    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mClears:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v13, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Skip-corked: %d, Skip-unset: %d, Skip-bypass: %d, Skip-other: %d"

    iget-object v4, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    aget-wide v5, v5, v12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, v1, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    const/4 v12, 0x1

    aget-wide v12, v7, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Nonce: 0x%016x, Invalidates: %d, CorkedInvalidates: %d"

    iget-wide v4, v1, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Current Size: %d, Max Size: %d, HW Mark: %d, Overflows: %d"

    iget-object v4, v1, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Landroid/app/PropertyInvalidatedCache;->mMaxEntries:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v1, Landroid/app/PropertyInvalidatedCache;->mHighWaterMark:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v12, v1, Landroid/app/PropertyInvalidatedCache;->mMissOverflow:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enabled: %s"

    iget-boolean v4, v1, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-eqz v4, :cond_2

    const-string v4, "false"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "true"

    :goto_0
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p2, :cond_3

    monitor-exit v14

    return-void

    :cond_3
    iget-object v0, v1, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_4

    monitor-exit v14

    return-void

    :cond_4
    const-string v4, "    Contents:"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "      Key: %s\n      Value: %s\n"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    move-object v14, v7

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide/from16 v17, v5

    move-object v14, v7

    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method private static blacklist dumpCorkInfo(Ljava/io/PrintWriter;)V
    .locals 5

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCorks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "  Corking Status:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "    Property Name: %s Count: %d"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static blacklist getActiveCaches()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/PropertyInvalidatedCache;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static blacklist getActiveCorks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getCurrentNonce()J
    .locals 4

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyHandle:Landroid/os/SystemProperties$Handle;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->find(Ljava/lang/String;)Landroid/os/SystemProperties$Handle;

    move-result-object v0

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyHandle:Landroid/os/SystemProperties$Handle;

    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/os/SystemProperties$Handle;->getLong(J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist getNonce(Ljava/lang/String;)J
    .locals 4

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Landroid/app/PropertyInvalidatedCache;->sCorkedInvalidates:Ljava/util/HashMap;

    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_1
    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCacheLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist invalidateCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Landroid/app/PropertyInvalidatedCache;->createPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist invalidateCacheLocked(Ljava/lang/String;)V
    .locals 9

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->getNonce(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->next()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0, v4, v5}, Landroid/app/PropertyInvalidatedCache;->setNonce(Ljava/lang/String;J)V

    sget-object v6, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Landroid/app/PropertyInvalidatedCache;->sInvalidates:Ljava/util/HashMap;

    add-long/2addr v2, v6

    move-wide v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static blacklist isReservedNonce(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;TResult;)TResult;"
        }
    .end annotation

    return-object p2
.end method

.method public static blacklist onTrimMemory()V
    .locals 3

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->getActiveCaches()Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist registerCache()V
    .locals 3

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableInstance()V

    :cond_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCaches:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist setNonce(Ljava/lang/String;J)V
    .locals 5

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_2

    const-string v2, "PropertyInvalidatedCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nonce set after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v2

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    const-wide/16 v3, 0xc8

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    throw v0
.end method

.method public static blacklist setTestMode(Z)V
    .locals 2

    sput-boolean p0, Landroid/app/PropertyInvalidatedCache;->sTesting:Z

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist showDetailed([Ljava/lang/String;)Z
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const-string v4, "-name-has="

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->cacheName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-name-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    const-string v5, "-property-has="

    invoke-static {v3, v5, v4, v6}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    const-string v5, "-property-like="

    invoke-static {v3, v5, v4, v1}, Landroid/app/PropertyInvalidatedCache;->chooses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v6

    :cond_2
    return v1
.end method

.method private static blacklist testPropertyName(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sTestingPropertyMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist uncorkInvalidations(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sCorkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    if-ne v1, v2, :cond_1

    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroid/app/PropertyInvalidatedCache;->invalidateCacheLocked(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/app/PropertyInvalidatedCache;->sCorks:Ljava/util/HashMap;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cork underflow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist bypass(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->shouldBypassCache(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final blacklist cacheName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist clear()V
    .locals 5

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/app/PropertyInvalidatedCache;->mClears:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist disableForCurrentProcess()V
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal(Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist disableInstance()V
    .locals 2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist disableLocal()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->disableForCurrentProcess()V

    return-void
.end method

.method public final blacklist disableSystemWide()V
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->disableSystemWide(Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist forgetDisableLocal()V
    .locals 3

    sget-object v0, Landroid/app/PropertyInvalidatedCache;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/PropertyInvalidatedCache;->sDisabledKeys:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDisabledState()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public blacklist invalidateCache()V
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public final blacklist isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/app/PropertyInvalidatedCache;->sEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final blacklist propertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->isDisabled()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->bypass(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x3

    :cond_1
    :goto_1
    invoke-static {v3, v4}, Landroid/app/PropertyInvalidatedCache;->isReservedNonce(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/app/PropertyInvalidatedCache;->mDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mSkips:[J

    long-to-int v6, v3

    aget-wide v7, v5, v6

    add-long/2addr v7, v1

    aput-wide v7, v5, v6

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    add-long/2addr v6, v1

    iput-wide v6, p0, Landroid/app/PropertyInvalidatedCache;->mHits:J

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache;->clear()V

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    const/4 v5, 0x0

    :cond_5
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v5, :cond_a

    invoke-virtual {p0, v5, p1}, Landroid/app/PropertyInvalidatedCache;->refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v5, :cond_9

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache;->getCurrentNonce()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-eqz v8, :cond_6

    move-wide v3, v6

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v2, v3, v8

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_9
    invoke-direct {p0, p1, v5}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/PropertyInvalidatedCache;->recompute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mLastSeenNonce:J

    cmp-long v0, v8, v3

    if-nez v0, :cond_b

    if-eqz v6, :cond_b

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    add-long/2addr v8, v1

    iput-wide v8, p0, Landroid/app/PropertyInvalidatedCache;->mMisses:J

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-direct {p0, p1, v6}, Landroid/app/PropertyInvalidatedCache;->maybeCheckConsistency(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method protected blacklist queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQuery;)TResult;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mComputer:Landroid/app/PropertyInvalidatedCache$QueryHandler;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache$QueryHandler;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist refresh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TQuery;)TResult;"
        }
    .end annotation

    return-object p1
.end method

.method public blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TResult;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist size()I
    .locals 2

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache;->mCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist testPropertyName()V
    .locals 1

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->testPropertyName(Ljava/lang/String;)V

    return-void
.end method
