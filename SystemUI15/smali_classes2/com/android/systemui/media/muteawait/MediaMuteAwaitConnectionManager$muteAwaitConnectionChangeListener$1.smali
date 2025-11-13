.class public final Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;
.super Landroid/media/AudioManager$MuteAwaitConnectionCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    invoke-direct {p0}, Landroid/media/AudioManager$MuteAwaitConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-static {v3, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v6, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceAdded$2;->INSTANCE:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceAdded$2;

    const/4 v7, 0x0

    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v8, "MediaMuteAwait"

    invoke-virtual {v0, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v6, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v2, v6, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-boolean v4, v6, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    invoke-virtual {v0, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iput-object p1, p2, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->deviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    iget-object v2, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/DeviceIconUtil;->getIconResIdFromAudioDeviceType(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object p1, p2, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-interface {p2, v0, p0, v1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceAdded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iget-object p1, p1, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->logger:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2, p3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v5, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceRemoved$2;->INSTANCE:Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger$logMutedDeviceRemoved$2;

    iget-object v0, v0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v6, "MediaMuteAwait"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v4, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v1, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-boolean v3, v5, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean p1, v5, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v0, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager$muteAwaitConnectionChangeListener$1;->this$0:Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;

    iput-object v7, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->currentMutedDevice:Landroid/media/AudioDeviceAttributes;

    iget-object p0, p0, Lcom/android/systemui/media/muteawait/MediaMuteAwaitConnectionManager;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-interface {p1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onAboutToConnectDeviceRemoved()V

    goto :goto_0

    :cond_0
    return-void
.end method
