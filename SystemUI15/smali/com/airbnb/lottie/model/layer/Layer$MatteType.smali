.class public final enum Lcom/airbnb/lottie/model/layer/Layer$MatteType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/layer/Layer$MatteType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum ADD:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum LUMA:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum LUMA_INVERTED:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public static final enum NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    new-instance v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ADD:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    new-instance v2, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v3, "INVERT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    new-instance v3, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v4, "LUMA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->LUMA:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    new-instance v4, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v5, "LUMA_INVERTED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->LUMA_INVERTED:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    new-instance v5, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const-string v6, "UNKNOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v5}, [Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->$VALUES:[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->$VALUES:[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/layer/Layer$MatteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method
