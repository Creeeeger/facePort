.class public abstract Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;
.super Ljava/lang/Object;
.source "WifiQoSScoredCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifitrackerlib/WifiQoSScoredCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemCacheListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract networkCacheUpdated()V
.end method

.method post()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener$1;-><init>(Lcom/samsung/wifitrackerlib/WifiQoSScoredCache$SemCacheListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
