.class final Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$pathStartNodes$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$pathStartNodes$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$pathStartNodes$2;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$pathStartNodes$2;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$pathStartNodes$2;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslCheckboxDefaults$RightCheck$PathDataTransition$pathStartNodes$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Landroidx/compose/ui/graphics/vector/PathParser;

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/PathParser;-><init>()V

    const-string v0, "M 0.5106 0.598 c -0.008 0.0087 -0.008 0.0087 -0.008 0.0087 c -0.0088 0.0088 -0.0203 0.0136 -0.0327 0.0136 c -0.0124 0 -0.0239 -0.0048 -0.0327 -0.0135 c -0.109 -0.1093 -0.109 -0.1093 -0.109 -0.1093 c -0.0113 -0.0113 -0.0112 -0.0296 0.0001 -0.0409 c 0.0113 -0.0113 0.0296 -0.0112 0.0409 0.0001 c 0.1007 0.101 0.1007 0.101 0.1007 0.101 c -0.0002 -0.0004 -0.0002 -0.0004 -0.0002 -0.0004 c 0.0113 -0.0113 0.0296 -0.0113 0.0409 -0.0001 c 0.0113 0.0113 0.0113 0.0296 0.0001 0.0409 z M 0.5 0.1875 c -0.1724 0 -0.3125 0.1401 -0.3125 0.3125 c 0 0.1724 0.1401 0.3125 0.3125 0.3125 c 0.1724 0 0.3125 -0.1401 0.3125 -0.3125 c 0 -0.1724 -0.1401 -0.3125 -0.3125 -0.3125 z"

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/vector/PathParser;->parsePathString(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/PathParser;->nodes:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    return-object p0
.end method
