.class public Landroid/util/sysfwutil/DexObserver;
.super Ljava/lang/Object;
.source "DexObserver.java"


# static fields
.field private static final blacklist CCIC_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/sec/ccic"

.field private static final blacklist TAG:Ljava/lang/String; = "DexObserverFW"

.field private static final blacklist USBPD_IDS_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_ids"

.field private static final blacklist USBPD_TYPE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/usbpd_type"


# instance fields
.field private volatile blacklist mDexMode:Z

.field private final blacklist mDexStateLock:Ljava/lang/Object;

.field private final blacklist mDexUEventObserver:Landroid/os/UEventObserver;

.field private final blacklist mListeners:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/util/sysfwutil/DexConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mSemiDexMode:Z

.field private blacklist mTestModeOn:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/util/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;
    .locals 0

    iget-object p0, p0, Landroid/util/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetDexState(Landroid/util/sysfwutil/DexObserver;ILandroid/os/UEventObserver$UEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/sysfwutil/DexObserver;->setDexState(ILandroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    .line 46
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    .line 48
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v1, p0, Landroid/util/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    .line 50
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    .line 67
    new-instance v0, Landroid/util/sysfwutil/DexObserver$1;

    invoke-direct {v0, p0}, Landroid/util/sysfwutil/DexObserver$1;-><init>(Landroid/util/sysfwutil/DexObserver;)V

    iput-object v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexUEventObserver:Landroid/os/UEventObserver;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v2, :cond_0

    const-string v2, " TestModeOn"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexObserverFW"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Landroid/util/sysfwutil/DexObserver;->checkDexStatebySysfs()V

    .line 64
    const-string v1, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private blacklist checkDexStatebySysfs()V
    .locals 13

    .line 111
    const-string v0, "/sys/class/sec/ccic/usbpd_type"

    const-string v1, "/sys/class/sec/ccic/usbpd_ids"

    const-string v2, "IOException(iex): "

    const-string v3, "DexObserverFW"

    const/4 v4, 0x0

    .local v4, "mVIDPID":Ljava/lang/String;
    const/4 v5, 0x0

    .line 112
    .local v5, "mUsbType":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "fr1":Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 113
    .local v7, "fr2":Ljava/io/FileReader;
    const/4 v8, 0x0

    .local v8, "br1":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 116
    .local v9, "br2":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v10, "usb_usbpd_ids_fd":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v11, "usb_usbpd_type_fd":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 120
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v6, v12

    .line 121
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v1

    .line 122
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    .line 124
    :cond_0
    const-string v1, "USBPD IDS File does not exist"

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v7, v1

    .line 129
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v0

    .line 130
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 132
    :cond_1
    const-string v0, "USBPD TYPE File does not exist"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 136
    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDexStatebySysfs() USBPD_IDS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], USBPD_TYPE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    :cond_2
    const-string v0, "checkDexStatebySysfs() USBPD_IDS or USBPD_TYPE is NULL!!"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    :goto_2
    const/4 v0, 0x1

    if-eqz v5, :cond_5

    const-string v1, "200"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 142
    if-eqz v4, :cond_8

    const-string v1, "04e8:a027"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 143
    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v1, :cond_4

    const-string v1, "checkDexStatebySysfs() : SEMI DEX MODE is ON"

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_4
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_3

    .line 146
    :cond_5
    if-eqz v5, :cond_7

    const-string v1, "114"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 147
    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v1, :cond_6

    const-string v1, "checkDexStatebySysfs() : DEX MODE is ON"

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_6
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    goto :goto_3

    .line 150
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    .line 151
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    .line 154
    :cond_8
    :goto_3
    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_9

    const-string v0, "checkDexStatebySysfs() : Update DeX Connection State"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_9
    invoke-direct {p0}, Landroid/util/sysfwutil/DexObserver;->onUpdateDexMode()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v10    # "usb_usbpd_ids_fd":Ljava/io/File;
    .end local v11    # "usb_usbpd_type_fd":Ljava/io/File;
    if-eqz v6, :cond_a

    .line 165
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_4

    .line 172
    :catch_0
    move-exception v0

    goto :goto_5

    .line 166
    :cond_a
    :goto_4
    if-eqz v8, :cond_b

    .line 167
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 168
    :cond_b
    if-eqz v7, :cond_c

    .line 169
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_c
    if-eqz v9, :cond_d

    .line 171
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 173
    .local v0, "ioex":Ljava/io/IOException;
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "ioex":Ljava/io/IOException;
    goto/16 :goto_e

    .line 174
    :cond_d
    :goto_7
    goto/16 :goto_e

    .line 163
    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 160
    :catch_1
    move-exception v0

    .line 161
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IllegalArgumentException: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_e

    .line 165
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_8

    .line 172
    :catch_2
    move-exception v0

    goto :goto_9

    .line 166
    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    .line 167
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 168
    :cond_f
    if-eqz v7, :cond_10

    .line 169
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_10
    if-eqz v9, :cond_d

    .line 171
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 173
    .local v0, "ioex":Ljava/io/IOException;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    .line 158
    .end local v0    # "ioex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 159
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .end local v0    # "ioe":Ljava/io/IOException;
    if-eqz v6, :cond_11

    .line 165
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_a

    .line 172
    :catch_4
    move-exception v0

    goto :goto_b

    .line 166
    :cond_11
    :goto_a
    if-eqz v8, :cond_12

    .line 167
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 168
    :cond_12
    if-eqz v7, :cond_13

    .line 169
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_13
    if-eqz v9, :cond_d

    .line 171
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 173
    .local v0, "ioex":Ljava/io/IOException;
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_6

    .line 156
    .end local v0    # "ioex":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 157
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File not Found exception: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 164
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    if-eqz v6, :cond_14

    .line 165
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_c

    .line 172
    :catch_6
    move-exception v0

    goto :goto_d

    .line 166
    :cond_14
    :goto_c
    if-eqz v8, :cond_15

    .line 167
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 168
    :cond_15
    if-eqz v7, :cond_16

    .line 169
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_16
    if-eqz v9, :cond_d

    .line 171
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_7

    .line 173
    .local v0, "ioex":Ljava/io/IOException;
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_6

    .line 176
    .end local v0    # "ioex":Ljava/io/IOException;
    :goto_e
    return-void

    .line 164
    :goto_f
    if-eqz v6, :cond_17

    .line 165
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    goto :goto_10

    .line 172
    :catch_7
    move-exception v1

    goto :goto_11

    .line 166
    :cond_17
    :goto_10
    if-eqz v8, :cond_18

    .line 167
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 168
    :cond_18
    if-eqz v7, :cond_19

    .line 169
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 170
    :cond_19
    if-eqz v9, :cond_1a

    .line 171
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_12

    .line 173
    .local v1, "ioex":Ljava/io/IOException;
    :goto_11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 174
    .end local v1    # "ioex":Ljava/io/IOException;
    :cond_1a
    :goto_12
    nop

    .line 175
    :goto_13
    throw v0
.end method

.method private blacklist onUpdateDexMode()V
    .locals 4

    .line 180
    iget-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mTestModeOn:Z

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "DexObserverFW"

    const-string/jumbo v1, "setDexMode() : delay ++"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 186
    :goto_0
    const-string v0, "DexObserverFW"

    const-string/jumbo v1, "setDexMode() : delay --"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_1
    const-string v1, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDexMode() : mDexMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSemiDexMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    if-eqz v1, :cond_2

    .line 192
    :cond_1
    new-instance v1, Landroid/util/sysfwutil/DexObserver$2;

    const-string/jumbo v2, "notifyListeners"

    invoke-direct {v1, p0, v2}, Landroid/util/sysfwutil/DexObserver$2;-><init>(Landroid/util/sysfwutil/DexObserver;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Landroid/util/sysfwutil/DexObserver$2;->start()V

    .line 201
    :cond_2
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist setDexState(ILandroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDockState() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexObserverFW"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    .line 103
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_0

    .line 88
    :sswitch_0
    const-string v1, "USBPD_IDS"

    invoke-virtual {p2, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "04e8:a027"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    goto :goto_0

    .line 97
    .end local v1    # "s":Ljava/lang/String;
    :sswitch_1
    iput-boolean v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    .line 98
    nop

    .line 106
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/util/sysfwutil/DexObserver;->onUpdateDexMode()V

    .line 107
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6d -> :sswitch_1
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x72 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist addListener(Landroid/util/sysfwutil/DexConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/util/sysfwutil/DexConnectionListener;

    .line 219
    iget-object v0, p0, Landroid/util/sysfwutil/DexObserver;->mListeners:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 223
    iget-object v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current DexModeObserver state of DeXMode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current DexModeObserver state of SemiDeXMode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isDexModeOn()Z
    .locals 4

    .line 205
    iget-object v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    const-string v1, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDexModeOn() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mDexMode:Z

    monitor-exit v0

    return v1

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isSemiDexModeOn()Z
    .locals 4

    .line 212
    iget-object v0, p0, Landroid/util/sysfwutil/DexObserver;->mDexStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    const-string v1, "DexObserverFW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSemiDexModeOn() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v1, p0, Landroid/util/sysfwutil/DexObserver;->mSemiDexMode:Z

    monitor-exit v0

    return v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
