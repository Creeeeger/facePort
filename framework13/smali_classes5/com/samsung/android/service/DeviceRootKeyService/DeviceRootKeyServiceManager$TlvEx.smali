.class final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TlvEx"
.end annotation


# static fields
.field private static final blacklist LENGTH_FIELD_SIZE:I = 0x2

.field private static final blacklist TAGLENGTH_FIELD_SIZE:I = 0x3

.field private static final blacklist TAG_FIELD_SIZE:I = 0x1

.field private static final blacklist TLV_TAG_START:I = 0xfe


# instance fields
.field private blacklist mTlvList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;[B)V
    .locals 1
    .param p2, "tlvBuffer"    # [B

    .line 350
    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    .line 353
    invoke-direct {p0, p2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->parseTlv([B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    return-void

    .line 354
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to parse Tlv."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist getLength([BI)I
    .locals 2
    .param p1, "tlvBuffer"    # [B
    .param p2, "pos"    # I

    .line 367
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist getTag([BI)I
    .locals 1
    .param p1, "tlvBuffer"    # [B
    .param p2, "pos"    # I

    .line 363
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private blacklist parseTlv([B)Z
    .locals 8
    .param p1, "tlvBuffer"    # [B

    .line 372
    const/4 v0, 0x0

    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "pos":I
    const/4 v2, 0x0

    .line 374
    .local v2, "tag":I
    const-string v3, "DEVROOT#MGR"

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    array-length v5, p1

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    goto :goto_2

    .line 379
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTag([BI)I

    move-result v2

    .line 380
    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 381
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getLength([BI)I

    move-result v0

    .line 382
    add-int/lit8 v1, v1, 0x2

    .line 384
    const/16 v6, 0xfe

    if-ne v2, v6, :cond_4

    add-int v6, v1, v0

    array-length v7, p1

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 389
    :cond_1
    :goto_0
    add-int/lit8 v3, v1, 0x3

    array-length v6, p1

    if-gt v3, v6, :cond_3

    .line 390
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTag([BI)I

    move-result v2

    .line 391
    add-int/lit8 v1, v1, 0x1

    .line 392
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getLength([BI)I

    move-result v0

    .line 393
    add-int/lit8 v1, v1, 0x2

    .line 395
    add-int v3, v1, v0

    array-length v6, p1

    if-gt v3, v6, :cond_2

    .line 396
    new-array v3, v0, [B

    .line 397
    .local v3, "temp":[B
    invoke-static {p1, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget-object v6, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .end local v3    # "temp":[B
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0

    .line 403
    :cond_3
    return v5

    .line 385
    :cond_4
    :goto_1
    const-string v5, "Failed to read TLV header"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return v4

    .line 375
    :cond_5
    :goto_2
    const-string v5, "Invalid argument"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v4
.end method


# virtual methods
.method public blacklist getTlvValue(I)[B
    .locals 2
    .param p1, "tlvTag"    # I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
