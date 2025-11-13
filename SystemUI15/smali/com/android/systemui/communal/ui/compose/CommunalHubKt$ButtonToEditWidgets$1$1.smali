.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1$1;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1$1;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1$1;->INSTANCE:Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ButtonToEditWidgets$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
