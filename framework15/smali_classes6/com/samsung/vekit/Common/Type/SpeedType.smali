.class public final enum Lcom/samsung/vekit/Common/Type/SpeedType;
.super Ljava/lang/Enum;
.source "SpeedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/SpeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum blacklist SPEED_1:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum blacklist SPEED_1_16:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum blacklist SPEED_1_2:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum blacklist SPEED_1_32:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum blacklist SPEED_1_4:Lcom/samsung/vekit/Common/Type/SpeedType;

.field public static final enum blacklist SPEED_1_8:Lcom/samsung/vekit/Common/Type/SpeedType;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/SpeedType;
    .locals 6

    sget-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_2:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_4:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_8:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_16:Lcom/samsung/vekit/Common/Type/SpeedType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_32:Lcom/samsung/vekit/Common/Type/SpeedType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/vekit/Common/Type/SpeedType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1:Lcom/samsung/vekit/Common/Type/SpeedType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_2:Lcom/samsung/vekit/Common/Type/SpeedType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_4"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_4:Lcom/samsung/vekit/Common/Type/SpeedType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_8"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_8:Lcom/samsung/vekit/Common/Type/SpeedType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_16"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_16:Lcom/samsung/vekit/Common/Type/SpeedType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    const-string v1, "SPEED_1_32"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/SpeedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->SPEED_1_32:Lcom/samsung/vekit/Common/Type/SpeedType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/SpeedType;->$values()[Lcom/samsung/vekit/Common/Type/SpeedType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->$VALUES:[Lcom/samsung/vekit/Common/Type/SpeedType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/vekit/Common/Type/SpeedType;->value:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/SpeedType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/SpeedType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/SpeedType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/SpeedType;->$VALUES:[Lcom/samsung/vekit/Common/Type/SpeedType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/SpeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/SpeedType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Type/SpeedType;->value:I

    return v0
.end method
