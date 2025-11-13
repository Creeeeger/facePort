.class final Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;
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

.field final synthetic $colors:Lcom/android/compose/PlatformSliderColors;

.field final synthetic $draggingCornersRadius:F

.field final synthetic $enabled:Z

.field final synthetic $icon:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $label:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

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

.field final synthetic $value:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/android/compose/PlatformSliderColors;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/ranges/ClosedFloatingPointRange;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lcom/android/compose/PlatformSliderColors;",
            "F",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function3;",
            "III)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$value:F

    iput-object p2, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iput-boolean p6, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$enabled:Z

    iput-object p7, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$colors:Lcom/android/compose/PlatformSliderColors;

    iput p9, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$draggingCornersRadius:F

    iput-object p10, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$icon:Lkotlin/jvm/functions/Function3;

    iput-object p11, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$label:Lkotlin/jvm/functions/Function3;

    iput p12, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$$changed:I

    iput p13, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$$changed1:I

    iput p14, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget v1, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$value:F

    iget-object v2, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-boolean v6, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$enabled:Z

    iget-object v7, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v8, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$colors:Lcom/android/compose/PlatformSliderColors;

    iget v9, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$draggingCornersRadius:F

    iget-object v10, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$icon:Lkotlin/jvm/functions/Function3;

    iget-object v12, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$label:Lkotlin/jvm/functions/Function3;

    iget v13, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$$changed:I

    or-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    iget v14, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$$changed1:I

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$4;->$$default:I

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v12

    move v12, v13

    move v13, v14

    move v14, v15

    invoke-static/range {v0 .. v14}, Lcom/android/compose/PlatformSliderKt;->PlatformSlider-Wu8B24Y(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/android/compose/PlatformSliderColors;FLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
