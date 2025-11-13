.class final Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$2;

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
    .locals 6

    check-cast p1, Landroidx/compose/animation/core/AnimationVector4D;

    new-instance p0, Landroidx/compose/ui/unit/DpRect;

    iget v1, p1, Landroidx/compose/animation/core/AnimationVector4D;->v1:F

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    iget v2, p1, Landroidx/compose/animation/core/AnimationVector4D;->v2:F

    iget v3, p1, Landroidx/compose/animation/core/AnimationVector4D;->v3:F

    iget v4, p1, Landroidx/compose/animation/core/AnimationVector4D;->v4:F

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
