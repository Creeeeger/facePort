.class public final Landroidx/compose/ui/text/font/AsyncTypefaceCache;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

.field public final permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

.field public final resultCache:Landroidx/compose/ui/text/caches/LruCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/ui/text/caches/LruCache;

    invoke-direct {v0}, Landroidx/compose/ui/text/caches/LruCache;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    new-instance v0, Landroidx/compose/ui/text/caches/SimpleArrayMap;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object v1, v0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->hashes:[I

    sget-object v1, Landroidx/compose/ui/text/caches/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v1, v0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->keyValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/compose/ui/text/caches/SimpleArrayMap;->_size:I

    iput-object v0, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->permanentCache:Landroidx/compose/ui/text/caches/SimpleArrayMap;

    new-instance v0, Landroidx/compose/ui/text/platform/SynchronizedObject;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->cacheLock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    return-void
.end method
