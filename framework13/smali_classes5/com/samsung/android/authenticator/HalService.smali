.class final Lcom/samsung/android/authenticator/HalService;
.super Ljava/lang/Object;
.source "HalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authenticator/HalService$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HS"

.field private static blacklist mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

.field static blacklist resultByte:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputmService(Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/authenticator/HalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/authenticator/HalService;->resultByte:[B

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static blacklist checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 58
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 61
    return-object p0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can not found service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist execute(I[B)[B
    .locals 6
    .param p0, "type"    # I
    .param p1, "command"    # [B

    .line 154
    const/4 v0, 0x0

    const-string v1, "HS"

    if-nez p0, :cond_0

    .line 155
    const-string/jumbo v2, "type can not be 0"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-object v0

    .line 159
    :cond_0
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    .line 160
    .local v2, "service":Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v3, "request":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 162
    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 166
    .end local v4    # "i":I
    :cond_1
    :try_start_0
    sput-object v0, Lcom/samsung/android/authenticator/HalService;->resultByte:[B

    .line 167
    new-instance v0, Lcom/samsung/android/authenticator/HalService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/authenticator/HalService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, p0, v3, v0}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->execute(ILjava/util/ArrayList;Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework$executeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v0, Lcom/samsung/android/authenticator/HalService;->resultByte:[B

    return-object v0
.end method

.method public static blacklist execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B
    .locals 1
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p1, "command"    # [B

    .line 149
    invoke-static {p0}, Lcom/samsung/android/authenticator/HalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/HalService;->execute(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B
    .locals 1
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .param p1, "command"    # [B

    .line 145
    invoke-static {p0}, Lcom/samsung/android/authenticator/HalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/samsung/android/authenticator/HalService;->execute(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized blacklist getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    .locals 5

    const-class v0, Lcom/samsung/android/authenticator/HalService;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/samsung/android/authenticator/HalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 46
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->getService(Z)Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/authenticator/HalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    .line 47
    if-eqz v1, :cond_0

    .line 48
    new-instance v2, Lcom/samsung/android/authenticator/HalService$ServiceDeathRecipient;

    invoke-direct {v2}, Lcom/samsung/android/authenticator/HalService$ServiceDeathRecipient;-><init>()V

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_0
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 54
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    :try_start_2
    sget-object v1, Lcom/samsung/android/authenticator/HalService;->mService:Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic blacklist lambda$execute$0(ZLjava/util/ArrayList;)V
    .locals 3
    .param p0, "ret"    # Z
    .param p1, "response"    # Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HS"

    invoke-static {v1, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/authenticator/HalService;->resultByte:[B

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 172
    sget-object v1, Lcom/samsung/android/authenticator/HalService;->resultByte:[B

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static blacklist load(ILandroid/os/ParcelFileDescriptor;JJ)Z
    .locals 15
    .param p0, "type"    # I
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "len"    # J

    .line 73
    move v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-string v4, "HS"

    if-nez v1, :cond_0

    .line 74
    const-string/jumbo v0, "type can not be 0"

    invoke-static {v4, v0}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return v3

    .line 78
    :cond_0
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    .line 79
    .local v5, "service":Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 81
    .local v6, "fileBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz v2, :cond_2

    .line 82
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 83
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v7, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x2800

    new-array v8, v8, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    .local v8, "buffer":[B
    const/4 v9, -0x1

    .line 87
    .local v9, "count":I
    move-wide/from16 v10, p2

    :try_start_1
    invoke-virtual {v0, v10, v11}, Ljava/io/FileInputStream;->skip(J)J

    .line 88
    :goto_0
    invoke-virtual {v0, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    move v9, v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 89
    invoke-virtual {v7, v8, v3, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 92
    .local v12, "temp":[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 94
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v12

    if-ge v13, v14, :cond_3

    .line 95
    aget-byte v14, v12, v13

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "buffer":[B
    .end local v9    # "count":I
    .end local v12    # "temp":[B
    .end local v13    # "i":I
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-wide/from16 v10, p2

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "save file error. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return v3

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-wide/from16 v10, p2

    .line 101
    :cond_3
    nop

    .line 104
    :try_start_2
    invoke-interface {v5, p0, v6}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->load(ILjava/util/ArrayList;)Z

    move-result v0

    .line 105
    .local v0, "ret":Z
    if-nez v0, :cond_4

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load fail. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    return v3

    .line 112
    .end local v0    # "ret":Z
    :cond_4
    goto :goto_3

    .line 109
    :catch_2
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initialize failed : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 6
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "len"    # J

    .line 69
    invoke-static {p0}, Lcom/samsung/android/authenticator/HalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/authenticator/HalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method public static blacklist load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 6
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "len"    # J

    .line 65
    invoke-static {p0}, Lcom/samsung/android/authenticator/HalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/authenticator/HalService;->load(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method private static blacklist translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I
    .locals 2
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    .line 196
    sget-object v0, Lcom/samsung/android/authenticator/HalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppAssetType:[I

    invoke-virtual {p0}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 200
    :pswitch_0
    const/16 v0, 0x2711

    return v0

    .line 198
    :pswitch_1
    const/16 v0, 0x2710

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I
    .locals 2
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 184
    sget-object v0, Lcom/samsung/android/authenticator/HalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I

    invoke-virtual {p0}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    const/4 v0, 0x0

    return v0

    .line 190
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 188
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 186
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist unload(I)Z
    .locals 6
    .param p0, "type"    # I

    .line 125
    const/4 v0, 0x0

    const-string v1, "HS"

    if-nez p0, :cond_0

    .line 126
    const-string/jumbo v2, "type can not be 0"

    invoke-static {v1, v2}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return v0

    .line 130
    :cond_0
    invoke-static {}, Lcom/samsung/android/authenticator/HalService;->getService()Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/authenticator/HalService;->checkNotNullState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;

    .line 132
    .local v2, "service":Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;
    :try_start_0
    invoke-interface {v2, p0}, Lvendor/samsung/hardware/authfw/V1_0/ISehAuthenticationFramework;->terminate(I)Z

    move-result v3

    .line 133
    .local v3, "ret":Z
    if-nez v3, :cond_1

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unload fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return v0

    .line 140
    .end local v3    # "ret":Z
    :cond_1
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminate failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/authenticator/AuthenticatorLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z
    .locals 1
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    .line 121
    invoke-static {p0}, Lcom/samsung/android/authenticator/HalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->unload(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z
    .locals 1
    .param p0, "type"    # Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    .line 117
    invoke-static {p0}, Lcom/samsung/android/authenticator/HalService;->translateTaType(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/authenticator/HalService;->unload(I)Z

    move-result v0

    return v0
.end method
