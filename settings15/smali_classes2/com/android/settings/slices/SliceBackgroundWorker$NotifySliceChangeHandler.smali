.class public final Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sHandler:Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;


# instance fields
.field public final mLastUpdateTimeLookup:Ljava/util/Map;


# direct methods
.method public static -$$Nest$smgetInstance()Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;
    .locals 3

    sget-object v0, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->sHandler:Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotifySliceChangeHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->sHandler:Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;

    :cond_0
    sget-object v0, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->sHandler:Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->mLastUpdateTimeLookup:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/slices/SliceBackgroundWorker;

    iget-object v0, p1, Lcom/android/settings/slices/SliceBackgroundWorker;->mUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/settings/slices/SliceBackgroundWorker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->mLastUpdateTimeLookup:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
