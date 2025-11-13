.class public final enum Lcom/samsung/vekit/Common/Type/AnimationType;
.super Ljava/lang/Enum;
.source "AnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist ALPHA:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist CLIP:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist DEFAULT:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist FILTER:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist ROTATE:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist SCALE:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist TONE:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist TRANSFORM:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist TRANSLATE:Lcom/samsung/vekit/Common/Type/AnimationType;

.field public static final enum blacklist WAVE:Lcom/samsung/vekit/Common/Type/AnimationType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/AnimationType;
    .locals 11

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->DEFAULT:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSFORM:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/AnimationType;->FILTER:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/AnimationType;->TONE:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/AnimationType;->ALPHA:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/AnimationType;->CLIP:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/AnimationType;->WAVE:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v8, Lcom/samsung/vekit/Common/Type/AnimationType;->SCALE:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v9, Lcom/samsung/vekit/Common/Type/AnimationType;->ROTATE:Lcom/samsung/vekit/Common/Type/AnimationType;

    sget-object v10, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSLATE:Lcom/samsung/vekit/Common/Type/AnimationType;

    filled-new-array/range {v0 .. v10}, [Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->DEFAULT:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "TRANSFORM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSFORM:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "FILTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->FILTER:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "TONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TONE:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "TRANSITION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "ALPHA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->ALPHA:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "CLIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->CLIP:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "WAVE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->WAVE:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "SCALE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->SCALE:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "ROTATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->ROTATE:Lcom/samsung/vekit/Common/Type/AnimationType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    const-string v1, "TRANSLATE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSLATE:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnimationType;->$values()[Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->$VALUES:[Lcom/samsung/vekit/Common/Type/AnimationType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/AnimationType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/AnimationType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/AnimationType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnimationType;->$VALUES:[Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/AnimationType;

    return-object v0
.end method
