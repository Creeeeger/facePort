.class public Lcom/samsung/android/wifi/util/SemWifiRescueParty;
.super Ljava/lang/Object;
.source "SemWifiRescueParty.java"


# static fields
.field private static final blacklist APEX_WIFI_DATA_PATH:Ljava/lang/String; = "apexdata/com.android.wifi"

.field private static final blacklist MISC_PATH:Ljava/lang/String; = "/data/misc/"

.field private static final blacklist MISC_USER_PATH:Ljava/lang/String; = "/data/misc_ce/"

.field private static final blacklist SYSTEM_DB_PATH:Ljava/lang/String; = "/data/system/"

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiRescueParty"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fetchCompleteList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 104
    .local p0, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "folderList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 106
    .local v1, "listOfFile":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 107
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 108
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    nop

    .line 111
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {p0, p1, v5}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->fetchCompleteList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v4    # "tempFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method private static blacklist removeFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 77
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist removeFiles(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "folderList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1, p0}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->fetchCompleteList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "counter":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 93
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    .restart local v4    # "filePath":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 98
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 99
    :cond_3
    return v2
.end method

.method public static blacklist resetAllWifiStoredData([I)I
    .locals 7
    .param p0, "userIds"    # [I

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "counter":I
    const-string v1, "/data/system/wifigeofence.db"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    :cond_0
    const-string v1, "/data/system/wifigeofence.db-journal"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    :cond_1
    const-string v1, "/data/system/WifiHistory.db"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 55
    :cond_2
    const-string v1, "/data/system/WifiHistory.db-journal"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 58
    :cond_3
    const-string v1, "/data/system/WifiConfigStore.db"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 61
    :cond_4
    const-string v1, "/data/system/WifiConfigStore.db-journal"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 64
    :cond_5
    const-string v1, "/data/misc/wifi"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFiles(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    const-string v1, "/data/misc/apexdata/com.android.wifi"

    invoke-static {v1}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFiles(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget v3, p0, v2

    .line 68
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc_ce/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/wifi"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFiles(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "apexdata/com.android.wifi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/wifi/util/SemWifiRescueParty;->removeFiles(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 67
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset all Wi-Fi stored files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiRescueParty"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v0
.end method
