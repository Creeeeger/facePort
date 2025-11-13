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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemWifiApSmartWhiteList"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->TAG:Ljava/lang/String;

    const-string v0, "/data/misc/wifi_hostapd/smart_tethering.accept"

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->SMART_TETHERING_ACCEPT:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->createOrChangePermission()V

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist createOrChangePermission()V
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v1, "/system/bin/sh"

    const-string v2, "-c"

    const-string v3, "/system/bin/chmod 665 /data/misc/wifi_hostapd/smart_tethering.accept"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;
    .locals 1

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    :cond_0
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->uniqueInstance:Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    return-object v0
.end method

.method private blacklist isMacAddress(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private blacklist readWhiteListFile()V
    .locals 10

    const-string v0, "#"

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x40

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v4

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    invoke-virtual {v1}, Ljava/io/BufferedReader;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x32

    invoke-virtual {v1, v8}, Ljava/io/BufferedReader;->mark(I)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    instance-of v8, v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

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

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    :cond_1
    :goto_2
    sget-object v8, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    new-instance v9, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-direct {v9, v4, v6, v7}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    goto :goto_0

    :cond_3
    nop

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    throw v0
.end method

.method private blacklist writeWhiteListFile()V
    .locals 5

    const-string v0, "\n"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/data/misc/wifi_hostapd/smart_tethering.accept"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v1, v2

    sget-object v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->-$$Nest$fgetmDeviceType(Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw v0
.end method


# virtual methods
.method public blacklist addWhiteList(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    sget-object v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    new-instance v4, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-direct {v4, p1, p2, v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    new-instance v4, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

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

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getName()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ""

    return-object v0

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

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getSize()I
    .locals 2

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isContains(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist removeWhiteList(Ljava/lang/String;)I
    .locals 6

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList$SmartWhiteList;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeWhiteList::"

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

    sget-object v3, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist resetWhitelist()V
    .locals 3

    sget-object v0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->readWhiteListFile()V

    sget-object v1, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->mSmartWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->TAG:Ljava/lang/String;

    const-string v2, "resetWhitelist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->writeWhiteListFile()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
