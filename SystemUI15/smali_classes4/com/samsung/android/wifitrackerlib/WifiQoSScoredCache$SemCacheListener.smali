.class public abstract Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract networkCacheUpdated()V
.end method
