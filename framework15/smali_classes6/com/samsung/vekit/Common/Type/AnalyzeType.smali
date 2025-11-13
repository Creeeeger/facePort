.class public final enum Lcom/samsung/vekit/Common/Type/AnalyzeType;
.super Ljava/lang/Enum;
.source "AnalyzeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/AnalyzeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/AnalyzeType;

.field public static final enum blacklist AUDIO_ERASER:Lcom/samsung/vekit/Common/Type/AnalyzeType;

.field public static final enum blacklist AUTO_TRIM:Lcom/samsung/vekit/Common/Type/AnalyzeType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;->AUDIO_ERASER:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnalyzeType;->AUTO_TRIM:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    filled-new-array {v0, v1}, [Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;

    const-string v1, "AUDIO_ERASER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnalyzeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;->AUDIO_ERASER:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;

    const-string v1, "AUTO_TRIM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnalyzeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;->AUTO_TRIM:Lcom/samsung/vekit/Common/Type/AnalyzeType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeType;->$values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;->$VALUES:[Lcom/samsung/vekit/Common/Type/AnalyzeType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/AnalyzeType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeType;->$VALUES:[Lcom/samsung/vekit/Common/Type/AnalyzeType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/AnalyzeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/AnalyzeType;

    return-object v0
.end method
