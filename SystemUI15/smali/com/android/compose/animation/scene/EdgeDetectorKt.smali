.class public abstract Lcom/android/compose/animation/scene/EdgeDetectorKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DefaultEdgeDetector:Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;

    const/16 v1, 0x28

    int-to-float v1, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;-><init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/EdgeDetectorKt;->DefaultEdgeDetector:Lcom/android/compose/animation/scene/FixedSizeEdgeDetector;

    return-void
.end method
