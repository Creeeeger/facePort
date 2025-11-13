.class final Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;
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

.field final synthetic $isDragging$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field

.field final synthetic $label:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $sliderHeight:F

.field final synthetic $thumbSize:F


# direct methods
.method public constructor <init>(ZLcom/android/compose/PlatformSliderColors;FFFLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/compose/PlatformSliderColors;",
            "FFF",
            "Lkotlin/jvm/functions/Function3;",
            "Lkotlin/jvm/functions/Function3;",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$enabled:Z

    iput-object p2, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$colors:Lcom/android/compose/PlatformSliderColors;

    iput p3, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$draggingCornersRadius:F

    iput p4, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$sliderHeight:F

    iput p5, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$thumbSize:F

    iput-object p6, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$icon:Lkotlin/jvm/functions/Function3;

    iput-object p7, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$label:Lkotlin/jvm/functions/Function3;

    iput-object p8, p0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$isDragging$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/material3/SliderState;

    move-object/from16 v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0xe

    if-nez v3, :cond_1

    move-object v3, v10

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    move-object v3, v10

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$isDragging$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v3, v9}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    iget-boolean v3, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$enabled:Z

    iget-object v4, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$colors:Lcom/android/compose/PlatformSliderColors;

    iget v5, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$draggingCornersRadius:F

    iget v7, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$sliderHeight:F

    iget v8, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$thumbSize:F

    iget-object v11, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$icon:Lkotlin/jvm/functions/Function3;

    iget-object v12, v0, Lcom/android/compose/PlatformSliderKt$PlatformSlider$3$2;->$label:Lkotlin/jvm/functions/Function3;

    const v0, 0x30036008

    and-int/lit8 v2, v2, 0xe

    or-int v13, v0, v2

    const/4 v14, 0x0

    move-object v0, v1

    move v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move-object v7, v11

    move-object v8, v12

    move v11, v13

    move v12, v14

    invoke-static/range {v0 .. v12}, Lcom/android/compose/PlatformSliderKt;->access$Track-pKeW4W0(Landroidx/compose/material3/SliderState;ZLcom/android/compose/PlatformSliderColors;FFFZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
