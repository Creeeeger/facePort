.class public final Landroid/hardware/display/SemDlnaDevice;
.super Ljava/lang/Object;
.source "SemDlnaDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/SemDlnaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY_ARRAY:[Landroid/hardware/display/SemDlnaDevice;

.field public static final whitelist STATE_CONNECTED:I = 0x1

.field public static final whitelist STATE_CONNECTING:I = 0x3

.field public static final whitelist STATE_ERROR:I = 0x2

.field public static final whitelist STATE_NOT_CONNECTED:I = 0x0

.field public static final blacklist SUPPORT_TYPE_IMAGE:I = 0x2

.field public static final blacklist SUPPORT_TYPE_MUSIC:I = 0x4

.field public static final blacklist SUPPORT_TYPE_VIDEO:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SemDlnaDevice"

.field public static final whitelist TYPE_IMAGE:I = 0x1

.field public static final whitelist TYPE_MUSIC:I = 0x2

.field public static final whitelist TYPE_VIDEO:I


# instance fields
.field private blacklist mConnectionState:I

.field private blacklist mDlnaSupportTypes:I

.field private blacklist mDlnaType:I

.field private blacklist mIpAddress:Ljava/lang/String;

.field private blacklist mIsSwitchingDevice:Z

.field private blacklist mMacAddressFromARP:Ljava/lang/String;

.field private blacklist mNICType:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mP2pMacAddress:Ljava/lang/String;

.field private blacklist mURI:Ljava/lang/String;

.field private blacklist mUid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/SemDlnaDevice;

    sput-object v0, Landroid/hardware/display/SemDlnaDevice;->EMPTY_ARRAY:[Landroid/hardware/display/SemDlnaDevice;

    .line 105
    new-instance v0, Landroid/hardware/display/SemDlnaDevice$1;

    invoke-direct {v0}, Landroid/hardware/display/SemDlnaDevice$1;-><init>()V

    sput-object v0, Landroid/hardware/display/SemDlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemDlnaDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDlnaDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemDlnaDevice;->mConnectionState:I

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "dlnaType"    # I
    .param p4, "isSwitchingDevice"    # Z

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    .line 138
    iput p3, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    .line 139
    iput-boolean p4, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/SemDlnaDevice;->mConnectionState:I

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemDlnaDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDlnaDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "p2pMacAddress"    # Ljava/lang/String;
    .param p4, "macAddressFromARP"    # Ljava/lang/String;
    .param p5, "deviceNICType"    # Ljava/lang/String;
    .param p6, "uid"    # Ljava/lang/String;
    .param p7, "dlnaType"    # I
    .param p8, "isSwitchingDevice"    # Z
    .param p9, "uri"    # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    .line 162
    const-string v0, ""

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    invoke-static {p2}, Landroid/hardware/display/SemDlnaDevice;->getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    goto :goto_2

    .line 167
    :cond_2
    if-eqz p4, :cond_3

    move-object v1, p4

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    .line 170
    :goto_2
    if-eqz p5, :cond_4

    move-object v0, p5

    :cond_4
    iput-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    .line 171
    iput-object p6, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    .line 172
    iput p7, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    .line 173
    iput-boolean p8, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    .line 174
    iput-object p9, p0, Landroid/hardware/display/SemDlnaDevice;->mURI:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemDlnaDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/SemDlnaDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemDlnaDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method private static blacklist getMacAddrFromArpTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ipAddr"    # Ljava/lang/String;

    .line 357
    const-string v0, "getMacAddrFromArpTable br.close() IOE"

    const-string v1, "SemDlnaDevice"

    const-string v2, ""

    if-nez p0, :cond_0

    .line 358
    return-object v2

    .line 360
    :cond_0
    const/4 v3, 0x0

    .line 361
    .local v3, "br":Ljava/io/BufferedReader;
    const-string v4, "/"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 363
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/net/arp"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 365
    const/4 v4, 0x0

    .line 367
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 368
    if-nez v4, :cond_1

    .line 369
    nop

    .line 384
    nop

    .line 385
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    nop

    .line 391
    nop

    .line 393
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 396
    goto :goto_1

    .line 394
    :catch_0
    move-exception v5

    .line 395
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2

    .line 371
    :cond_1
    :try_start_2
    const-string v5, " +"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "splitted":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 374
    const/4 v6, 0x3

    aget-object v6, v5, v6

    .line 375
    .local v6, "mac":Ljava/lang/String;
    const-string v7, "..:..:..:..:..:.."

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 376
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 377
    nop

    .line 378
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    nop

    .line 391
    nop

    .line 393
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 396
    goto :goto_2

    .line 394
    :catch_1
    move-exception v2

    .line 395
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v6

    .line 383
    .end local v5    # "splitted":[Ljava/lang/String;
    .end local v6    # "mac":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 391
    .end local v4    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 388
    :catch_2
    move-exception v4

    .line 389
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMacAddrFromArpTable Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 391
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 393
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 396
    :goto_3
    goto :goto_4

    .line 394
    :catch_3
    move-exception v4

    .line 395
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 399
    :cond_3
    :goto_4
    return-object v2

    .line 391
    :goto_5
    if-eqz v3, :cond_4

    .line 393
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 396
    goto :goto_6

    .line 394
    :catch_4
    move-exception v4

    .line 395
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_6
    throw v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equals(Landroid/hardware/display/SemDlnaDevice;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/SemDlnaDevice;

    .line 413
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 405
    instance-of v0, p1, Landroid/hardware/display/SemDlnaDevice;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/display/SemDlnaDevice;

    invoke-virtual {p0, v0}, Landroid/hardware/display/SemDlnaDevice;->equals(Landroid/hardware/display/SemDlnaDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getConnectionState()I
    .locals 1

    .line 208
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mConnectionState:I

    return v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDlnaSupportTypes()I
    .locals 1

    .line 320
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaSupportTypes:I

    return v0
.end method

.method public whitelist getDlnaType()I
    .locals 1

    .line 265
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    return v0
.end method

.method public whitelist getIpAddress()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMacAddressFromArp()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNetType()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUri()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 422
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 2

    .line 328
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isDlnaSupportType(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 295
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 307
    :pswitch_0
    iget v1, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaSupportTypes:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 308
    return v0

    .line 302
    :pswitch_1
    iget v1, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaSupportTypes:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 303
    return v0

    .line 297
    :pswitch_2
    iget v1, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaSupportTypes:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 298
    return v0

    .line 312
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist isSwitchingDevice()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    return v0
.end method

.method public blacklist setConnectionState(I)V
    .locals 0
    .param p1, "connectionState"    # I

    .line 336
    iput p1, p0, Landroid/hardware/display/SemDlnaDevice;->mConnectionState:I

    .line 337
    return-void
.end method

.method public blacklist setDlnaSupportTypes(I)V
    .locals 0
    .param p1, "supportTypes"    # I

    .line 352
    iput p1, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaSupportTypes:I

    .line 353
    return-void
.end method

.method public blacklist setPlayerType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 344
    iput p1, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    .line 345
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", macFromArp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", netType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlnaType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isSwitchingDevice : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", uri : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/hardware/display/SemDlnaDevice;->mURI:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dlnaSupportTypes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaSupportTypes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectionState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/SemDlnaDevice;->mConnectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 428
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mP2pMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mMacAddressFromARP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mNICType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-boolean v0, p0, Landroid/hardware/display/SemDlnaDevice;->mIsSwitchingDevice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v0, p0, Landroid/hardware/display/SemDlnaDevice;->mURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mDlnaSupportTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/hardware/display/SemDlnaDevice;->mConnectionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    return-void
.end method
