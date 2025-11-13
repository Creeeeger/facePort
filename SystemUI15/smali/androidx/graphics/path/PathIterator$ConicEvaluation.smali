.class public final enum Landroidx/graphics/path/PathIterator$ConicEvaluation;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/graphics/path/PathIterator$ConicEvaluation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/graphics/path/PathIterator$ConicEvaluation;

.field public static final enum AsQuadratics:Landroidx/graphics/path/PathIterator$ConicEvaluation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/graphics/path/PathIterator$ConicEvaluation;

    const-string v1, "AsConic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/graphics/path/PathIterator$ConicEvaluation;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroidx/graphics/path/PathIterator$ConicEvaluation;

    const-string v2, "AsQuadratics"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/graphics/path/PathIterator$ConicEvaluation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/graphics/path/PathIterator$ConicEvaluation;->AsQuadratics:Landroidx/graphics/path/PathIterator$ConicEvaluation;

    filled-new-array {v0, v1}, [Landroidx/graphics/path/PathIterator$ConicEvaluation;

    move-result-object v0

    sput-object v0, Landroidx/graphics/path/PathIterator$ConicEvaluation;->$VALUES:[Landroidx/graphics/path/PathIterator$ConicEvaluation;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/graphics/path/PathIterator$ConicEvaluation;
    .locals 1

    const-class v0, Landroidx/graphics/path/PathIterator$ConicEvaluation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/graphics/path/PathIterator$ConicEvaluation;

    return-object p0
.end method

.method public static values()[Landroidx/graphics/path/PathIterator$ConicEvaluation;
    .locals 1

    sget-object v0, Landroidx/graphics/path/PathIterator$ConicEvaluation;->$VALUES:[Landroidx/graphics/path/PathIterator$ConicEvaluation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/graphics/path/PathIterator$ConicEvaluation;

    return-object v0
.end method
