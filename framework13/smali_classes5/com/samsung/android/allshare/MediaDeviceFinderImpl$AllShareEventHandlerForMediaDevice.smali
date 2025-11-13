.class Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "MediaDeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/MediaDeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AllShareEventHandlerForMediaDevice"
.end annotation


# instance fields
.field private blacklist mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/allshare/MediaDeviceFinderImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "mdfi"    # Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 13
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 140
    const-string v0, "[REMOVED] Exception"

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getEventID()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "evt_id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 143
    .local v2, "listener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    .line 144
    .local v3, "mdfi":Lcom/samsung/android/allshare/MediaDeviceFinderImpl;
    const-string v4, "MediaDeviceFinderImpl"

    if-nez v3, :cond_0

    .line 145
    const-string v0, "mEventHandler.handleEventMessage : mWeakRef is null"

    invoke-static {v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 151
    :cond_0
    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->-$$Nest$fgetmDiscoveryListenerMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v5

    .line 153
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "mEventHandler.handleEventMessage : Exception"

    invoke-static {v4, v6, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 156
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->-$$Nest$sfgetmDeviceEventToDeviceTypeMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device$DeviceType;

    .line 157
    .local v5, "deviceType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 158
    .local v6, "msgBundle":Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_TYPE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "eventType":Ljava/lang/String;
    const-string v8, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 161
    .local v8, "deviceBundle":Landroid/os/Bundle;
    if-nez v8, :cond_1

    .line 162
    const-string v0, "mEventHandler.handleEventMessage : deviceBundle is null"

    invoke-static {v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void

    .line 166
    :cond_1
    invoke-static {v3, v8, v5}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->-$$Nest$mgetDeviceFromMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v9

    .line 167
    .local v9, "device":Lcom/samsung/android/allshare/Device;
    if-nez v9, :cond_2

    .line 168
    const-string v0, "mEventHandler.handleEventMessage : device is null"

    invoke-static {v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void

    .line 172
    :cond_2
    const-string v10, "ADDED"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 174
    if-eqz v2, :cond_3

    .line 175
    :try_start_1
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v2, v5, v9, v0}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ADDED] "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .local v0, "err":Ljava/lang/Error;
    const-string v10, "[ADDED] Error"

    invoke-static {v4, v10, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .end local v0    # "err":Ljava/lang/Error;
    goto :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "[ADDED] Exception"

    invoke-static {v4, v10, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    goto :goto_3

    .line 183
    :cond_4
    const-string v10, "REMOVED"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 185
    :try_start_2
    invoke-static {v3, v8, v5}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->-$$Nest$mremoveDeviceFromMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V

    .line 186
    const-string v10, "BUNDLE_ENUM_ERROR"

    .line 187
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 186
    invoke-static {v10}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v10

    .line 188
    .local v10, "error":Lcom/samsung/android/allshare/ERROR;
    if-eqz v2, :cond_5

    .line 189
    invoke-interface {v2, v5, v9, v10}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    .line 190
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[REMOVED] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 194
    .end local v10    # "error":Lcom/samsung/android/allshare/ERROR;
    :catch_3
    move-exception v10

    .line 195
    .local v10, "err":Ljava/lang/Error;
    invoke-static {v4, v0, v10}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .end local v10    # "err":Ljava/lang/Error;
    goto :goto_2

    .line 192
    :catch_4
    move-exception v10

    .line 193
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v4, v0, v10}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    nop

    .line 201
    :goto_3
    return-void

    .line 198
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mEventHandler.handleEventMessage : eventType="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method
