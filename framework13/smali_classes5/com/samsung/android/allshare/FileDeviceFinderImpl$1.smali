.class Lcom/samsung/android/allshare/FileDeviceFinderImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "FileDeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FileDeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/FileDeviceFinderImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 12
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 104
    const-string v0, "[REMOVED] Exception"

    const-string v1, "FileDeviceFinderImpl"

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getEventID()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "evt_id":Ljava/lang/String;
    const/4 v3, 0x0

    .line 109
    .local v3, "listener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->-$$Nest$fgetmDiscoveryListenerMap(Lcom/samsung/android/allshare/FileDeviceFinderImpl;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "mEventHandler.handleEventMessage : Exception"

    invoke-static {v1, v5, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 114
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->-$$Nest$sfgetmDeviceEventToDeviceTypeMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device$DeviceType;

    .line 115
    .local v4, "deviceType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 116
    .local v5, "msgBundle":Landroid/os/Bundle;
    const-string v6, "BUNDLE_STRING_TYPE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "eventType":Ljava/lang/String;
    const-string v7, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 119
    .local v7, "deviceBundle":Landroid/os/Bundle;
    if-nez v7, :cond_0

    .line 120
    const-string v0, "mEventHandler.handleEventMessage : deviceBundle is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 124
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-static {v8, v7, v4}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->-$$Nest$mgetDeviceFromMap(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v8

    .line 125
    .local v8, "device":Lcom/samsung/android/allshare/Device;
    if-nez v8, :cond_1

    .line 126
    const-string v0, "mEventHandler.handleEventMessage : device is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 130
    :cond_1
    const-string v9, "ADDED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 132
    if-eqz v3, :cond_2

    .line 133
    :try_start_1
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v4, v8, v0}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ADDED] "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .local v0, "err":Ljava/lang/Error;
    const-string v9, "[ADDED] Error"

    invoke-static {v1, v9, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .end local v0    # "err":Ljava/lang/Error;
    goto :goto_1

    .line 136
    :catch_2
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "[ADDED] Exception"

    invoke-static {v1, v9, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    goto :goto_3

    .line 141
    :cond_3
    const-string v9, "REMOVED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 143
    :try_start_2
    iget-object v9, p0, Lcom/samsung/android/allshare/FileDeviceFinderImpl$1;->this$0:Lcom/samsung/android/allshare/FileDeviceFinderImpl;

    invoke-static {v9, v7, v4}, Lcom/samsung/android/allshare/FileDeviceFinderImpl;->-$$Nest$mremoveDeviceFromMap(Lcom/samsung/android/allshare/FileDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V

    .line 144
    const-string v9, "BUNDLE_ENUM_ERROR"

    .line 145
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-static {v9}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v9

    .line 146
    .local v9, "error":Lcom/samsung/android/allshare/ERROR;
    if-eqz v3, :cond_4

    .line 147
    invoke-interface {v3, v4, v8, v9}, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V

    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[REMOVED] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 152
    .end local v9    # "error":Lcom/samsung/android/allshare/ERROR;
    :catch_3
    move-exception v9

    .line 153
    .local v9, "err":Ljava/lang/Error;
    invoke-static {v1, v0, v9}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .end local v9    # "err":Ljava/lang/Error;
    goto :goto_2

    .line 150
    :catch_4
    move-exception v9

    .line 151
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v9}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    nop

    .line 159
    :goto_3
    return-void

    .line 156
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mEventHandler.handleEventMessage : eventType="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
