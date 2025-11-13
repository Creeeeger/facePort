.class public final enum Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;
.super Ljava/lang/Enum;
.source "AnalyzeSolutionErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

.field public static final enum blacklist LOAD_FAILED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

.field public static final enum blacklist UNEXPECTED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

.field public static final enum blacklist UNLOAD_FAILED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;
    .locals 3

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->UNEXPECTED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->LOAD_FAILED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->UNLOAD_FAILED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    const-string v1, "UNEXPECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->UNEXPECTED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    const-string v1, "LOAD_FAILED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->LOAD_FAILED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    const-string v1, "UNLOAD_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->UNLOAD_FAILED:Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->$values()[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->$VALUES:[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->$VALUES:[Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/AnalyzeSolutionErrorType;

    return-object v0
.end method
