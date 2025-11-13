.class public final Lcom/android/systemui/volume/util/MfData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I


# instance fields
.field public final mDeviceId:[B

.field public final mManufacturerRawData:[B

.field public final mManufacturerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/util/MfData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/MfData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/volume/util/MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/systemui/volume/util/MfData;->mDeviceId:[B

    iput-object p1, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerRawData:[B

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/16 v8, 0x9

    if-ge v1, v8, :cond_0

    iput v3, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerType:I

    goto :goto_2

    :cond_0
    const/4 v1, 0x5

    aget-byte v9, p1, v1

    if-nez v9, :cond_1

    const/4 v10, 0x6

    aget-byte v10, p1, v10

    if-ne v10, v0, :cond_1

    iput v2, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerType:I

    goto :goto_2

    :cond_1
    if-ne v9, v8, :cond_2

    aget-byte v10, p1, v7

    if-nez v10, :cond_2

    iput v0, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerType:I

    goto :goto_2

    :cond_2
    if-ne v9, v8, :cond_8

    aget-byte v9, p1, v7

    if-ne v9, v0, :cond_8

    iput v6, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerType:I

    aget-byte v9, p1, v5

    move v10, v3

    :goto_0
    if-ge v10, v1, :cond_9

    shl-int v11, v2, v10

    int-to-byte v11, v11

    and-int/2addr v11, v9

    int-to-byte v11, v11

    if-ne v11, v2, :cond_3

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-ne v11, v0, :cond_4

    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_4
    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    add-int/lit8 v8, v8, 0x6

    goto :goto_1

    :cond_5
    if-ne v11, v5, :cond_6

    add-int/lit8 v8, v8, 0x12

    goto :goto_1

    :cond_6
    if-ne v11, v4, :cond_7

    sput v8, Lcom/android/systemui/volume/util/MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    aget-byte v11, p1, v8

    add-int/2addr v11, v2

    add-int/2addr v11, v8

    move v8, v11

    :cond_7
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    iput v3, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerType:I

    :cond_9
    :goto_2
    iget v1, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerType:I

    if-eq v1, v2, :cond_d

    if-eq v1, v0, :cond_c

    if-eq v1, v6, :cond_a

    goto :goto_3

    :cond_a
    if-eq v1, v6, :cond_b

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/volume/util/MfData;->mManufacturerRawData:[B

    if-eqz v1, :cond_e

    aget-byte v1, v1, v5

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_e

    sget v1, Lcom/android/systemui/volume/util/MfData;->MANUFACTURER_OFFSET_SS_LE_ASSOCIATED_SERVICE_DATA_LENGTH:I

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/volume/util/MfData;->mDeviceId:[B

    invoke-static {p1, v1, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_c
    const/16 v1, 0x1f

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    if-lez v2, :cond_e

    array-length v4, p1

    add-int/2addr v2, v1

    if-le v4, v2, :cond_e

    iget-object p0, p0, Lcom/android/systemui/volume/util/MfData;->mDeviceId:[B

    const/16 v1, 0x20

    invoke-static {p1, v1, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/volume/util/MfData;->mDeviceId:[B

    invoke-static {p1, v7, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_3
    return-void
.end method
