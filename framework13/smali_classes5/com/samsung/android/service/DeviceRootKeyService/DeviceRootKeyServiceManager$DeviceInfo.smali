.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceInfo"
.end annotation


# static fields
.field public static final blacklist DEVICE_INFO_ALL:I = 0xe

.field private static final blacklist DEVICE_INFO_EMPTY:I = 0x0

.field public static final blacklist DEVICE_INFO_IMEI:I = 0x4

.field public static final blacklist DEVICE_INFO_IMEI_MODEM:I = 0x6

.field public static final blacklist DEVICE_INFO_IMEI_SERIAL:I = 0xc

.field public static final blacklist DEVICE_INFO_INTEGRITY_STATUS:I = 0x1

.field public static final blacklist DEVICE_INFO_MODEM:I = 0x2

.field public static final blacklist DEVICE_INFO_MODEM_SERIAL:I = 0xa

.field public static final blacklist DEVICE_INFO_SERIAL:I = 0x8

.field private static final blacklist DEVICE_STATUS_IS_INVALID:B = 0x0t

.field private static final blacklist DEVICE_STATUS_IS_VALID:B = 0x1t

.field private static final blacklist MAX_SHA256_LENGTH:I = 0x20

.field private static final blacklist MAX_STATUS_LENGTH:I = 0x1

.field private static final blacklist TLV_EX_BASE:I = 0x64


# instance fields
.field private blacklist mImeiHash:[B

.field private blacklist mIsHuidMatched:Z

.field private blacklist mModemHash:[B

.field private blacklist mSerialHash:[B

.field final synthetic blacklist this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    .locals 5
    .param p1, "this$0"    # Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
    .param p2, "infoType"    # I

    .line 267
    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    .line 262
    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    .line 263
    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "tByteArray":[B
    const/4 v2, 0x0

    .line 270
    .local v2, "tag":I
    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 271
    const/16 v2, 0x66

    .line 272
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 273
    if-eqz v1, :cond_0

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    .line 278
    :cond_0
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 279
    const/16 v2, 0x68

    .line 280
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 281
    if-eqz v1, :cond_1

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    .line 286
    :cond_1
    and-int/lit8 v3, p2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 287
    const/16 v2, 0x6c

    .line 288
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 289
    if-eqz v1, :cond_2

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    .line 294
    :cond_2
    const/16 v2, 0x65

    .line 295
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    .line 296
    if-eqz v1, :cond_4

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    aget-byte v3, v1, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v0, v4

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    .line 299
    :cond_4
    return-void
.end method

.method private blacklist isValidLength(II)Z
    .locals 3
    .param p1, "tag"    # I
    .param p2, "len"    # I

    .line 319
    add-int/lit8 v0, p1, -0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 333
    return v2

    .line 323
    :sswitch_0
    const/16 v0, 0x20

    if-eq p2, v0, :cond_0

    .line 324
    return v2

    .line 328
    :sswitch_1
    if-eq p2, v1, :cond_0

    .line 329
    return v2

    .line 335
    :cond_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist getImei()[B
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    return-object v0
.end method

.method public blacklist getModem()[B
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    return-object v0
.end method

.method public blacklist getSerial()[B
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    return-object v0
.end method

.method public blacklist isHuidMatched()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    return v0
.end method
