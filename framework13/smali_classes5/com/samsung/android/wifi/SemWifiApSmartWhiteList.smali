.class public Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;
.super Ljava/lang/Object;
.source "SemWifiApSmartWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    }
.end annotation


# static fields
.field private static final blacklist BUFFER_SIZE:I = 0x40

.field public static final blacklist WL_ALREADY_IN_TABLE:I = 0x4

.field public static final blacklist WL_FAIL:I = 0x2

.field public static final blacklist WL_NOT_IN_TABLE:I = 0x5

.field public static final blacklist WL_NOT_MAC:I = 0x3

.field public static final blacklist WL_SUCCESS:I = 0x1

.field private static blacklist mSmartWhiteList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist uniqueInstance:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;


# instance fields
.field private final blacklist SMART_TETHERING_ACCEPT:Ljava/lang/String;

.field private blacklist TAG:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "SemWifiApSmartWhiteList"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->TAG:Ljava/lang/String;

    .line 59
    const-string v0, "/data/misc/wifi_hostapd/smart_tethering.accept"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->SMART_TETHERING_ACCEPT:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    .line 77
    monitor-enter v0

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->createOrChangePermission()V

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist createOrChangePermission()V
    .locals 4

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    const-string v1, "/system/bin/sh"

    const-string v2, "-c"

    const-string v3, "/system/bin/chmod 665 /data/misc/wifi_hostapd/smart_tethering.accept"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "cmd":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    .local v2, "p":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 103
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    goto :goto_1

    .line 104
    :catch_1
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 109
    .end local v1    # "cmd":[Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_1
    goto :goto_2

    .line 107
    :catch_2
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;
    .locals 1

    .line 84
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    .line 87
    :cond_0
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    return-object v0
.end method

.method private blacklist isMacAddress(Ljava/lang/String;)Z
    .locals 3
    .param p1, "macAddressCandidate"    # Ljava/lang/String;

    .line 300
    const-string v0, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 301
    .local v0, "macPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 302
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private blacklist readWhiteListFile()V
    .locals 10

    .line 114
    const-string v0, "#"

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 115
    const/4 v1, 0x0

    .line 118
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 120
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x40

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v4

    .line 121
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "bufReadLine":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, "mac":Ljava/lang/String;
    const/4 v6, 0x0

    .line 124
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 125
    .local v7, "devicetype":I
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 127
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 128
    invoke-virtual {v1}, Ljava/io/BufferedReader;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    const/16 v8, 0x32

    invoke-virtual {v1, v8}, Ljava/io/BufferedReader;->mark(I)V

    .line 130
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    if-eqz v8, :cond_1

    .line 131
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 132
    instance-of v8, v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 134
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v8

    .line 137
    :goto_1
    goto :goto_2

    .line 135
    :catch_0
    move-exception v8

    .line 136
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    .line 144
    :cond_1
    :goto_2
    sget-object v8, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    new-instance v9, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-direct {v9, v4, v6, v7}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .end local v4    # "mac":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "devicetype":I
    :cond_2
    goto :goto_0

    .line 150
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    :cond_3
    nop

    .line 152
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    goto :goto_3

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 150
    .end local v5    # "bufReadLine":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 152
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 155
    goto :goto_3

    .line 153
    :catch_3
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 150
    :goto_4
    if-eqz v1, :cond_5

    .line 152
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 155
    goto :goto_5

    .line 153
    :catch_4
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    throw v0
.end method

.method private blacklist writeWhiteListFile()V
    .locals 5

    .line 160
    const-string v0, "\n"

    const/4 v1, 0x0

    .line 162
    .local v1, "fw":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v1, v2

    .line 163
    sget-object v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 166
    .local v3, "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 168
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 172
    invoke-static {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->-$$Nest$fgetmDeviceType(Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v3    # "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    goto :goto_0

    .line 178
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :cond_1
    nop

    .line 180
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :goto_1
    goto :goto_2

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 175
    :catch_1
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 180
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 186
    :cond_2
    :goto_2
    return-void

    .line 178
    :goto_3
    if-eqz v1, :cond_3

    .line 180
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 183
    goto :goto_4

    .line 181
    :catch_2
    move-exception v2

    .line 182
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v0
.end method


# virtual methods
.method public blacklist addWhiteList(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "devicetype"    # I

    .line 190
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    .line 194
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 195
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    const/4 v2, 0x4

    monitor-exit v0

    return v2

    .line 199
    :cond_2
    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    .line 200
    sget-object v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    new-instance v4, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-direct {v4, p1, p2, v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_3
    sget-object v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    new-instance v4, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWhiteList, size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    .line 206
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    monitor-exit v0

    .line 207
    return v2

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 256
    :try_start_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 257
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 259
    .local v2, "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 262
    .end local v2    # "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    :cond_0
    goto :goto_0

    .line 263
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    const-string v0, ""

    return-object v0

    .line 263
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist getIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;",
            ">;"
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    .line 286
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 288
    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getSize()I
    .locals 2

    .line 294
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 295
    :try_start_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isContains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;

    .line 269
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    .line 271
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 272
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 274
    .local v2, "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 277
    .end local v2    # "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    :cond_0
    goto :goto_0

    .line 278
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :cond_1
    monitor-exit v0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    .line 240
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 243
    .local v2, "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-virtual {v2, p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->setName(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    .line 246
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 248
    .end local v2    # "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    :cond_0
    goto :goto_0

    .line 249
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :cond_1
    monitor-exit v0

    .line 250
    const/4 v0, 0x2

    return v0

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist removeWhiteList(Ljava/lang/String;)I
    .locals 6
    .param p1, "mac"    # Ljava/lang/String;

    .line 212
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 213
    :try_start_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 214
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    .line 216
    .local v2, "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeWhiteList::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    .line 220
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 222
    .end local v2    # "wl":Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;
    :cond_0
    goto :goto_0

    .line 223
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;>;"
    :cond_1
    monitor-exit v0

    .line 224
    const/4 v0, 0x2

    return v0

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist resetWhitelist()V
    .locals 3

    .line 228
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    .line 230
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetWhitelist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
