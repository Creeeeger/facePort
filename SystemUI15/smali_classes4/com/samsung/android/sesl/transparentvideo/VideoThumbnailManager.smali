.class public final Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;

.field public static final thumbnails:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;

    invoke-direct {v0}, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;->INSTANCE:Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sesl/transparentvideo/VideoThumbnailManager;->thumbnails:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
