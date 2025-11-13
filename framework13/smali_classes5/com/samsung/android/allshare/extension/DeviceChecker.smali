.class public Lcom/samsung/android/allshare/extension/DeviceChecker;
.super Ljava/lang/Object;
.source "DeviceChecker.java"


# static fields
.field public static final whitelist AVPLAYER_AUDIO:Ljava/lang/String; = "AVPLAYER_AUDIO"

.field public static final whitelist AVPLAYER_VIDEO:Ljava/lang/String; = "AVPLAYER_VIDEO"

.field private static final blacklist KEY_UDN:Ljava/lang/String; = "udn"

.field private static final blacklist NIC_P2P:Ljava/lang/String; = "p2p-wlan0-0"

.field private static final blacklist NIC_WLAN:Ljava/lang/String; = "wlan0"

.field private static final blacklist PREFERENCE:Ljava/lang/String; = "AllShareMediaServer"

.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "DeviceChecker"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getDeviceCheckedList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 120
    .local p0, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 153
    .local p0, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "avPlayerType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 159
    .local p0, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const-string v0, "DeviceChecker"

    const-string v1, "getDeviceCheckedList()"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, "adaptiveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "wlanDeviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v3, "deviceUDN":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 166
    return-object v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "+"

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device;

    .line 169
    .local v5, "device":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

    if-eq v8, v9, :cond_8

    .line 170
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "p2p-wlan0-0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "AVPLAYER_AUDIO"

    const-string v10, "AVPLAYER_VIDEO"

    if-eqz v8, :cond_5

    .line 171
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "id":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 173
    .local v7, "point":I
    if-lez v7, :cond_1

    .line 174
    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 176
    :cond_1
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    if-eqz p2, :cond_3

    instance-of v6, v5, Lcom/samsung/android/allshare/media/AVPlayer;

    if-eqz v6, :cond_4

    .line 178
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/allshare/media/AVPlayer;

    .line 179
    invoke-virtual {v6}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportVideo()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/allshare/media/AVPlayer;

    .line 180
    invoke-virtual {v6}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAudio()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v7    # "point":I
    .end local v8    # "id":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 185
    :cond_5
    if-eqz p2, :cond_7

    instance-of v6, v5, Lcom/samsung/android/allshare/media/AVPlayer;

    if-eqz v6, :cond_8

    .line 186
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/allshare/media/AVPlayer;

    .line 187
    invoke-virtual {v6}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportVideo()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v6, v5

    check-cast v6, Lcom/samsung/android/allshare/media/AVPlayer;

    .line 188
    invoke-virtual {v6}, Lcom/samsung/android/allshare/media/AVPlayer;->isSupportAudio()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 189
    :cond_7
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v5    # "device":Lcom/samsung/android/allshare/Device;
    :cond_8
    :goto_1
    goto/16 :goto_0

    .line 194
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 195
    return-object v1

    .line 196
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 197
    return-object v2

    .line 200
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device;

    .line 201
    .restart local v5    # "device":Lcom/samsung/android/allshare/Device;
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v8

    .line 202
    .restart local v8    # "id":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 203
    .local v9, "point":I
    if-lez v9, :cond_c

    .line 204
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 205
    :cond_c
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 206
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v5    # "device":Lcom/samsung/android/allshare/Device;
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "point":I
    :cond_d
    goto :goto_2

    .line 209
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceCheckedList() with CONCURRENT_MODE count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v0, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-object v1
.end method

.method public static whitelist getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "avPlayerType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 137
    .local p0, "deviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ipAddr"    # Ljava/lang/String;

    .line 225
    const-string v0, "getMacAddrFromArpTable br.close() E"

    const-string v1, "getMacAddrFromArpTable br.close() IOE"

    const-string v2, "DeviceChecker"

    const/4 v3, 0x0

    if-nez p0, :cond_0

    .line 226
    return-object v3

    .line 228
    :cond_0
    const/4 v4, 0x0

    .line 229
    .local v4, "br":Ljava/io/BufferedReader;
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 232
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/net/arp"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 233
    const/4 v5, 0x0

    .line 236
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v6

    .line 237
    if-nez v5, :cond_1

    .line 238
    nop

    .line 254
    .end local v5    # "line":Ljava/lang/String;
    nop

    .line 256
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :goto_1
    goto :goto_6

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 257
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 240
    .restart local v5    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v6, " +"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "splitted":[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 242
    const/4 v7, 0x3

    aget-object v7, v6, v7

    .line 243
    .local v7, "mac":Ljava/lang/String;
    const-string v8, "..:..:..:..:..:.."

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 244
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .end local v7    # "mac":Ljava/lang/String;
    .local v3, "mac":Ljava/lang/String;
    nop

    .line 254
    nop

    .line 256
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 261
    :goto_2
    goto :goto_3

    .line 259
    :catch_2
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 258
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 245
    :goto_3
    return-object v3

    .line 247
    .end local v3    # "mac":Ljava/lang/String;
    .restart local v7    # "mac":Ljava/lang/String;
    :cond_2
    nop

    .line 254
    nop

    .line 256
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 261
    :goto_4
    goto :goto_5

    .line 259
    :catch_4
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 258
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 247
    :goto_5
    return-object v3

    .line 250
    .end local v6    # "splitted":[Ljava/lang/String;
    .end local v7    # "mac":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 254
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_7

    .line 251
    :catch_6
    move-exception v5

    .line 252
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v6, "getMacAddrFromArpTable Exception"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 254
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_4

    .line 256
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 264
    :cond_4
    :goto_6
    return-object v3

    .line 254
    :goto_7
    if-eqz v4, :cond_5

    .line 256
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 261
    :goto_8
    goto :goto_9

    .line 259
    :catch_7
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v2, v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 258
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 263
    :cond_5
    :goto_9
    throw v3
.end method

.method public static whitelist isMyLocalProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    const-string v1, "com.samsung.android.nearby.mediaserver"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v1, "server":Landroid/content/Context;
    nop

    .line 93
    if-eqz v1, :cond_2

    .line 94
    const/4 v2, 0x5

    const-string v3, "AllShareMediaServer"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 96
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "udn"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "udn":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    return v0

    .line 100
    :cond_1
    const-string/jumbo v5, "uuid:"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/4 v0, 0x1

    return v0

    .line 105
    .end local v2    # "preference":Landroid/content/SharedPreferences;
    .end local v3    # "udn":Ljava/lang/String;
    :cond_2
    return v0

    .line 88
    .end local v1    # "server":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DeviceChecker"

    const-string v3, "isMyLocalProvider NameNotFoundException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 90
    return v0

    .line 84
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_0
    return v0
.end method
