.class public final enum Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 7

    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    sget-object v2, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    sget-object v3, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    sget-object v4, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    sget-object v5, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    sget-object v6, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smvalueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 0

    invoke-static {p0}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v1, -0x1

    const-string v2, "TYPE_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v1, "TYPE_MOBILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string v1, "TYPE_WIFI"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v1, 0x3

    const/16 v2, 0xb

    const-string v3, "TYPE_MOBILE_IMS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v1, 0x4

    const/16 v2, 0xc

    const-string v3, "TYPE_MOBILE_CBS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v1, 0x5

    const/16 v2, 0x1b

    const-string v3, "TYPE_MOBILE_XCAP"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v1, 0x6

    const/16 v2, 0xf

    const-string v3, "TYPE_MOBILE_EMERGENCY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-static {}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

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

    iput p3, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    return-void
.end method

.method private static valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 6

    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-static {}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    if-ne v5, p0, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    const-class v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-virtual {v0}, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    return p0
.end method
