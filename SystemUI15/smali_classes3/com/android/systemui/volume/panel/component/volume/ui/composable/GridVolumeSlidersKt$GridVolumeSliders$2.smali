.class final Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;
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

.field final synthetic $$default:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

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
.method public constructor <init>(Ljava/util/List;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/ui/Modifier;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;",
            ">;",
            "Lcom/android/compose/PlatformSliderColors;",
            "Landroidx/compose/ui/Modifier;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$viewModels:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$sliderColors:Lcom/android/compose/PlatformSliderColors;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$$changed:I

    iput p5, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$viewModels:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$sliderColors:Lcom/android/compose/PlatformSliderColors;

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$2;->$$default:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt;->GridVolumeSliders(Ljava/util/List;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
