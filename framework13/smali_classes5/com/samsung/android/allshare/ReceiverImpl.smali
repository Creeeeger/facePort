.class Lcom/samsung/android/allshare/ReceiverImpl;
.super Lcom/samsung/android/allshare/media/Receiver;
.source "ReceiverImpl.java"


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "ReceiverImpl"


# instance fields
.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field blacklist mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private blacklist mIsSubscribed:Z

.field private blacklist mProgressUpdateListener:Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

.field private blacklist mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

.field blacklist mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgressUpdateListener(Lcom/samsung/android/allshare/ReceiverImpl;)Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReceiverResponseListener(Lcom/samsung/android/allshare/ReceiverImpl;)Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .locals 2
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/Receiver;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    .line 61
    new-instance v0, Lcom/samsung/android/allshare/ReceiverImpl$1;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ReceiverImpl$1;-><init>(Lcom/samsung/android/allshare/ReceiverImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 116
    new-instance v0, Lcom/samsung/android/allshare/ReceiverImpl$2;

    .line 117
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ReceiverImpl$2;-><init>(Lcom/samsung/android/allshare/ReceiverImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 51
    if-nez p1, :cond_0

    .line 53
    const-string v0, "ReceiverImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 59
    return-void
.end method

.method private blacklist itemHandling(Lcom/samsung/android/allshare/Item;Ljava/lang/String;)V
    .locals 6
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;
    .param p2, "actionID"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "com.sec.android.allshare.action.ACTION_RECEIVER_RECEIVE_BY_ITEM"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 248
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 249
    .local v0, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {v0, p2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 251
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v2, "bundle":Landroid/os/Bundle;
    instance-of v3, p1, Lcom/samsung/android/allshare/AudioItemImpl;

    const-string v4, "BUNDLE_PARCELABLE_ITEM"

    if-eqz v3, :cond_1

    .line 253
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/allshare/AudioItemImpl;

    .line 254
    invoke-virtual {v1}, Lcom/samsung/android/allshare/AudioItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 253
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 255
    :cond_1
    instance-of v3, p1, Lcom/samsung/android/allshare/VideoItemImpl;

    if-eqz v3, :cond_2

    .line 256
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/allshare/VideoItemImpl;

    .line 257
    invoke-virtual {v1}, Lcom/samsung/android/allshare/VideoItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 256
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 258
    :cond_2
    instance-of v3, p1, Lcom/samsung/android/allshare/ImageItemImpl;

    if-eqz v3, :cond_3

    .line 259
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/allshare/ImageItemImpl;

    .line 260
    invoke-virtual {v1}, Lcom/samsung/android/allshare/ImageItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 259
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    invoke-virtual {v3, v5}, Lcom/samsung/android/allshare/Item$ContentBuildType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 262
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 263
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object v1, p1

    check-cast v1, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 265
    invoke-interface {v1}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 264
    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 268
    iget-object v1, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v3, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p1, v3}, Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;->onReceiveResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 270
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v3, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v1, p1, v3}, Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;->onCancelResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ReceiverImpl;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 276
    iget-object v1, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v1, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 277
    return-void

    .line 239
    .end local v0    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_6
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;->onReceiveResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_2

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;->onCancelResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/ERROR;)V

    .line 245
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist cancel(Lcom/samsung/android/allshare/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;

    .line 199
    const-string v0, "com.sec.android.allshare.action.ACTION_RECEIVER_CANCEL_BY_ITEM"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/allshare/ReceiverImpl;->itemHandling(Lcom/samsung/android/allshare/Item;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getID()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 231
    const-string v0, ""

    return-object v0

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .line 162
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 163
    return-object v0

    .line 164
    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "typeStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 166
    return-object v0

    .line 168
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    .line 170
    .local v2, "type":Lcom/samsung/android/allshare/Item$MediaType;
    sget-object v3, Lcom/samsung/android/allshare/ReceiverImpl$3;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 178
    return-object v0

    .line 176
    :pswitch_0
    new-instance v0, Lcom/samsung/android/allshare/VideoItemImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 174
    :pswitch_1
    new-instance v0, Lcom/samsung/android/allshare/ImageItemImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 172
    :pswitch_2
    new-instance v0, Lcom/samsung/android/allshare/AudioItemImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist getItemType(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item$MediaType;
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .line 183
    if-nez p1, :cond_0

    .line 184
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0

    .line 185
    :cond_0
    const-string v0, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "typeStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 187
    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v1

    .line 189
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v1

    return-object v1
.end method

.method public blacklist receive(Lcom/samsung/android/allshare/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;

    .line 194
    const-string v0, "com.sec.android.allshare.action.ACTION_RECEIVER_RECEIVE_BY_ITEM"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/allshare/ReceiverImpl;->itemHandling(Lcom/samsung/android/allshare/Item;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public blacklist removeEventHandler()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v1, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 288
    invoke-virtual {v1}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 287
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    .line 290
    return-void
.end method

.method public blacklist setProgressUpdateEventListener(Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;)V
    .locals 4
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

    .line 204
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mProgressUpdateListener:Lcom/samsung/android/allshare/media/Receiver$IProgressUpdateEventListener;

    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 213
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 212
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 215
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 217
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 216
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mIsSubscribed:Z

    .line 222
    :cond_2
    :goto_0
    return-void

    .line 205
    :cond_3
    :goto_1
    const-string v0, "ReceiverImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public blacklist setReceiverResponseListener(Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    .line 226
    iput-object p1, p0, Lcom/samsung/android/allshare/ReceiverImpl;->mReceiverResponseListener:Lcom/samsung/android/allshare/media/Receiver$IReceiverResponseListener;

    .line 227
    return-void
.end method
