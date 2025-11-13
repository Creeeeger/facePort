.class final enum Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
.super Ljava/lang/Enum;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GeranBandArfcnFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;


# instance fields
.field blacklist arfcnOffset:I

.field blacklist arfcnRangeFirst:I

.field blacklist arfcnRangeLast:I

.field blacklist band:I

.field blacklist downlinkOffset:I

.field blacklist uplinkFrequencyFirst:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .locals 12

    sget-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v2, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v3, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v4, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v6, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v7, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v10, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    sget-object v11, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    filled-new-array/range {v0 .. v11}, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 19

    new-instance v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v7, 0x125

    const/16 v8, 0xa

    const-string v1, "GERAN_ARFCN_FREQUENCY_BAND_450"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x6e028

    const/16 v5, 0x103

    const/16 v6, 0x103

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v17, 0x154

    const/16 v18, 0xa

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_480"

    const/4 v12, 0x1

    const/4 v13, 0x4

    const v14, 0x74f18

    const/16 v15, 0x132

    const/16 v16, 0x132

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v8, 0xfb

    const/16 v9, 0x2d

    const-string v2, "GERAN_ARFCN_FREQUENCY_BAND_850"

    const/4 v3, 0x2

    const/16 v4, 0x8

    const v5, 0xc9388

    const/16 v6, 0x80

    const/16 v7, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v17, 0x375

    const/16 v18, 0x5f

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_DCS1800"

    const/4 v12, 0x3

    const/16 v13, 0xc

    const v14, 0x1a1878

    const/16 v15, 0x200

    const/16 v16, 0x200

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v8, 0x32a

    const/16 v9, 0x50

    const-string v2, "GERAN_ARFCN_FREQUENCY_BAND_PCS1900"

    const/4 v3, 0x4

    const/16 v4, 0xd

    const v5, 0x1c3b58

    const/16 v6, 0x200

    const/16 v7, 0x200

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v17, 0x7c

    const/16 v18, 0x2d

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_E900_1"

    const/4 v12, 0x5

    const/16 v13, 0xa

    const v14, 0xd9490

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v8, 0x3ff

    const/16 v9, 0x2d

    const-string v2, "GERAN_ARFCN_FREQUENCY_BAND_E900_2"

    const/4 v3, 0x6

    const/16 v4, 0xa

    const v5, 0xd9490

    const/16 v6, 0x400

    const/16 v7, 0x3cf

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_R900_1"

    const/4 v12, 0x7

    const/16 v13, 0xb

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v2, "GERAN_ARFCN_FREQUENCY_BAND_R900_2"

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/16 v7, 0x3bb

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_P900"

    const/16 v12, 0x9

    const/16 v13, 0x9

    const/16 v16, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v8, 0x7c

    const-string v2, "GERAN_ARFCN_FREQUENCY_BAND_ER900_1"

    const/16 v3, 0xa

    const/16 v4, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/16 v17, 0x3ff

    const/16 v18, 0x400

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_ER900_2"

    const/16 v12, 0xb

    const/16 v13, 0xe

    const/16 v15, 0x400

    const/16 v16, 0x3ac

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    invoke-static {}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    move-result-object v0

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->band:I

    iput p4, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->uplinkFrequencyFirst:I

    iput p5, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnOffset:I

    iput p6, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeFirst:I

    iput p7, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeLast:I

    iput p8, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->downlinkOffset:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-object v0
.end method

.method public static blacklist values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .locals 1

    sget-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    invoke-virtual {v0}, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-object v0
.end method
