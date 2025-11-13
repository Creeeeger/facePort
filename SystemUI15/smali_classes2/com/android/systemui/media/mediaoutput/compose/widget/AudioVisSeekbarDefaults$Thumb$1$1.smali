.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

.field final synthetic $enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$1$1;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$1$1;->$enabled:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object p3, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {p1, p3}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    sget-object p1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {p3, p1}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$1$1;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Thumb$1$1;->$enabled:Z

    if-eqz p0, :cond_0

    iget-wide v0, p3, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->thumbColor:J

    goto :goto_0

    :cond_0
    iget-wide v0, p3, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledThumbColor:J

    :goto_0
    sget-object p0, Landroidx/compose/ui/graphics/RectangleShapeKt;->RectangleShape:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {p1, v0, v1, p0}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {p2, p0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
