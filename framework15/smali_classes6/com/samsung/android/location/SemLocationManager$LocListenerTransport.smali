.class Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
.super Lcom/samsung/android/location/ISLocationListener$Stub;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/SemLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocListenerTransport"
.end annotation


# static fields
.field public static final blacklist TYPE_LOCATION_CHANGED_ADDRESS:I = 0x2


# instance fields
.field private blacklist mListener:Lcom/samsung/android/location/SemLocationListener;

.field private final blacklist mListenerHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$m_handleMessage(Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->this$0:Lcom/samsung/android/location/SemLocationManager;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    new-instance v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;-><init>(Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;Lcom/samsung/android/location/SemLocationManager;)V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist _handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/samsung/android/location/SemLocationListener;->onLocationChanged(Landroid/location/Location;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist sendCallbackMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->this$0:Lcom/samsung/android/location/SemLocationManager;

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCallbackMessage removeLocationUpdates occur exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemLocationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist onLocationChanged(Landroid/location/Location;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->sendCallbackMessage(Landroid/os/Message;)V

    return-void
.end method
