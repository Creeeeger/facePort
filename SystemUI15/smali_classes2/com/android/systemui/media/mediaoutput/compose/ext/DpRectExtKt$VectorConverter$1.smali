.class final Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/ext/DpRectExtKt$VectorConverter$1;

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
    .locals 3

    check-cast p1, Landroidx/compose/ui/unit/DpRect;

    new-instance p0, Landroidx/compose/animation/core/AnimationVector4D;

    iget v0, p1, Landroidx/compose/ui/unit/DpRect;->left:F

    iget v1, p1, Landroidx/compose/ui/unit/DpRect;->right:F

    iget v2, p1, Landroidx/compose/ui/unit/DpRect;->bottom:F

    iget p1, p1, Landroidx/compose/ui/unit/DpRect;->top:F

    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/compose/animation/core/AnimationVector4D;-><init>(FFFF)V

    return-object p0
.end method
