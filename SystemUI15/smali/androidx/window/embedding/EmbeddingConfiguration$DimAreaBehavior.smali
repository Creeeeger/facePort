.class public final Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ON_ACTIVITY_STACK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

.field public static final UNDEFINED:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;-><init>(I)V

    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->ON_ACTIVITY_STACK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->value:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->value:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p0, "ON_TASK"

    goto :goto_0

    :cond_1
    const-string p0, "ON_ACTIVITY_STACK"

    goto :goto_0

    :cond_2
    const-string p0, "UNDEFINED"

    :goto_0
    const-string v0, "DimAreaBehavior="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
