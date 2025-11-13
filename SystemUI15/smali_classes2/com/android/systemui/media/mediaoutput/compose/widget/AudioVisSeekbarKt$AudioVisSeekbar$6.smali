.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

.field final synthetic $colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $steps:I

.field final synthetic $thumbVisible:Z

.field final synthetic $value:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange;"
        }
    .end annotation
.end field

.field final synthetic $waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;


# direct methods
.method public constructor <init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;ZIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function0;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "I",
            "Lkotlin/ranges/ClosedFloatingPointRange;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;",
            "ZIII)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$value:F

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$enabled:Z

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$steps:I

    iput-object p9, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput-object p10, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    iput-object p11, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iput-boolean p12, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$thumbVisible:Z

    iput p13, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$$changed:I

    iput p14, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$$changed1:I

    iput p15, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$value:F

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$enabled:Z

    iget-object v5, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v8, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$steps:I

    iget-object v9, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v10, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    iget-object v11, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iget-boolean v13, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$thumbVisible:Z

    iget v14, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$$changed:I

    or-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$$changed1:I

    invoke-static {v15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    iget v0, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt$AudioVisSeekbar$6;->$$default:I

    move/from16 v16, v0

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    invoke-static/range {v0 .. v15}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarKt;->AudioVisSeekbar(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;ZLandroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
