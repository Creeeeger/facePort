.class public final Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/media/MediaOutputIndicatorWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;->this$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/media/MediaOutputIndicatorWorker$DevicesChangedBroadcastReceiver;->this$0:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    :cond_0
    return-void
.end method
