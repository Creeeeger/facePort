.class public abstract Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;


# instance fields
.field public final mCacheSize:I

.field public mIndex:I

.field public final mIndexLimit:I

.field public final mMax:D

.field public final mMin:D

.field public mNeedRefresh:Z

.field public mRewind:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    const v0, 0x1869f

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndexLimit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    iput-wide p3, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->onCreate()V

    return-void
.end method


# virtual methods
.method public abstract onCreate()V
.end method
