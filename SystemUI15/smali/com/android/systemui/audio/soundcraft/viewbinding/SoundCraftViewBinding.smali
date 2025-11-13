.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionBar:Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;

.field public final audioEffectBox:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

.field public final batteryInfoBox:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

.field public final detailPageContent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

.field public final noiseControlBox:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

.field public final root:Landroid/view/ViewGroup;

.field public final routineTestView:Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;

.field public final volumeBar:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

.field public final volumeContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0bd6

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->root:Landroid/view/ViewGroup;

    const v0, 0x7f0a0bd1

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->detailPageContent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftDetailPageView;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->actionBar:Lcom/android/systemui/audio/soundcraft/viewbinding/actionbar/SoundCraftActionBarBinding;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->batteryInfoBox:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->noiseControlBox:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->audioEffectBox:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->volumeBar:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

    const v0, 0x7f0a0bda

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->volumeContainer:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/feature/SoundCraftDebugFeatures;->INSTANCE:Lcom/android/systemui/audio/soundcraft/feature/SoundCraftDebugFeatures;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_soundcraft_debug_routine_view"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;

    const v1, 0x7f0a0bd7

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;-><init>(Landroid/view/ViewStub;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->routineTestView:Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;

    return-void
.end method
