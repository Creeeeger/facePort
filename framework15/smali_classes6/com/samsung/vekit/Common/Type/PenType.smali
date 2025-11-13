.class public final enum Lcom/samsung/vekit/Common/Type/PenType;
.super Ljava/lang/Enum;
.source "PenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/PenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_AUTO:Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_CALLIGRAPHY:Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_ERASER:Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_GLOW:Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_HIGHLIGHT:Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_MOSAIC:Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_NORMAL:Lcom/samsung/vekit/Common/Type/PenType;

.field public static final enum blacklist PEN_PATTERN:Lcom/samsung/vekit/Common/Type/PenType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/PenType;
    .locals 8

    sget-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_NORMAL:Lcom/samsung/vekit/Common/Type/PenType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/PenType;->PEN_CALLIGRAPHY:Lcom/samsung/vekit/Common/Type/PenType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/PenType;->PEN_GLOW:Lcom/samsung/vekit/Common/Type/PenType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/PenType;->PEN_HIGHLIGHT:Lcom/samsung/vekit/Common/Type/PenType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/PenType;->PEN_ERASER:Lcom/samsung/vekit/Common/Type/PenType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/PenType;->PEN_PATTERN:Lcom/samsung/vekit/Common/Type/PenType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/PenType;->PEN_AUTO:Lcom/samsung/vekit/Common/Type/PenType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/PenType;->PEN_MOSAIC:Lcom/samsung/vekit/Common/Type/PenType;

    filled-new-array/range {v0 .. v7}, [Lcom/samsung/vekit/Common/Type/PenType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_NORMAL:Lcom/samsung/vekit/Common/Type/PenType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_CALLIGRAPHY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_CALLIGRAPHY:Lcom/samsung/vekit/Common/Type/PenType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_GLOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_GLOW:Lcom/samsung/vekit/Common/Type/PenType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_HIGHLIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_HIGHLIGHT:Lcom/samsung/vekit/Common/Type/PenType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_ERASER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_ERASER:Lcom/samsung/vekit/Common/Type/PenType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_PATTERN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_PATTERN:Lcom/samsung/vekit/Common/Type/PenType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_AUTO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_AUTO:Lcom/samsung/vekit/Common/Type/PenType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/PenType;

    const-string v1, "PEN_MOSAIC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->PEN_MOSAIC:Lcom/samsung/vekit/Common/Type/PenType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/PenType;->$values()[Lcom/samsung/vekit/Common/Type/PenType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/PenType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PenType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/PenType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/PenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/PenType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/PenType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/PenType;->$VALUES:[Lcom/samsung/vekit/Common/Type/PenType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/PenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/PenType;

    return-object v0
.end method
