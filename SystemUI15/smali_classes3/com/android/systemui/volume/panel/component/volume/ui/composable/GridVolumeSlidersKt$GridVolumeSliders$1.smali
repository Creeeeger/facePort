.class final Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1;
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
.field final synthetic $sliderColors:Lcom/android/compose/PlatformSliderColors;

.field final synthetic $viewModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/compose/PlatformSliderColors;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;",
            ">;",
            "Lcom/android/compose/PlatformSliderColors;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1;->$viewModels:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1;->$sliderColors:Lcom/android/compose/PlatformSliderColors;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1;->$viewModels:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;

    invoke-interface {v0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;->getSlider()Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;

    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v2, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;)V

    new-instance v3, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$2;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;)V

    new-instance v5, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$3;

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$3;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;)V

    iget-object v6, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1;->$sliderColors:Lcom/android/compose/PlatformSliderColors;

    const/16 v7, 0x6000

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/VolumeSliderKt;->VolumeSlider(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_2
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
