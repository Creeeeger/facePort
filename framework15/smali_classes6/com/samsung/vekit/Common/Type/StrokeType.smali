.class public final enum Lcom/samsung/vekit/Common/Type/StrokeType;
.super Ljava/lang/Enum;
.source "StrokeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/StrokeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/StrokeType;

.field public static final enum blacklist AUTO:Lcom/samsung/vekit/Common/Type/StrokeType;

.field public static final enum blacklist AUTO_ERASER:Lcom/samsung/vekit/Common/Type/StrokeType;

.field public static final enum blacklist AUTO_SUGGESTED:Lcom/samsung/vekit/Common/Type/StrokeType;

.field public static final enum blacklist NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

.field public static final enum blacklist SHAPE:Lcom/samsung/vekit/Common/Type/StrokeType;

.field public static final enum blacklist SHAPE_SUGGESTED:Lcom/samsung/vekit/Common/Type/StrokeType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/StrokeType;
    .locals 6

    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/StrokeType;->AUTO:Lcom/samsung/vekit/Common/Type/StrokeType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/StrokeType;->AUTO_SUGGESTED:Lcom/samsung/vekit/Common/Type/StrokeType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/StrokeType;->AUTO_ERASER:Lcom/samsung/vekit/Common/Type/StrokeType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/StrokeType;->SHAPE:Lcom/samsung/vekit/Common/Type/StrokeType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/StrokeType;->SHAPE_SUGGESTED:Lcom/samsung/vekit/Common/Type/StrokeType;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/vekit/Common/Type/StrokeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->NORMAL:Lcom/samsung/vekit/Common/Type/StrokeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    const-string v1, "AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->AUTO:Lcom/samsung/vekit/Common/Type/StrokeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    const-string v1, "AUTO_SUGGESTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->AUTO_SUGGESTED:Lcom/samsung/vekit/Common/Type/StrokeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    const-string v1, "AUTO_ERASER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->AUTO_ERASER:Lcom/samsung/vekit/Common/Type/StrokeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    const-string v1, "SHAPE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->SHAPE:Lcom/samsung/vekit/Common/Type/StrokeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    const-string v1, "SHAPE_SUGGESTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/StrokeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->SHAPE_SUGGESTED:Lcom/samsung/vekit/Common/Type/StrokeType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/StrokeType;->$values()[Lcom/samsung/vekit/Common/Type/StrokeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->$VALUES:[Lcom/samsung/vekit/Common/Type/StrokeType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/StrokeType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/StrokeType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/StrokeType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/StrokeType;->$VALUES:[Lcom/samsung/vekit/Common/Type/StrokeType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/StrokeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/StrokeType;

    return-object v0
.end method
