.class public final enum Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NETWORK_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum CDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EDGE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EHRPD:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EVDO_0:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EVDO_A:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum EVDO_B:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum GPRS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum GSM:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSDPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSPAP:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum HSUPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum LTE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum NR:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum TDSCDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum UMTS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

.field public static final enum _1XRTT:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;


# instance fields
.field private mType:I


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .locals 20

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->GPRS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EDGE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UMTS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v4, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->CDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v5, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_0:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v6, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_A:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v7, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->_1XRTT:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v8, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSDPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v9, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSUPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v10, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v11, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_B:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v12, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->LTE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v13, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EHRPD:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v14, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSPAP:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v15, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->GSM:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v16, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->TDSCDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v17, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v18, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->NR:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v19, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    filled-new-array/range {v0 .. v19}, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetmType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I
    .locals 0

    iget p0, p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->mType:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "GPRS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->GPRS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "EDGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EDGE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "UMTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UMTS:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "CDMA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->CDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "EVDO_0"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_0:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "EVDO_A"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_A:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "_1XRTT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->_1XRTT:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "HSDPA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSDPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "HSUPA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSUPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "HSPA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSPA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "EVDO_B"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EVDO_B:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "LTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->LTE:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "EHRPD"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->EHRPD:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "HSPAP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->HSPAP:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "GSM"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->GSM:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "TDSCDMA"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->TDSCDMA:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "WIFI"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->WIFI:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const-string v1, "NR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->NR:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const/16 v1, 0x13

    const/16 v2, 0x64

    const-string v3, "ALL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->$values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->mType:I

    return-void
.end method

.method public static from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .locals 5

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->mType:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object p0
.end method

.method public static from(Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .locals 5

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .locals 1

    const-class v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->$VALUES:[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-virtual {v0}, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "hspa+"

    goto :goto_0

    :cond_1
    const-string p0, "1xrtt"

    :goto_0
    return-object p0
.end method
