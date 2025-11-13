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

.field public static final blacklist SSD_NOT_SELECTABLE_APPLET_NOT_IN_SSD:I = 0x6

.field public static final blacklist SSD_SELECTABLE_APPLET_EXIST:I = 0x0

.field public static final blacklist SSD_SELECTABLE_APPLET_NOT_EXIST:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SEC_ESE_ServiceManager"

.field private static blacklist cosName:Ljava/lang/String; = null

.field public static final blacklist isSupportSemService:Z = false

.field private static final blacklist normalSpi_Flag:I = 0x0

.field private static final blacklist secureSpi_Flag:I = 0x1


# instance fields
.field private blacklist isSupportSemServiceManager:Z

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

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->ERROR_NO_PERMISSION_STRING:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    const-string v0, "UT8.2U"

    sput-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->cosName:Ljava/lang/String;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    iput-object p1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->cosName:Ljava/lang/String;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v1, "SEC_ESE_ServiceManager"

    if-eqz v0, :cond_2

    const-string v0, "SemService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-nez v0, :cond_1

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

    :cond_1
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

    goto :goto_0

    :cond_2
    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist AIDDeactivation(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "80F80002"

    iget-boolean v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v6, "SEC_ESE_ServiceManager"

    if-nez v5, :cond_0

    const-string v5, "SemService is not supported"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, -0x5c

    return v5

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    const/4 v7, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v8, "AID Null Error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%02x"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "80F80002"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v8, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "00"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v11, v1

    if-ge v11, v9, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DEAID SW : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v2, -0x2

    aget-byte v12, v1, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v2, -0x1

    aget-byte v12, v1, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v2, v9, :cond_5

    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v1, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_3

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v1, v9

    if-eqz v9, :cond_4

    :cond_3
    add-int/lit8 v9, v2, -0x2

    aget-byte v9, v1, v9

    const/16 v11, 0x63

    if-ne v9, v11, :cond_5

    add-int/lit8 v9, v2, -0x1

    aget-byte v9, v1, v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_5

    :cond_4
    const-string v9, "deactivate list success"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v9, "deactivate list fail"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const-string v9, "Aid Deactivation Error"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    return v3
.end method

.method public static blacklist byteToHex(B)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    sget-object v1, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char v0, v2, v3

    const/4 v0, 0x1

    aput-char v1, v2, v0

    move-object v0, v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist bytesToHex([B)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    sget-object v4, Lcom/samsung/android/service/SemService/SemServiceManager;->HEX_CHARS:[C

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist hexToBytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v2

    new-array v1, v0, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

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

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private blacklist isSupportEsek()Z
    .locals 5

    const-string v0, "ro.security.ese.support_esek"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v2

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

    return v1
.end method

.method private blacklist parseList([BI)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SEC_ESE_ServiceManager"

    if-nez p1, :cond_0

    const-string v2, "parse list aid null error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v5, :cond_1

    const-string v5, "SemService is not supported"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-byte v3, p1, v0

    if-lez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    new-array v5, v3, [B

    add-int v6, v0, v3

    invoke-static {p1, v0, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    add-int/2addr v0, v6

    invoke-static {v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method


# virtual methods
.method public blacklist COSSPIAccessControl(I)I
    .locals 4

    const-string v0, "COSSPIAccessControl() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    const/16 v3, -0x5a

    if-ne p1, v0, :cond_1

    :try_start_0
    const-string v0, "SPIAC SPI Open"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "SPIAC SPI Close"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I

    move-result v0

    return v0

    :cond_2
    const-string v0, "SPIAC Type Error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v3

    :goto_3
    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist accessControlForCOSU(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "%02x"

    const/4 v4, -0x1

    const/16 v5, 0xe

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, v1, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v11, "SEC_ESE_ServiceManager"

    if-nez v10, :cond_0

    const-string v3, "SemService is not supported"

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x5c

    return v3

    :cond_0
    if-eqz v2, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v10

    move v4, v10

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPEN Error "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_a

    return v4

    :cond_2
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v1, v5}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v10

    move-object v6, v10

    if-eqz v6, :cond_b

    array-length v10, v6

    const/4 v12, 0x2

    if-ge v10, v12, :cond_3

    move/from16 v17, v4

    goto/16 :goto_4

    :cond_3
    array-length v10, v6

    move v7, v10

    const/4 v10, 0x0

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

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v7, v12, :cond_a

    add-int/lit8 v13, v7, -0x2

    aget-byte v13, v6, v13

    const/16 v14, -0x70

    if-ne v13, v14, :cond_a

    add-int/lit8 v13, v7, -0x1

    aget-byte v13, v6, v13

    if-nez v13, :cond_a

    const/4 v13, 0x0

    const/4 v15, 0x0

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

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_9

    const/4 v14, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5

    if-nez v17, :cond_4

    move/from16 v17, v4

    :try_start_2
    const-string v4, "AID Data Error"

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    move-object v2, v13

    const/16 v13, -0x70

    goto/16 :goto_2

    :cond_4
    move/from16 v17, v4

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v16, 0x2

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "80F600"

    move-object v8, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    invoke-static {v8}, Lcom/samsung/android/service/SemService/SemServiceManager;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AID : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v13

    move-object v6, v13

    if-eqz v6, :cond_8

    array-length v13, v6

    const/4 v15, 0x2

    if-ge v13, v15, :cond_5

    const/16 v13, -0x70

    goto :goto_1

    :cond_5
    array-length v13, v6

    move v7, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RSP SW : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    invoke-static {v15}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    if-lt v7, v13, :cond_6

    add-int/lit8 v15, v7, -0x2

    aget-byte v15, v6, v15

    const/16 v13, -0x70

    if-ne v15, v13, :cond_7

    add-int/lit8 v15, v7, -0x1

    aget-byte v15, v6, v15

    if-nez v15, :cond_7

    const-string v15, "AL Success"

    invoke-static {v11, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    goto :goto_2

    :cond_6
    const/16 v13, -0x70

    :cond_7
    const-string v15, "AL Fail"

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    move-object v15, v14

    goto :goto_2

    :cond_8
    const/16 v13, -0x70

    :goto_1
    const-string v15, "Send Error"

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    move-object v15, v14

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object v13, v2

    move/from16 v4, v17

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_9
    move/from16 v17, v4

    goto :goto_3

    :cond_a
    move/from16 v17, v4

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

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0xb

    :goto_3
    if-lez v10, :cond_d

    const/16 v4, -0x10

    goto/16 :goto_b

    :cond_b
    move/from16 v17, v4

    :goto_4
    const-string v2, "Select Error"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v2, -0xb

    return v2

    :catch_0
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v2, v0

    move/from16 v4, v17

    goto/16 :goto_a

    :catch_5
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    goto :goto_6

    :catch_6
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    goto :goto_7

    :catch_7
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    goto :goto_8

    :catch_8
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    goto :goto_9

    :catch_9
    move-exception v0

    move/from16 v17, v4

    move-object v2, v0

    goto/16 :goto_a

    :cond_c
    :goto_5
    :try_start_3
    const-string v2, "AID/Flag Null Error"

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_a

    const/16 v2, -0xd

    return v2

    :catch_a
    move-exception v0

    move-object v2, v0

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x5a

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v2, v0

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x5a

    goto :goto_b

    :catch_c
    move-exception v0

    move-object v2, v0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to link."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x5a

    goto :goto_b

    :catch_d
    move-exception v0

    move-object v2, v0

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find class."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x5a

    goto :goto_b

    :catch_e
    move-exception v0

    move-object v2, v0

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect service."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x5a

    :cond_d
    :goto_b
    nop

    :goto_c
    if-eqz v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    :cond_e
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

.method public blacklist agentSLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->agent_SLOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    const-string v2, "ST_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v0

    const-string v2, "ST_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v0

    const-string v2, "ST_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist checkFRANetwork(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFRANetwork() is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->check_Network(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-void

    :catch_3
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public blacklist checkSeState([B[B)I
    .locals 4

    const-string v0, "checkSeState() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->check_SeState([B[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist close()I
    .locals 2

    const-string v0, "close() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist close(I)I
    .locals 2

    const-string v0, "close() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist closeSpi(I)I
    .locals 4

    const-string v0, "closeSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/SemService/ISemService;->close_Spi(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist continueattestation(Ljava/lang/String;I[B)I
    .locals 4

    const-string v0, "continueattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    const-string v0, "ContinueAttestation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/service/SemService/ISemService;->continue_attestation(Ljava/lang/String;I[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x5a

    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v2

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist deactivateCards(I[Ljava/lang/String;[II)I
    .locals 4

    const-string v0, "deactivateCards is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_Cards(I[Ljava/lang/String;[II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist deactivateCardsAID(II[Ljava/lang/String;[II)I
    .locals 9

    const-string v0, "deactivateCardsAID is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_CardsAID(II[Ljava/lang/String;[II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist deactivateSCRSList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const v0, 0x16800

    const-string v1, "02"

    const-string v2, "03"

    const-string v3, "01"

    move-object v4, p1

    move-object v5, p2

    const-string v6, "com.sec.action.CDA_FINISH"

    const-string v7, "com.sec.action.CDA_VALUE"

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v9, :cond_0

    const-string v9, "SEC_ESE_ServiceManager"

    const-string v10, "SemService is not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, -0x5c

    return v9

    :cond_0
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/service/SemService/SemServiceManager$1;

    invoke-direct {v10, p0, v4, v5}, Lcom/samsung/android/service/SemService/SemServiceManager$1;-><init>(Lcom/samsung/android/service/SemService/SemServiceManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    const/4 v9, 0x0

    return v9
.end method

.method public blacklist eSEAidFactoryReset([BI)I
    .locals 4

    const-string v0, "eSEAidFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->eSE_AidFactoryReset([BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist eSEFactoryReset()I
    .locals 4

    const-string v0, "eSEFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist eSEFullFactoryReset()I
    .locals 4

    const-string v0, "eSEFullFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->eSE_FullFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist eSELowFactoryReset()I
    .locals 4

    const-string v0, "eSELowFactoryReset() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->eSE_LowFactoryReset()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist esekCertificateCheck()I
    .locals 4

    const-string v0, "esekCertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_1

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->esek_certificate_check()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist getAtr()I
    .locals 4

    const-string v0, "getAtr() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->getAtr_Spi()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 4

    const-string v0, "getCPLC14mode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->getCPLC14mode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist getHQMMemory([B)I
    .locals 4

    const-string v0, "getHQMMemory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/SemService/ISemService;->get_HQMMemory([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist getPK([B)I
    .locals 2

    const-string v0, "SEC_ESE_ServiceManager"

    const-string v1, "getPK() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSCRSVersion()I
    .locals 13

    const/4 v0, -0x1

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v8, "SEC_ESE_ServiceManager"

    if-nez v7, :cond_0

    const-string v7, "SemService is not supported"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, -0x5c

    return v7

    :cond_0
    :try_start_0
    const-string v7, "ro.factory.factory_binary"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v9, "factory"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "FACTORY NOT SUPPORT"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0xa

    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->open()I

    move-result v9

    move v0, v9

    if-eqz v0, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OPEN Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v3, v9

    if-eqz v3, :cond_9

    array-length v9, v3

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    goto/16 :goto_2

    :cond_3
    array-length v9, v3

    move v4, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Select SW : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v4, -0x2

    aget-byte v11, v3, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v4, -0x1

    aget-byte v11, v3, v11

    invoke-static {v11}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v4, v10, :cond_8

    add-int/lit8 v9, v4, -0x2

    aget-byte v9, v3, v9

    const/16 v11, -0x70

    if-ne v9, v11, :cond_8

    add-int/lit8 v9, v4, -0x1

    aget-byte v9, v3, v9

    if-nez v9, :cond_8

    invoke-virtual {p0, v2}, Lcom/samsung/android/service/SemService/SemServiceManager;->send([B)[B

    move-result-object v9

    move-object v3, v9

    if-eqz v3, :cond_7

    array-length v9, v3

    if-ge v9, v10, :cond_4

    goto/16 :goto_1

    :cond_4
    array-length v9, v3

    move v4, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RSP SW : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v4, -0x2

    aget-byte v12, v3, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v12, v4, -0x1

    aget-byte v12, v3, v12

    invoke-static {v12}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    if-le v4, v9, :cond_6

    add-int/lit8 v12, v4, -0x2

    aget-byte v12, v3, v12

    if-ne v12, v11, :cond_6

    add-int/lit8 v11, v4, -0x1

    aget-byte v11, v3, v11

    if-nez v11, :cond_6

    aget-byte v10, v3, v10

    invoke-static {v10}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v9, v3, v9

    invoke-static {v9}, Lcom/samsung/android/service/SemService/SemServiceManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    if-eqz v5, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v0, v9

    goto :goto_0

    :cond_5
    const-string v9, "Parse Version Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xd

    goto :goto_0

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xc

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SCRS Version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    :goto_1
    const-string v9, "Send Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    const/16 v8, -0xc

    return v8

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select Fail "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xb

    goto/16 :goto_3

    :cond_9
    :goto_2
    const-string v9, "Select Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, -0xb

    return v8

    :catch_0
    move-exception v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_4

    :catch_1
    move-exception v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_3

    :catch_2
    move-exception v7

    const-string v9, "Failed to link."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_3

    :catch_3
    move-exception v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find class."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    goto :goto_3

    :catch_4
    move-exception v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect service. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5a

    :goto_3
    nop

    :goto_4
    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->close()I

    :cond_a
    return v0

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

    const-string v0, "get_ESEA() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->get_ESEA()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist grdmCheckRestrictedMode()Ljava/lang/String;
    .locals 4

    const-string v0, "grdmCheckRestrictedMode() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->grdm_check_restricted_mode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist grdmCheckStatus()I
    .locals 4

    const-string v0, "grdmCheckStatus() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/16 v0, -0x5a

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

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmGetAttesCert(I[B)I
    .locals 4

    const-string v0, "grdmGetAttesCert() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/16 v0, -0x5a

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

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmGetSession()I
    .locals 4

    const-string v0, "grdmGetSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/16 v0, -0x5a

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

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmReleaseSession()I
    .locals 4

    const-string v0, "grdmReleaseSession() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/16 v0, -0x5a

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

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist grdmRequestKey(I[B)I
    .locals 4

    const-string v0, "grdmRequestKey() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/16 v0, -0x5a

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

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v2

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SEC_ESE_ServiceManager"

    const-string v2, "SemService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public blacklist isEseSupported()Z
    .locals 4

    const-string v0, "isEseSupported() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v0

    const/16 v3, -0x64

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v2

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist isLccmSwp()I
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v1, -0x5c

    const-string v2, "SEC_ESE_ServiceManager"

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->isLccmSwp()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v1
.end method

.method public blacklist isOpened()Z
    .locals 6

    const/4 v0, -0x1

    const-string v1, "isOpened() is called."

    const-string v2, "SEC_ESE_ServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v1, "SemService is not supported"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v4

    nop

    const/16 v4, -0xc8

    if-ne v0, v4, :cond_1

    :try_start_1
    const-string v4, "eSE is busy now"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v3, "eSE is NOT busy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eSE returned error value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    nop

    return v1

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

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/service/SemService/SemServiceManager;->closeSpi(I)I

    return v1

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOpened openSpi Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist jniICD()I
    .locals 5

    const/16 v0, -0x3e7

    iget-boolean v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const-string v2, "SEC_ESE_ServiceManager"

    if-nez v1, :cond_0

    const-string v1, "SemService is not supported"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5c

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v1}, Lcom/samsung/android/service/SemService/ISemService;->ICD()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USLE Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NCDF Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e7

    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public blacklist open()I
    .locals 2

    const-string v0, "open() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist open(I)I
    .locals 2

    const-string v0, "open() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x5c

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/service/SemService/SemServiceManager;->openSpi(I)I

    move-result v0

    return v0
.end method

.method public blacklist openSpi(I)I
    .locals 4

    const-string v0, "openSpi() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/SemService/ISemService;->open_Spi(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist resetForCOSU(I)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetForCOSU is called. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iget-boolean v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v2, :cond_0

    const-string v2, "SemService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x5c

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-nez v2, :cond_1

    const-string v2, "SemService is not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->resetForCOSU()I

    move-result v2

    move v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetForCOSU : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

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

    :goto_0
    return v0
.end method

.method public blacklist scp11CertificateCheck()I
    .locals 4

    const-string v0, "scp11CertificateCheck() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportEsek()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eSEK is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_1

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3}, Lcom/samsung/android/service/SemService/ISemService;->scp11_certificate_check()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist semFactory()V
    .locals 3

    const-string v0, "semFactory() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->sem_factory()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public blacklist sem_handleCCM([BI)[Ljava/lang/String;
    .locals 4

    const-string v0, "sem_handleCCM() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCM([BI)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v2

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v2
.end method

.method public blacklist sem_handleCCMCB([BI[BI)[Ljava/lang/String;
    .locals 6

    const-string v0, "sem_handleCCMCB() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "SemService is not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMCB([BI[BI)[Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    move-object v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmData : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccmDataLen : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return-object v4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return-object v4

    :catch_3
    move-exception v3

    const-string v5, "Failed to connect service."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public blacklist sem_handleCCMScp11c([BI)I
    .locals 3

    const-string v0, "sem_handleCCMScp11c() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    return v0

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCMScp11c([BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v1, -0x5c

    return v1
.end method

.method public blacklist send([B)[B
    .locals 8

    const-string v0, "send() for SE API is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const v0, 0x10002

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v3, v0, v6}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v4, v5

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    const-string v5, "RSP is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist send([BI)[B
    .locals 8

    const-string v0, "send() for normal/secure SPI is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const v0, 0x10002

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Len : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v5, p1, v3, v0, p2}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v5

    move v4, v5

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    const-string v5, "RSP is null"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    move-object v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baRsp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USLE Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NCDF Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist sendData([BI[B)I
    .locals 5

    const-string v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, p3, v4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist sendData([BI[BI)I
    .locals 4

    const-string v0, "sendData() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist sercureLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SecureLog() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1}, Lcom/samsung/android/service/SemService/ISemService;->secureLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v2, "SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    const-string v2, "SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v0

    const-string v2, "SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v0

    const-string v2, "SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist startRequestCredentials([B[BLjava/lang/String;[B)I
    .locals 4

    const-string v0, "startRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, -0x5a

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_request_credentials([B[BLjava/lang/String;[B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v0

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist startSLOG()V
    .locals 3

    const-string v0, "START SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->start_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    const-string v2, "S_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v0

    const-string v2, "S_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v0

    const-string v2, "S_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist startattestation([BI[BI)I
    .locals 4

    const-string v0, "startattestation() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    const/16 v2, -0x5c

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    const-string v0, "StartAttestation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/service/SemService/SemServiceManager;->sercureLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->start_attestation([BI[BI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0x5a

    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v2

    :catch_3
    move-exception v0

    const-string v3, "Failed to connect service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v2
.end method

.method public blacklist stopRequestCredentials()V
    .locals 3

    const-string v0, "stopRequestCredentials() is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->stop_request_credentials()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public blacklist stopSLOG()V
    .locals 3

    const-string v0, "STOP SLOG is called."

    const-string v1, "SEC_ESE_ServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->isSupportSemServiceManager:Z

    if-nez v0, :cond_0

    const-string v0, "SemService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v0}, Lcom/samsung/android/service/SemService/ISemService;->stop_SLOG()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v2, "S_SL-ER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    const-string v2, "ST_SL-EX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v0

    const-string v2, "ST_SL-ULE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v0

    const-string v2, "ST_SL-NCDFE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    const-string v2, "Failed to connect service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
