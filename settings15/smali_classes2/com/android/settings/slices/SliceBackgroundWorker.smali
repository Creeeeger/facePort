.class public abstract Lcom/android/settings/slices/SliceBackgroundWorker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final LIVE_WORKERS:Ljava/util/Map;


# instance fields
.field public mCachedResults:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/slices/SliceBackgroundWorker;->LIVE_WORKERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public static getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;
    .locals 1

    sget-object v0, Lcom/android/settings/slices/SliceBackgroundWorker;->LIVE_WORKERS:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/slices/SliceBackgroundWorker;

    return-object p0
.end method


# virtual methods
.method public final notifySliceChange()V
    .locals 9

    invoke-static {}, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->-$$Nest$smgetInstance()Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->mLastUpdateTimeLookup:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settings/slices/SliceBackgroundWorker;->mUri:Landroid/net/Uri;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, p0, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p0, v5, v3

    const-wide/16 v2, 0x12c

    if-nez p0, :cond_1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    cmp-long p0, v7, v2

    if-lez p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    add-long/2addr v5, v2

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public abstract onSlicePinned()V
.end method

.method public abstract onSliceUnpinned()V
.end method

.method public onWifiStateChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method
