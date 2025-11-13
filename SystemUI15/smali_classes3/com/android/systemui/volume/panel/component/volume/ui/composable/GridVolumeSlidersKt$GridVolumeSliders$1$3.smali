.class final Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $sliderState:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;

.field final synthetic $sliderViewModel:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$3;->$sliderViewModel:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$3;->$sliderState:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$3;->$sliderViewModel:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/GridVolumeSlidersKt$GridVolumeSliders$1$3;->$sliderState:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;

    invoke-interface {v0, p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderViewModel;->toggleMuted(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/SliderState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
