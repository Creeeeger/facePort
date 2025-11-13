.class public final enum Lcom/samsung/vekit/Common/Type/FpsType;
.super Ljava/lang/Enum;
.source "FpsType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/FpsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/FpsType;

.field public static final enum blacklist FPS_120:Lcom/samsung/vekit/Common/Type/FpsType;

.field public static final enum blacklist FPS_240:Lcom/samsung/vekit/Common/Type/FpsType;

.field public static final enum blacklist FPS_30:Lcom/samsung/vekit/Common/Type/FpsType;

.field public static final enum blacklist FPS_480:Lcom/samsung/vekit/Common/Type/FpsType;

.field public static final enum blacklist FPS_60:Lcom/samsung/vekit/Common/Type/FpsType;

.field public static final enum blacklist FPS_960:Lcom/samsung/vekit/Common/Type/FpsType;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/FpsType;
    .locals 6

    sget-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_30:Lcom/samsung/vekit/Common/Type/FpsType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_60:Lcom/samsung/vekit/Common/Type/FpsType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_120:Lcom/samsung/vekit/Common/Type/FpsType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_240:Lcom/samsung/vekit/Common/Type/FpsType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_480:Lcom/samsung/vekit/Common/Type/FpsType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_960:Lcom/samsung/vekit/Common/Type/FpsType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/vekit/Common/Type/FpsType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/FpsType;

    const-string v1, "FPS_30"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/FpsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_30:Lcom/samsung/vekit/Common/Type/FpsType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FpsType;

    const-string v1, "FPS_60"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/FpsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_60:Lcom/samsung/vekit/Common/Type/FpsType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FpsType;

    const-string v1, "FPS_120"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/FpsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_120:Lcom/samsung/vekit/Common/Type/FpsType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FpsType;

    const-string v1, "FPS_240"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/FpsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_240:Lcom/samsung/vekit/Common/Type/FpsType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FpsType;

    const-string v1, "FPS_480"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/FpsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_480:Lcom/samsung/vekit/Common/Type/FpsType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/FpsType;

    const-string v1, "FPS_960"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/vekit/Common/Type/FpsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->FPS_960:Lcom/samsung/vekit/Common/Type/FpsType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/FpsType;->$values()[Lcom/samsung/vekit/Common/Type/FpsType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FpsType;

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

    iput p3, p0, Lcom/samsung/vekit/Common/Type/FpsType;->value:I

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/FpsType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/FpsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/FpsType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/FpsType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/FpsType;->$VALUES:[Lcom/samsung/vekit/Common/Type/FpsType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/FpsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/FpsType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/vekit/Common/Type/FpsType;->value:I

    return v0
.end method
