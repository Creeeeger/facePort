.class public final Lcom/samsung/android/service/SemService/SemServiceManager;
.super Ljava/lang/Object;
.source "SemServiceManager.java"


# static fields
.field public static final blacklist ERROR:I = -0x1

.field public static final blacklist ERROR_ADD_DEL_LIST:I = -0x10

.field public static final blacklist ERROR_BOOT_DEACT:I = -0x11

.field public static final blacklist ERROR_CLASS_NOT_FOUND:I = -0x2

.field public static final blacklist ERROR_DATA:I = -0xd

.field public static final blacklist ERROR_DEACTIVATION:I = -0x12

.field public static final blacklist ERROR_EXCEPTION:I = -0x5a

.field public static final blacklist ERROR_FACTORY_ERROR:I = -0xa

.field public static final blacklist ERROR_NOT_SUPPORTED:I = -0xa

.field public static final blacklist ERROR_NO_PERMISSION:I = -0x5b

.field public static final blacklist ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

.field public static final blacklist ERROR_NO_SERVICE:I = -0x5c

.field public static final blacklist ERROR_SELECT_ERROR:I = -0xb

.field public static final blacklist ERROR_SEND_ERROR:I = -0xc

.field public static final blacklist ERROR_UNSAT_LINK:I = -0x3

.field public static final blacklist ESESTATUS_BUSY:I = -0xc8

.field public static final blacklist ESESTATUS_NOT_SUPPORTED:I = -0x64

.field private static final blacklist HEX_CHARS:[C

.field private static final blacklist MAX_CAPDU_SIZE:I = 0x10009

.field private static final blacklist MAX_RAPDU_SIZE:I = 0x10002

.field public static final blacklist NO_ERROR:I = 0x0

.field public static final blacklist NO_ERROR_SPI:I = 0x0

.field public static final blacklist SSD_NOT_EXIST_APPLET_EXIST:I = 0x5

.field public static final blacklist SSD_NOT_EXIST_APPLET_NOT_EXIST:I = 0x4

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_EXIST:I = 0x2

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_EXIST:I = 0x3

.field public static final blacklist SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final blacklist SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_ServiceManager"

.field private static final blacklist isSupportSemService:Z = true

.field private static final blacklist normalSpi_Flag:I = 0x0

.field private static final blacklist secureSpi_Flag:I = 0x1


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSemService:Lcom/samsung/android/service/SemService/ISemService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/service/SemService/SemServiceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mAIDDeactivation(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/util/ArrayList;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->AIDDeactivation(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseList(Lcom/samsung/android/service/SemService/SemServiceManager;[BI)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/SemService/SemServiceManager;->parseList([BI)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    .line 77
    const-string v0, "SemService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    .line 78
    const-string v1, "SEC_ESE_ServiceManager"

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connects to SemService is failed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connects to SemService."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void
.end method

.method private blacklist AIDDeactivation(Ljava/util/ArrayList;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1018
    .local p1, "AID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 1019
    .local v1, "deactivationListCmd":[B
    const/4 v2, 0x0

    .line 1020
    .local v2, "baRsp":[B
    const/4 v3, 0x0

    .line 1021
    .local v3, "baRspLen":I
    const/4 v4, 0x0

    .line 1022
    .local v4, "failFlag":I
    const-string v5, "80F80002"

    .line 1029
    .local v5, "strDeactivationListCmd":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 1030
    const/4 v7, 0x0

    .line 1032
    .local v7, "appletAID":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "SEC_ESE_ServiceManager"

    if-nez v8, :cond_0

    .line 1033
    const-string v8, "AID Null Error"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p0

    goto/16 :goto_2

    .line 1036
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    .line 1037
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x2

    div-int/2addr v8, v10

    .line 1038
    .local v8, "tempLen":I
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string v13, "%02x"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1040
    .local v12, "aidlen":Ljava/lang/String;
    const-string v5, "80F80002"

    .line 1041
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v16, v8, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v14

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1042
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1043
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1044
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "00"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1046
    invoke-static {v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1047
    move-object/from16 v11, p0

    invoke-virtual {v11, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v2

    .line 1048
    if-eqz v2, :cond_5

    array-length v13, v2

    if-ge v13, v10, :cond_1

    goto :goto_1

    .line 1052
    :cond_1
    array-length v3, v2

    .line 1054
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DEAID SW : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v3, -0x2

    aget-byte v14, v2, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v3, -0x1

    aget-byte v14, v2, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    if-lt v3, v10, :cond_4

    add-int/lit8 v10, v3, -0x2

    aget-byte v10, v2, v10

    const/16 v13, -0x70

    if-ne v10, v13, :cond_2

    add-int/lit8 v10, v3, -0x1

    aget-byte v10, v2, v10

    if-eqz v10, :cond_3

    :cond_2
    add-int/lit8 v10, v3, -0x2

    aget-byte v10, v2, v10

    const/16 v13, 0x63

    if-ne v10, v13, :cond_4

    add-int/lit8 v10, v3, -0x1

    aget-byte v10, v2, v10

    const/16 v13, 0x8

    if-ne v10, v13, :cond_4

    .line 1057
    :cond_3
    const-string v10, "deactivate list success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1059
    :cond_4
    const-string v10, "deactivate list fail"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1049
    :cond_5
    :goto_1
    const-string v10, "Aid Deactivation Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    add-int/lit8 v4, v4, 0x1

    .line 1029
    .end local v7    # "appletAID":Ljava/lang/String;
    .end local v8    # "tempLen":I
    .end local v12    # "aidlen":Ljava/lang/String;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v11, p0

    .line 1066
    .end local v6    # "i":I
    return v4
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # B

    .line 1855
    const/4 v0, 0x2

    new-array v0, v0, [C

    sget-object v1, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x0

    aput-char v2, v0, v3

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 1856
    .local v0, "array":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist bytesToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 1844
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 1846
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 1847
    .local v0, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1848
    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 1849
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1847
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1851
    .end local v2    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    .line 1845
    .end local v0    # "chars":[C
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1860
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1861
    return-object v0

    .line 1862
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1863
    return-object v0

    .line 1865
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    .line 1866
    .local v0, "len":I
    new-array v1, v0, [B

    .line 1867
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1868
    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1867
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1870
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private blacklist isSupportEsek()Z
    .locals 5

    .line 179
    const-string/jumbo v0, "ro.security.ese.support_esek"

    .line 181
    .local v0, "esekSupportProp":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "propValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 183
    :cond_1
    :goto_0
    return v1

    .line 187
    .end local v2    # "propValue":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get sysProp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SEC_ESE_ServiceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v1
.end method

.method private blacklist parseList([BI)Ljava/util/ArrayList;
    .locals 8
    .param p1, "respAid"    # [B
    .param p2, "respAidLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1151
    const-string v0, "SEC_ESE_ServiceManager"

    if-nez p1, :cond_0

    .line 1152
    const-string/jumbo v1, "parse list aid null error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v0, 0x0

    return-object v0

    .line 1157
    :cond_0
    const/4 v1, 0x0

    .line 1158
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1160
    .local v2, "tempLen":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    .local v3, "tempStr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_2

    .line 1168
    aget-byte v2, p1, v4

    .line 1169
    if-lez v2, :cond_1

    .line 1170
    add-int/lit8 v4, v4, 0x1

    .line 1171
    new-array v5, v2, [B

    .line 1172
    .local v5, "tempData":[B
    add-int v6, v4, v2

    invoke-static {p1, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1173
    add-int/lit8 v6, v2, -0x1

    add-int/2addr v4, v6

    .line 1175
    invoke-static {v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    add-int/lit8 v1, v1, 0x1

    .line 1167
    .end local v5    # "tempData":[B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1181
    .end local v4    # "i":I
    :cond_2
    return-object v3
.end method


# virtual methods
.method public blacklist COSSPIAccessControl(I)I
    .locals 3
    .param p1, "type"    # I

    .line 2012
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "COSSPIAccessControl() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/4 v1, 0x1

    const/16 v2, -0x5a

    if-ne p1, v1, :cond_0

    .line 2021
    :try_start_0
    const-string v1, "SPIAC SPI Open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v0

    return v0

    .line 2042
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2039
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2036
    :catch_2
    move-exception v0

    goto :goto_2

    .line 2032
    :catch_3
    move-exception v1

    goto :goto_3

    .line 2024
    :cond_0
    if-nez p1, :cond_1

    .line 2025
    const-string v1, "SPIAC SPI Close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I

    move-result v0

    return v0

    .line 2029
    :cond_1
    const-string v1, "SPIAC Type Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2030
    return v2

    .line 2043
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2044
    return v2

    .line 2040
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2041
    return v2

    .line 2037
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 2038
    return v2

    .line 2033
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    .local v1, "npe":Ljava/lang/NullPointerException;
    :goto_3
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2035
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist accessControlForCOSU(I)I
    .locals 1
    .param p1, "type"    # I

    .line 1392
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 20
    .param p1, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 583
    .local p2, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "%02x"

    const/4 v4, -0x1

    .line 585
    .local v4, "ret":I
    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    .line 587
    .local v5, "selectSCRSCmd":[B
    const/4 v6, 0x0

    .line 588
    .local v6, "baRsp":[B
    const/4 v7, 0x0

    .line 589
    .local v7, "baRspLen":I
    const/4 v8, 0x0

    .line 590
    .local v8, "strAddListCmd":Ljava/lang/String;
    const/4 v9, 0x0

    .line 598
    .local v9, "isOpen":Z
    const-string v10, "SEC_ESE_ServiceManager"

    if-eqz v2, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 603
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v11

    move v4, v11

    .line 604
    if-eqz v4, :cond_1

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OPEN Error "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a

    .line 606
    return v4

    .line 608
    :cond_1
    const/4 v9, 0x1

    .line 610
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v11

    move-object v6, v11

    .line 611
    if-eqz v6, :cond_a

    array-length v11, v6

    const/4 v12, 0x2

    if-ge v11, v12, :cond_2

    move/from16 v17, v4

    goto/16 :goto_4

    .line 618
    :cond_2
    array-length v11, v6

    move v7, v11

    .line 619
    const/4 v11, 0x0

    .line 621
    .local v11, "failFlag":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Select SW : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v7, -0x2

    aget-byte v14, v6, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v7, -0x1

    aget-byte v14, v6, v14

    invoke-static {v14}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-lt v7, v12, :cond_9

    add-int/lit8 v13, v7, -0x2

    aget-byte v13, v6, v13

    const/16 v14, -0x70

    if-ne v13, v14, :cond_9

    add-int/lit8 v13, v7, -0x1

    aget-byte v13, v6, v13

    if-nez v13, :cond_9

    .line 623
    const/4 v13, 0x0

    .line 624
    .local v13, "addListCmd":[B
    const/4 v15, 0x0

    .line 626
    .local v15, "aidlen":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LS : "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_8

    .line 628
    const/4 v14, 0x0

    .line 630
    .local v14, "appletAID":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5

    if-nez v17, :cond_3

    .line 631
    move/from16 v17, v4

    .end local v4    # "ret":I
    .local v17, "ret":I
    :try_start_2
    const-string v4, "AID Data Error"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    add-int/lit8 v11, v11, 0x1

    const/16 v14, -0x70

    goto/16 :goto_2

    .line 634
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_3
    move/from16 v17, v4

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 635
    .end local v14    # "appletAID":Ljava/lang/String;
    .local v4, "appletAID":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v16, 0x2

    div-int/lit8 v18, v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v2, v19

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 636
    .end local v15    # "aidlen":Ljava/lang/String;
    .local v2, "aidlen":Ljava/lang/String;
    const-string v15, "80F600"

    move-object v8, v15

    .line 637
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v19

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 638
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 639
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 640
    invoke-static {v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object v13, v14

    .line 642
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v1, v13}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v14

    move-object v6, v14

    .line 645
    if-eqz v6, :cond_7

    array-length v14, v6

    const/4 v15, 0x2

    if-ge v14, v15, :cond_4

    const/16 v14, -0x70

    goto :goto_1

    .line 649
    :cond_4
    array-length v14, v6

    move v7, v14

    .line 651
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RSP SW : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v14, 0x2

    if-lt v7, v14, :cond_5

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    const/16 v14, -0x70

    if-ne v15, v14, :cond_6

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    if-nez v15, :cond_6

    .line 653
    const-string v15, "AL Success"

    invoke-static {v10, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v2

    goto :goto_2

    .line 652
    :cond_5
    const/16 v14, -0x70

    .line 655
    :cond_6
    const-string v15, "AL Fail"

    invoke-static {v10, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    add-int/lit8 v11, v11, 0x1

    move-object v15, v2

    goto :goto_2

    .line 645
    :cond_7
    const/16 v14, -0x70

    .line 646
    :goto_1
    const-string v15, "Send Error"

    invoke-static {v10, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    add-int/lit8 v11, v11, 0x1

    move-object v15, v2

    .line 627
    .end local v2    # "aidlen":Ljava/lang/String;
    .end local v4    # "appletAID":Ljava/lang/String;
    .restart local v15    # "aidlen":Ljava/lang/String;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v17

    goto/16 :goto_0

    .end local v17    # "ret":I
    .local v4, "ret":I
    :cond_8
    move/from16 v17, v4

    .line 661
    .end local v4    # "ret":I
    .end local v12    # "i":I
    .end local v13    # "addListCmd":[B
    .end local v15    # "aidlen":Ljava/lang/String;
    .restart local v17    # "ret":I
    goto :goto_3

    .line 622
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_9
    move/from16 v17, v4

    .line 662
    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Select Fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v4, -0xb

    .line 665
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :goto_3
    if-lez v11, :cond_c

    const/16 v4, -0x10

    goto/16 :goto_b

    .line 611
    .end local v11    # "failFlag":I
    :cond_a
    move/from16 v17, v4

    .line 612
    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    :goto_4
    const-string v2, "Select Error"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 616
    const/16 v2, -0xb

    return v2

    .line 678
    :catch_0
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_6

    .line 675
    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_7

    .line 672
    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_8

    .line 669
    :catch_3
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_9

    .line 666
    :catch_4
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_a

    .line 678
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_5
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_6

    .line 675
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_6
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_7

    .line 672
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_7
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_8

    .line 669
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_8
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto :goto_9

    .line 666
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :catch_9
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    .end local v4    # "ret":I
    .restart local v17    # "ret":I
    goto/16 :goto_a

    .line 599
    .end local v17    # "ret":I
    .restart local v4    # "ret":I
    :cond_b
    :goto_5
    :try_start_3
    const-string v2, "AID/Flag Null Error"

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_a

    .line 601
    const/16 v2, -0xd

    return v2

    .line 678
    :catch_a
    move-exception v0

    move-object v2, v0

    .line 679
    .local v2, "e":Ljava/lang/Error;
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/16 v4, -0x5a

    goto :goto_c

    .line 675
    .end local v2    # "e":Ljava/lang/Error;
    :catch_b
    move-exception v0

    move-object v2, v0

    .line 676
    .local v2, "e":Ljava/lang/Exception;
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_b

    .line 672
    :catch_c
    move-exception v0

    move-object v2, v0

    .line 673
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to link."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_b

    .line 669
    :catch_d
    move-exception v0

    move-object v2, v0

    .line 670
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to find class."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v4, -0x5a

    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_b

    .line 666
    :catch_e
    move-exception v0

    move-object v2, v0

    .line 667
    .local v2, "e":Ljava/lang/NullPointerException;
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to connect service."

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/16 v4, -0x5a

    .line 681
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_c
    :goto_b
    nop

    .line 682
    :goto_c
    if-eqz v9, :cond_d

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 686
    :cond_d
    return v4

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data
.end method

.method public blacklist checkSeState([B[B)I
    .locals 3
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B

    .line 1610
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "checkSeState() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->check_SeState([B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1631
    return v1

    .line 1626
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1628
    return v1

    .line 1623
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1624
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1625
    return v1

    .line 1619
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1620
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1622
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist close()I
    .locals 2

    .line 1439
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "close() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist close(I)I
    .locals 2
    .param p1, "flag"    # I

    .line 1551
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "close() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist closeSpi(I)I
    .locals 3
    .param p1, "flag"    # I

    .line 1933
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "closeSpi() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/SemService/ISemService;->close_Spi(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1954
    return v1

    .line 1949
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1951
    return v1

    .line 1946
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1947
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1948
    return v1

    .line 1942
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1943
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1945
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist continueattestation(Ljava/lang/String;I[B)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "rspData"    # [B

    .line 1246
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "continueattestation() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/16 v1, -0x5c

    :try_start_0
    const-string v2, "ContinueAttestation"

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    .line 1255
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/service/SemService/ISemService;->continue_attestation(Ljava/lang/String;I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1268
    const/16 v1, -0x5a

    return v1

    .line 1263
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1265
    return v1

    .line 1260
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1262
    return v1

    .line 1256
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1257
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1259
    return v1
.end method

.method public blacklist deactivateCards(I[Ljava/lang/String;[II)I
    .locals 3
    .param p1, "RequestType"    # I
    .param p2, "package_name"    # [Ljava/lang/String;
    .param p3, "package_len"    # [I
    .param p4, "arrayLen"    # I

    .line 433
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "deactivateCards is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_Cards(I[Ljava/lang/String;[II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    return v1

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 452
    return v1

    .line 447
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 449
    return v1

    .line 443
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 444
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 446
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist deactivateCardsAID(II[Ljava/lang/String;[II)I
    .locals 8
    .param p1, "RequestType"    # I
    .param p2, "bean"    # I
    .param p3, "package_name"    # [Ljava/lang/String;
    .param p4, "package_len"    # [I
    .param p5, "arrayLen"    # I

    .line 460
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "deactivateCardsAID is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_CardsAID(II[Ljava/lang/String;[II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    return v1

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 479
    return v1

    .line 474
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 476
    return v1

    .line 470
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 471
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 473
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 11
    .param p1, "inputFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 690
    .local p2, "inputAid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x16800

    .line 691
    .local v0, "listByteSize":I
    const-string v1, "02"

    .line 692
    .local v1, "AID_DEACTIVATION_FLAG":Ljava/lang/String;
    const-string v2, "03"

    .line 693
    .local v2, "AID_DEACTIVATION_FLAG_BOOT":Ljava/lang/String;
    const-string v3, "01"

    .line 695
    .local v3, "ALL_DEACTIVATION_FLAG":Ljava/lang/String;
    move-object v4, p1

    .line 696
    .local v4, "flag":Ljava/lang/String;
    move-object v5, p2

    .line 699
    .local v5, "aid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "com.sec.action.CDA_FINISH"

    .line 700
    .local v6, "ACTION_CDA_FINISH":Ljava/lang/String;
    const-string v7, "com.sec.action.CDA_VALUE"

    .line 701
    .local v7, "VALUE_CDA_FINISH":Ljava/lang/String;
    const/4 v8, 0x1

    .line 709
    .local v8, "ACTION_VALUE_CDA_FINISH":I
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/service/SemService/SemServiceManager$1;

    invoke-direct {v10, p0, v4, v5}, Lcom/samsung/android/service/SemService/SemServiceManager$1;-><init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1012
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1014
    const/4 v9, 0x0

    return v9
.end method

.method public blacklist eSEFactoryReset()I
    .locals 3

    .line 1071
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "eSEFactoryReset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    return v1

    .line 1087
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1089
    return v1

    .line 1084
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1085
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1086
    return v1

    .line 1080
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1081
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1083
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist eSEFullFactoryReset()I
    .locals 3

    .line 1125
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "eSEFullFactoryReset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FullFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1146
    return v1

    .line 1141
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1143
    return v1

    .line 1138
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1140
    return v1

    .line 1134
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1135
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1137
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist eSELowFactoryReset()I
    .locals 3

    .line 1098
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "eSELowFactoryReset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_LowFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1119
    return v1

    .line 1114
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1116
    return v1

    .line 1111
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1113
    return v1

    .line 1107
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1108
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1110
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist esekCertificateCheck()I
    .locals 3

    .line 195
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "esekCertificateCheck() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v0, -0xa

    return v0

    .line 208
    :cond_0
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->esek_certificate_check()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    return v1

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 218
    return v1

    .line 213
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 215
    return v1

    .line 209
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 210
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 212
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist getAtr()I
    .locals 3

    .line 1365
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getAtr() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->getAtr_Spi()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1386
    return v1

    .line 1381
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1383
    return v1

    .line 1378
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1379
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1380
    return v1

    .line 1374
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1375
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1377
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 4

    .line 133
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getCPLC14mode() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    return-object v1

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 150
    return-object v1

    .line 145
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 147
    return-object v1

    .line 141
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 142
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 144
    return-object v1
.end method

.method public blacklist getHQMMemory([B)I
    .locals 3
    .param p1, "hw_memory_data"    # [B

    .line 405
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getHQMMemory() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/SemService/ISemService;->get_HQMMemory([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    return v1

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 423
    return v1

    .line 418
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 420
    return v1

    .line 414
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 415
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 417
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist getPK([B)I
    .locals 2
    .param p1, "rspData"    # [B

    .line 1274
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getPK() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSCRSVersion()I
    .locals 13

    .line 487
    const-string v0, "SEC_ESE_ServiceManager"

    const/4 v1, -0x1

    .line 488
    .local v1, "ret":I
    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 490
    .local v2, "selectSCRSCmd":[B
    const/4 v3, 0x5

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    .line 491
    .local v3, "getVersionCmd":[B
    const/4 v4, 0x0

    .line 492
    .local v4, "baRsp":[B
    const/4 v5, 0x0

    .line 493
    .local v5, "baRspLen":I
    const/4 v6, 0x0

    .line 494
    .local v6, "scrsVersion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 503
    .local v7, "isOpen":Z
    :try_start_0
    const-string/jumbo v8, "ro.factory.factory_binary"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 504
    .local v8, "factoryProp":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v9, "factory"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 505
    const-string v9, "FACTORY NOT SUPPORT"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/16 v0, -0xa

    return v0

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v9

    move v1, v9

    .line 511
    if-eqz v1, :cond_1

    .line 512
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPEN Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v1

    .line 515
    :cond_1
    const/4 v7, 0x1

    .line 517
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v4, v9

    .line 518
    if-eqz v4, :cond_8

    array-length v9, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    goto/16 :goto_2

    .line 525
    :cond_2
    array-length v9, v4

    move v5, v9

    .line 527
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Select SW : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v5, -0x2

    aget-byte v11, v4, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v5, -0x1

    aget-byte v11, v4, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-lt v5, v10, :cond_7

    add-int/lit8 v9, v5, -0x2

    aget-byte v9, v4, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_7

    add-int/lit8 v9, v5, -0x1

    aget-byte v9, v4, v9

    if-nez v9, :cond_7

    .line 529
    invoke-virtual {p0, v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v4, v9

    .line 530
    if-eqz v4, :cond_6

    array-length v9, v4

    if-ge v9, v10, :cond_3

    goto/16 :goto_1

    .line 537
    :cond_3
    array-length v9, v4

    move v5, v9

    .line 538
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RSP SW : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v5, -0x2

    aget-byte v12, v4, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v5, -0x1

    aget-byte v12, v4, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v9, 0x3

    if-le v5, v9, :cond_5

    add-int/lit8 v12, v5, -0x2

    aget-byte v12, v4, v12

    if-ne v12, v11, :cond_5

    add-int/lit8 v11, v5, -0x1

    aget-byte v11, v4, v11

    if-nez v11, :cond_5

    .line 540
    aget-byte v10, v4, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 541
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v9, v4, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 543
    if-eqz v6, :cond_4

    .line 544
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v1, v9

    goto :goto_0

    .line 546
    :cond_4
    const-string v9, "Parse Version Error"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/16 v1, -0xd

    goto :goto_0

    .line 550
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v1, -0xc

    .line 553
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCRS Version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 531
    :cond_6
    :goto_1
    const-string v9, "Send Error"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 534
    const/16 v0, -0xc

    return v0

    .line 555
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v1, -0xb

    goto/16 :goto_3

    .line 519
    :cond_8
    :goto_2
    const-string v9, "Select Error"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/16 v0, -0xb

    return v0

    .line 570
    .end local v8    # "factoryProp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 571
    .local v8, "e":Ljava/lang/Error;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/16 v1, -0x5a

    goto :goto_4

    .line 567
    .end local v8    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v8

    .line 568
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v1, -0x5a

    .end local v8    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 564
    :catch_2
    move-exception v8

    .line 565
    .local v8, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v9, "Failed to link."

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/16 v1, -0x5a

    .end local v8    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_3

    .line 561
    :catch_3
    move-exception v8

    .line 562
    .local v8, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find class."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v1, -0x5a

    .end local v8    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_3

    .line 558
    :catch_4
    move-exception v8

    .line 559
    .local v8, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect service. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/16 v1, -0x5a

    .line 573
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_3
    nop

    .line 575
    :goto_4
    if-eqz v7, :cond_9

    .line 576
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    .line 579
    :cond_9
    return v1

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x9t
        -0x60t
        0x0t
        0x0t
        0x1t
        0x51t
        0x43t
        0x52t
        0x53t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        -0x36t
        0x0t
        -0x10t
        0x0t
    .end array-data
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .locals 4

    .line 108
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "get_ESEA() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->get_ESEA()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    return-object v1

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 125
    return-object v1

    .line 120
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 122
    return-object v1

    .line 116
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 117
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 119
    return-object v1
.end method

.method public blacklist grdmCheckRestrictedMode()Ljava/lang/String;
    .locals 4

    .line 1790
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmCheckRestrictedMode() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_check_restricted_mode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1811
    return-object v1

    .line 1806
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1807
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1808
    return-object v1

    .line 1803
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1804
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1805
    return-object v1

    .line 1799
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1800
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1802
    return-object v1
.end method

.method public blacklist grdmCheckStatus()I
    .locals 4

    .line 1816
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmCheckStatus() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_Check_Status()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1835
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1837
    return v1

    .line 1832
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1833
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1834
    return v1

    .line 1829
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1830
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1831
    return v1

    .line 1825
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1826
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1828
    return v1
.end method

.method public blacklist grdmGetAttesCert(I[B)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "rspData"    # [B

    .line 1764
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmGetAttesCert() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_attes_cert(I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1785
    return v1

    .line 1780
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1781
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1782
    return v1

    .line 1777
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1778
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1779
    return v1

    .line 1773
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1774
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1776
    return v1
.end method

.method public blacklist grdmGetSession()I
    .locals 4

    .line 1686
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmGetSession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_get_session()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1707
    return v1

    .line 1702
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1703
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1704
    return v1

    .line 1699
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1700
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1701
    return v1

    .line 1695
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1696
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1698
    return v1
.end method

.method public blacklist grdmReleaseSession()I
    .locals 4

    .line 1738
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmReleaseSession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_release_session()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1757
    :catch_0
    move-exception v0

    .line 1758
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1759
    return v1

    .line 1754
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1755
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1756
    return v1

    .line 1751
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1753
    return v1

    .line 1747
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1748
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1750
    return v1
.end method

.method public blacklist grdmRequestKey(I[B)I
    .locals 4
    .param p1, "domainIndex"    # I
    .param p2, "key_blob"    # [B

    .line 1712
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "grdmRequestKey() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->grdm_request_key(I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1733
    return v1

    .line 1728
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1729
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1730
    return v1

    .line 1725
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1726
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1727
    return v1

    .line 1721
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1722
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1724
    return v1
.end method

.method public blacklist injectEsesmKeyset()I
    .locals 3

    .line 257
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "injectEsesmKeyset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v0, -0xa

    return v0

    .line 270
    :cond_0
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->inject_esesm_keyset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    return v1

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 280
    return v1

    .line 275
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 277
    return v1

    .line 271
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 272
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 274
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEseSupported()Z
    .locals 4

    .line 1876
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "isEseSupported() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v2

    const/16 v3, -0x64

    if-ne v2, v3, :cond_0

    .line 1885
    return v1

    .line 1887
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    const/4 v0, 0x1

    return v0

    .line 1899
    :catch_0
    move-exception v0

    .line 1900
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1901
    return v1

    .line 1896
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1897
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1898
    return v1

    .line 1893
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1894
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1895
    return v1

    .line 1889
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1890
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1892
    return v1
.end method

.method public blacklist isLccmSwp()I
    .locals 3

    .line 385
    const/16 v0, -0x5a

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->isLccmSwp()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    return v0

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 395
    return v0

    .line 390
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 392
    return v0

    .line 386
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v0

    .line 387
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "SEC_ESE_ServiceManager"

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 389
    const/16 v1, -0x5c

    return v1
.end method

.method public blacklist isOpened()Z
    .locals 6

    .line 1456
    const/4 v0, -0x1

    .line 1458
    .local v0, "result":I
    const-string v1, "SEC_ESE_ServiceManager"

    const-string v2, "isOpened() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v3

    .line 1470
    nop

    .line 1473
    const/16 v3, -0xc8

    if-ne v0, v3, :cond_0

    .line 1474
    :try_start_1
    const-string v3, "eSE is busy now"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v1, 0x1

    return v1

    .line 1483
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1476
    :cond_0
    if-nez v0, :cond_1

    .line 1477
    const-string v3, "eSE is NOT busy"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    goto :goto_0

    .line 1480
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eSE returned error value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1487
    :goto_0
    nop

    .line 1488
    return v2

    .line 1484
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpened close Exception! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    .line 1486
    return v2

    .line 1467
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1468
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpened openSpi Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return v2
.end method

.method public blacklist jniICD()I
    .locals 5

    .line 1188
    const-string v0, "SEC_ESE_ServiceManager"

    const/16 v1, -0x3e7

    .line 1196
    .local v1, "icdResult":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->ICD()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "icdResult":I
    .local v0, "icdResult":I
    goto :goto_0

    .line 1208
    .end local v0    # "icdResult":I
    .restart local v1    # "icdResult":I
    :catch_0
    move-exception v2

    .line 1209
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/16 v0, -0x3e7

    .end local v1    # "icdResult":I
    .restart local v0    # "icdResult":I
    goto :goto_1

    .line 1204
    .end local v0    # "icdResult":I
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "icdResult":I
    :catch_1
    move-exception v2

    .line 1206
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const/16 v0, -0x3e7

    .end local v1    # "icdResult":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "icdResult":I
    goto :goto_0

    .line 1201
    .end local v0    # "icdResult":I
    .restart local v1    # "icdResult":I
    :catch_2
    move-exception v2

    .line 1202
    .local v2, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/16 v0, -0x3e7

    .end local v1    # "icdResult":I
    .end local v2    # "e1":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "icdResult":I
    goto :goto_0

    .line 1198
    .end local v0    # "icdResult":I
    .restart local v1    # "icdResult":I
    :catch_3
    move-exception v2

    .line 1199
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/16 v0, -0x3e7

    .line 1211
    .end local v1    # "icdResult":I
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    .restart local v0    # "icdResult":I
    :goto_0
    nop

    .line 1214
    :goto_1
    return v0
.end method

.method public blacklist open()I
    .locals 2

    .line 1427
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "open() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist open(I)I
    .locals 2
    .param p1, "flag"    # I

    .line 1540
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "open() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist openSpi(I)I
    .locals 3
    .param p1, "flag"    # I

    .line 1907
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "openSpi() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/SemService/ISemService;->open_Spi(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1926
    :catch_0
    move-exception v0

    .line 1927
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1928
    return v1

    .line 1923
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1924
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1925
    return v1

    .line 1920
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1921
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1922
    return v1

    .line 1916
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1917
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1919
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist resetForCOSU(I)I
    .locals 5
    .param p1, "type"    # I

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetForCOSU is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v0, -0x1

    .line 1410
    .local v0, "result":I
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-nez v2, :cond_0

    .line 1411
    const-string v2, "SemService is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return v0

    .line 1416
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->resetForCOSU()I

    move-result v2

    move v0, v2

    .line 1417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetForCOSU : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    goto :goto_0

    .line 1418
    :catch_0
    move-exception v2

    .line 1419
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call resetForCOSU Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist scp11CertificateCheck()I
    .locals 3

    .line 226
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "scp11CertificateCheck() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v0, -0xa

    return v0

    .line 239
    :cond_0
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->scp11_certificate_check()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    return v1

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 249
    return v1

    .line 244
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 246
    return v1

    .line 240
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 241
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 243
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist semFactory()V
    .locals 3

    .line 158
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "semFactory() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->sem_factory()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 169
    :catch_2
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 166
    :catch_3
    move-exception v1

    .line 167
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 175
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 176
    :goto_1
    return-void
.end method

.method public blacklist sem_handleCCM([BI)[Ljava/lang/String;
    .locals 4
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I

    .line 321
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sem_handleCCM() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCM([BI)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    return-object v1

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 338
    return-object v1

    .line 333
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 335
    return-object v1

    .line 329
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 330
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 332
    return-object v1
.end method

.method public blacklist sem_handleCCMCB([BI[BI)[Ljava/lang/String;
    .locals 6
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .param p3, "respData"    # [B
    .param p4, "respLen"    # I

    .line 346
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sem_handleCCMCB() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "ccmData0103":[B
    const/4 v2, 0x0

    .line 356
    .local v2, "ret":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 358
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    move-object v1, v4

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmDataLen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-object v2

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    return-object v3

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 371
    return-object v3

    .line 366
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 368
    return-object v3

    .line 362
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v4

    .line 363
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v5, "Failed to connect service."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 365
    return-object v3
.end method

.method public blacklist send([B)[B
    .locals 8
    .param p1, "baCmd"    # [B

    .line 1492
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "send() for SE API is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const v1, 0x10002

    new-array v1, v1, [B

    .line 1500
    .local v1, "baRsp":[B
    const/4 v2, 0x0

    .line 1501
    .local v2, "cLen":I
    const/4 v3, 0x0

    .line 1503
    .local v3, "baRspLen":I
    if-eqz p1, :cond_0

    .line 1504
    array-length v2, p1

    .line 1505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Len : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v2, v1, v6}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v3, v5

    .line 1511
    const/4 v5, 0x1

    if-ge v3, v5, :cond_1

    .line 1512
    const-string v5, "RSP is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return-object v4

    .line 1515
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v1, v5

    .line 1516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    return-object v1

    .line 1531
    :catch_0
    move-exception v5

    .line 1532
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-object v4

    .line 1528
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1529
    .local v5, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return-object v4

    .line 1525
    .end local v5    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v5

    .line 1526
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    return-object v4

    .line 1520
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v5

    .line 1522
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return-object v4
.end method

.method public blacklist send([BI)[B
    .locals 8
    .param p1, "baCmd"    # [B
    .param p2, "flag"    # I

    .line 1562
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "send() for normal/secure SPI is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const v1, 0x10002

    new-array v1, v1, [B

    .line 1570
    .local v1, "baRsp":[B
    const/4 v2, 0x0

    .line 1571
    .local v2, "cLen":I
    const/4 v3, 0x0

    .line 1573
    .local v3, "baRspLen":I
    if-eqz p1, :cond_0

    .line 1574
    array-length v2, p1

    .line 1575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Len : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v5, p1, v2, v1, p2}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v3, v5

    .line 1581
    const/4 v5, 0x1

    if-ge v3, v5, :cond_1

    .line 1582
    const-string v5, "RSP is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    return-object v4

    .line 1585
    :cond_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v1, v5

    .line 1586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    return-object v1

    .line 1601
    :catch_0
    move-exception v5

    .line 1602
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    return-object v4

    .line 1598
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1599
    .local v5, "e1":Ljava/lang/UnsatisfiedLinkError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-object v4

    .line 1595
    .end local v5    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v5

    .line 1596
    .local v5, "e":Ljava/lang/NoClassDefFoundError;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    return-object v4

    .line 1590
    .end local v5    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v5

    .line 1592
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1593
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    return-object v4
.end method

.method public blacklist sendData([BI[B)I
    .locals 4
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B

    .line 1986
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sendData() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2007
    return v1

    .line 2002
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2003
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 2004
    return v1

    .line 1999
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 2000
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 2001
    return v1

    .line 1995
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1996
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1998
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist sendData([BI[BI)I
    .locals 3
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B
    .param p4, "flag"    # I

    .line 1960
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "sendData() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1981
    return v1

    .line 1976
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1977
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1978
    return v1

    .line 1973
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1974
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1975
    return v1

    .line 1969
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1970
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1972
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist sercureLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 1279
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "SecureLog() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/SemService/ISemService;->secureLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    nop

    .line 1304
    return-void

    .line 1300
    :catch_0
    move-exception v1

    .line 1301
    .local v1, "e":Ljava/lang/Error;
    const-string v2, "SL-ER"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-void

    .line 1297
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 1298
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SL-EX"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void

    .line 1294
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1295
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SL-ULE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return-void

    .line 1291
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v1

    .line 1292
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "SL-NCDFE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void

    .line 1288
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v1

    .line 1289
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return-void
.end method

.method public blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
    .locals 3
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "key_blob"    # [B

    .line 1636
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "startRequestCredentials() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_request_credentials([B[BLjava/lang/String;[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1657
    return v1

    .line 1652
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1654
    return v1

    .line 1649
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1651
    return v1

    .line 1645
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 1646
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1648
    const/16 v0, -0x5c

    return v0
.end method

.method public blacklist startSLOG()V
    .locals 3

    .line 1307
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "START SLOG is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->start_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    nop

    .line 1332
    return-void

    .line 1328
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "e":Ljava/lang/Error;
    const-string v2, "S_SL-ER"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    return-void

    .line 1325
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 1326
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "S_SL-EX"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    return-void

    .line 1322
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "S_SL-ULE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1319
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v1

    .line 1320
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "S_SL-NCDFE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void

    .line 1316
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v1

    .line 1317
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-void
.end method

.method public blacklist startattestation([BI[BI)I
    .locals 4
    .param p1, "drRsp"    # [B
    .param p2, "drLen"    # I
    .param p3, "svRsp"    # [B
    .param p4, "svLen"    # I

    .line 1218
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "startattestation() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/16 v1, -0x5c

    :try_start_0
    const-string v2, "StartAttestation"

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    .line 1227
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_attestation([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1240
    const/16 v1, -0x5a

    return v1

    .line 1235
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 1237
    return v1

    .line 1232
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 1234
    return v1

    .line 1228
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v2

    .line 1229
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v3, "Failed to connect service."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1231
    return v1
.end method

.method public blacklist stopRequestCredentials()V
    .locals 3

    .line 1662
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "stopRequestCredentials() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->stop_request_credentials()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1676
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1677
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 1674
    :catch_2
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    .line 1671
    :catch_3
    move-exception v1

    .line 1672
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1680
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :goto_0
    nop

    .line 1681
    :goto_1
    return-void
.end method

.method public blacklist stopSLOG()V
    .locals 3

    .line 1335
    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "STOP SLOG is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->stop_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    nop

    .line 1360
    return-void

    .line 1356
    :catch_0
    move-exception v1

    .line 1357
    .local v1, "e":Ljava/lang/Error;
    const-string v2, "S_SL-ER"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-void

    .line 1353
    .end local v1    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 1354
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ST_SL-EX"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void

    .line 1350
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1351
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "ST_SL-ULE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    return-void

    .line 1347
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_3
    move-exception v1

    .line 1348
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v2, "ST_SL-NCDFE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-void

    .line 1344
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_4
    move-exception v1

    .line 1345
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void
.end method

.method public blacklist verifyEsesmKeyset()I
    .locals 3

    .line 288
    const-string v0, "SEC_ESE_ServiceManager"

    const-string/jumbo v1, "verifyEsesmKeyset() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    const-string v1, "eSEK is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/16 v0, -0xa

    return v0

    .line 301
    :cond_0
    const/16 v1, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->verify_esesm_keyset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    return v1

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 311
    return v1

    .line 306
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 308
    return v1

    .line 302
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_3
    move-exception v1

    .line 303
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v2, "Failed to connect service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 305
    const/16 v0, -0x5c

    return v0
.end method
