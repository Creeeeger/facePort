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
.field public static final blacklist TYPE_LOCATION_AVAILABLE:I = 0x1

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
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .line 383
    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->this$0:Lcom/samsung/android/location/SemLocationManager;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationListener$Stub;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    .line 386
    new-instance v0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;-><init>(Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;Lcom/samsung/android/location/SemLocationManager;)V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 392
    return-void
.end method

.method private blacklist _handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 435
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 440
    :pswitch_0
    const/4 v0, 0x0

    .line 441
    .local v0, "loc":Landroid/location/Location;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/location/Location;

    .line 444
    :cond_0
    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 446
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "currentlocationaddress"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/location/Address;

    .line 447
    .local v1, "address":Landroid/location/Address;
    goto :goto_0

    .line 448
    .end local v1    # "address":Landroid/location/Address;
    :cond_1
    new-instance v1, Landroid/location/Address;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 450
    .restart local v1    # "address":Landroid/location/Address;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/location/SemLocationListener;->onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V

    goto :goto_1

    .line 437
    .end local v0    # "loc":Landroid/location/Location;
    .end local v1    # "address":Landroid/location/Address;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/samsung/android/location/SemLocationListener;->onLocationAvailable([Landroid/location/Location;)V

    .line 438
    nop

    .line 453
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist sendCallbackMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 424
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->this$0:Lcom/samsung/android/location/SemLocationManager;

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->mListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCallbackMessage removeLocationUpdates occur exception "

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

    .line 429
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist onLocationAvailable([Landroid/location/Location;)V
    .locals 2
    .param p1, "locations"    # [Landroid/location/Location;

    .line 395
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 397
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    invoke-direct {p0, v0}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->sendCallbackMessage(Landroid/os/Message;)V

    .line 399
    return-void
.end method

.method public blacklist onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "address"    # Landroid/location/Address;

    .line 408
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 410
    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 412
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 413
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 415
    :cond_0
    const-string v2, "currentlocationaddress"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    invoke-virtual {p1, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 418
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_1
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 419
    invoke-direct {p0, v0}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->sendCallbackMessage(Landroid/os/Message;)V

    .line 420
    return-void
.end method
