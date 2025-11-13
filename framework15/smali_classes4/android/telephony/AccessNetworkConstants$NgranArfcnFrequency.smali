.class final enum Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
.super Ljava/lang/Enum;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NgranArfcnFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

.field public static final enum blacklist NGRAN_ARFCN_FREQUENCY_RANGE_1:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

.field public static final enum blacklist NGRAN_ARFCN_FREQUENCY_RANGE_2:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

.field public static final enum blacklist NGRAN_ARFCN_FREQUENCY_RANGE_3:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;


# instance fields
.field blacklist arfcnOffset:I

.field blacklist globalKhz:I

.field blacklist rangeFirst:I

.field blacklist rangeLast:I

.field blacklist rangeOffset:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
    .locals 3

    sget-object v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->NGRAN_ARFCN_FREQUENCY_RANGE_1:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    sget-object v1, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->NGRAN_ARFCN_FREQUENCY_RANGE_2:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    sget-object v2, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->NGRAN_ARFCN_FREQUENCY_RANGE_3:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    filled-new-array {v0, v1, v2}, [Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 17

    new-instance v8, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    const/4 v6, 0x0

    const v7, 0x927bf

    const-string v1, "NGRAN_ARFCN_FREQUENCY_RANGE_1"

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->NGRAN_ARFCN_FREQUENCY_RANGE_1:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    const v15, 0x927c0

    const v16, 0x1ec59a

    const-string v10, "NGRAN_ARFCN_FREQUENCY_RANGE_2"

    const/4 v11, 0x1

    const/16 v12, 0xf

    const v13, 0x2dc6c0

    const v14, 0x927c0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->NGRAN_ARFCN_FREQUENCY_RANGE_2:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    new-instance v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    const v7, 0x1ec59b

    const v8, 0x32093d

    const-string v2, "NGRAN_ARFCN_FREQUENCY_RANGE_3"

    const/4 v3, 0x2

    const/16 v4, 0x3c

    const v5, 0x17206e0

    const v6, 0x1ec59b

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->NGRAN_ARFCN_FREQUENCY_RANGE_3:Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    invoke-static {}, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->$values()[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    move-result-object v0

    sput-object v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->globalKhz:I

    iput p4, p0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeOffset:I

    iput p5, p0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->arfcnOffset:I

    iput p6, p0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeFirst:I

    iput p7, p0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->rangeLast:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    return-object v0
.end method

.method public static blacklist values()[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;
    .locals 1

    sget-object v0, Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    invoke-virtual {v0}, [Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;

    return-object v0
.end method
