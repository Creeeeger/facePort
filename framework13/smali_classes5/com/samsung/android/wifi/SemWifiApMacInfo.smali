.class public Lcom/samsung/android/wifi/SemWifiApMacInfo;
.super Ljava/lang/Object;
.source "SemWifiApMacInfo.java"


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x40

.field private static final blacklist WIFI_MAC_INFO:Ljava/lang/String; = "/data/misc/wifi_hostapd/wifimac.info"

.field public static final blacklist WL_FAIL:I = 0x2

.field public static final blacklist WL_SUCCESS:I = 0x1

.field private static volatile blacklist uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;


# instance fields
.field private blacklist TAG:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "SemWifiApMacInfo"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->TAG:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->createOrChangePermission()V

    .line 56
    return-void
.end method

.method private blacklist createOrChangePermission()V
    .locals 4

    .line 66
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi_hostapd/wifimac.info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string v1, "/system/bin/sh"

    const-string v2, "-c"

    const-string v3, "/system/bin/chmod 665 /data/misc/wifi_hostapd/wifimac.info"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "cmd":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 77
    .local v2, "p":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 78
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    goto :goto_1

    .line 79
    :catch_1
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_2

    .line 82
    :catch_2
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 62
    :cond_0
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApMacInfo;

    return-object v0
.end method

.method private blacklist isMacAddress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "macAddressCandidate"    # Ljava/lang/String;

    .line 147
    const-string v0, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 148
    .local v0, "macPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 149
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method


# virtual methods
.method public blacklist readWifiMacInfo()Ljava/lang/String;
    .locals 6

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "buf":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 93
    .local v1, "mac":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/misc/wifi_hostapd/wifimac.info"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 95
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x40

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v4

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 100
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    nop

    .line 102
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_0
    goto :goto_1

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 97
    :catch_1
    move-exception v2

    .line 98
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 102
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 108
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/wifi/SemWifiApMacInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JDM MAC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v1

    .line 100
    :goto_3
    if-eqz v0, :cond_2

    .line 102
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    goto :goto_4

    .line 103
    :catch_2
    move-exception v3

    .line 104
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v2
.end method

.method public blacklist writeWifiMacInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "fw":Ljava/io/OutputStreamWriter;
    if-nez p1, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_5

    .line 123
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_2

    .line 124
    return-void

    .line 125
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    return-void

    .line 128
    :cond_3
    monitor-enter p0

    .line 130
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/data/misc/wifi_hostapd/wifimac.info"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v1

    .line 131
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 137
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    :goto_0
    goto :goto_2

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 132
    :catch_1
    move-exception v1

    .line 133
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_4

    .line 137
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 138
    :catch_2
    move-exception v1

    goto :goto_1

    .line 143
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    return-void

    .line 135
    :goto_3
    if-eqz v0, :cond_5

    .line 137
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 140
    goto :goto_4

    .line 138
    :catch_3
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_4
    nop

    .end local v0    # "fw":Ljava/io/OutputStreamWriter;
    .end local p0    # "this":Lcom/samsung/android/wifi/SemWifiApMacInfo;
    .end local p1    # "str":Ljava/lang/String;
    throw v1

    .line 143
    .restart local v0    # "fw":Ljava/io/OutputStreamWriter;
    .restart local p0    # "this":Lcom/samsung/android/wifi/SemWifiApMacInfo;
    .restart local p1    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 120
    :cond_6
    :goto_5
    return-void
.end method
