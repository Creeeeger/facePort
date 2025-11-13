.class public final Lcom/android/settingslib/media/LocalMediaManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/media/LocalMediaManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager$Receiver;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settingslib/media/LocalMediaManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager$Receiver;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager$Receiver;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager$Receiver;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p2, p2, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/media/MediaDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager$Receiver;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_1
    return-void
.end method
