.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# instance fields
.field public activeNoiseCancelingView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public final activeNoiseCancelingViewModel$delegate:Lkotlin/Lazy;

.field public adaptiveView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public final adaptiveViewModel$delegate:Lkotlin/Lazy;

.field public ambientSoundView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public final ambientSoundViewModel$delegate:Lkotlin/Lazy;

.field public ambientSoundVolumeView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

.field public final ambientVolumeViewModel$delegate:Lkotlin/Lazy;

.field public final iconViewList:Ljava/util/List;

.field public final noiseCancelingLevelViewModel$delegate:Lkotlin/Lazy;

.field public noiseCancelingSwitchBar:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

.field public final noiseCancelingSwitchBarViewModel$delegate:Lkotlin/Lazy;

.field public final noiseControlBoxViewModel$delegate:Lkotlin/Lazy;

.field public final noiseControlEffectBoxViewModel$delegate:Lkotlin/Lazy;

.field public noiseControlLevelView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

.field public noiseControlOffView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

.field public final noiseControlOffViewModel$delegate:Lkotlin/Lazy;

.field public final positionList:Ljava/util/ArrayList;

.field public final sequenceList:Ljava/util/List;

.field public viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBarViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$2;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$3;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$4;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$5;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$6;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$7;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$8;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffViewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$9;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientVolumeViewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->sequenceList:Ljava/util/List;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->initViewModel()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$10;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$10;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBarViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$11;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$11;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$12;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$12;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$13;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$13;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$14;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$14;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$15;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$15;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$16;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$16;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$17;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$17;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$18;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$18;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientVolumeViewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->sequenceList:Ljava/util/List;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->initViewModel()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$19;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$19;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBarViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$20;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$20;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$21;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$21;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$22;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$22;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$23;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$23;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$24;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$24;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$25;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$25;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$26;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$26;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffViewModel$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$27;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$special$$inlined$lazyViewModel$27;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientVolumeViewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->sequenceList:Ljava/util/List;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->initViewModel()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final access$updateBoxLayout(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateBoxLayout : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.NoiseControlBoxView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->showActiveNoiseCancelingBarOnly:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->boxContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_2

    move-object v0, v4

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_3

    move-object v0, v4

    :cond_3
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f071433

    invoke-static {v2, v1}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBar:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBarViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;

    new-instance v1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v0

    :goto_1
    iget-object v0, v4, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingSwitchBar:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    goto :goto_4

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->showNoiseEffectBoxView:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_7

    move-object v0, v4

    :cond_7
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->boxContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_8

    move-object v0, v4

    :cond_8
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->noiseCancelingBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v4, v0

    :goto_3
    iget-object v0, v4, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f071438

    invoke-static {v1, p0}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public final addEffectIconView(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->addSpace()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->sequenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->addSpace()V

    return-void
.end method

.method public final addSpace()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0449

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    invoke-virtual {v1, v0}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final getIconView(Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;)Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0, p1}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;)V

    return-object v0
.end method

.method public final getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlBoxViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    return-object p0
.end method

.method public final getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlEffectBoxViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    return-object p0
.end method

.method public final initViewModel()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->showActiveNoiseCancelingBarOnly:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->showNoiseEffectBoxView:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object p0

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientSound:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientVolumeSeekBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAdaptive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->showActiveNoiseCancelingBarOnly:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->showNoiseEffectBoxView:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$2;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$3;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientSound:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$4;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientVolumeSeekBar:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$5;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAdaptive:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$6;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$7;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$8;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->updateLayout$1()V

    :cond_0
    return-void
.end method

.method public final updateLayout$1()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->sequenceList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateLayout : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoundCraft.NoiseControlBoxView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showNoiseControlOff:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlOffViewModel;

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getIconView(Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;)Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientSound:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/AmbientSoundViewModel;

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getIconView(Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;)Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAdaptive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/AdaptiveViewModel;

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getIconView(Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;)Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->adaptiveView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    :cond_6
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCanceling:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/ActiveNoiseCancelingViewModel;

    invoke-virtual {p0, v0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getIconView(Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;)Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->activeNoiseCancelingView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->addEffectIconView(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->addEffectIconView(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->addEffectIconView(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->iconViewList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->addEffectIconView(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->updateSeekBarView$1()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_b

    move-object v0, v1

    :cond_b
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->effectView:Landroid/view/ViewGroup;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->sequenceList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    iget-object v6, v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object v6, v6, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getX()F

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07143e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object v8, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x40200000    # 2.5f

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-boolean v9, v9, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromCover:Z

    if-nez v9, :cond_c

    int-to-float v9, v7

    mul-float/2addr v9, v11

    goto :goto_6

    :cond_c
    int-to-float v9, v7

    const/high16 v12, 0x40400000    # 3.0f

    mul-float/2addr v9, v12

    :goto_6
    iget-object v12, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    sub-int v13, v2, v8

    int-to-float v13, v13

    div-float/2addr v13, v10

    add-float/2addr v13, v6

    sub-float/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v9, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    sub-int/2addr v2, v8

    int-to-float v2, v2

    div-float/2addr v2, v10

    add-float/2addr v2, v6

    int-to-float v6, v8

    add-float/2addr v2, v6

    int-to-float v6, v7

    mul-float/2addr v6, v11

    add-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_f

    move-object v0, v1

    :cond_f
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->noiseControlLineView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->positionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_7

    :cond_10
    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView$setDataList$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLineView;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_7

    :cond_11
    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$updateLayout$$inlined$doOnLayout$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-boolean v0, v0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromCover:Z

    if-eqz v0, :cond_12

    const v0, 0x7f07143f

    goto :goto_8

    :cond_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_13

    const v0, 0x7f071442

    goto :goto_8

    :cond_13
    const v0, 0x7f071441

    :goto_8
    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v2, :cond_14

    goto :goto_9

    :cond_14
    move-object v1, v2

    :goto_9
    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->boxContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f071440

    invoke-static {v5, v3}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/audio/soundcraft/utils/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p0

    invoke-virtual {v1, v2, v3, p0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public final updateSeekBarView$1()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->getNoiseControlEffectBoxViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showAmbientVolumeSeekBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateSeekBarView showActiveNoiseCancelingSeekBar="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showAmbientVolumeSeekBar="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SoundCraft.NoiseControlBoxView"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlEffectBoxViewModel;->showActiveNoiseCancelingSeekBar:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlLevelView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseCancelingLevelViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingLevelViewModel;

    new-instance v3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v5, v0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;)V

    iget-object v0, v3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;->notifyChange()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object v4, v3, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object v4, v4, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlLevelView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlLevelView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v3, :cond_2

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlLevelView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundVolumeView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientVolumeViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/AmbientVolumeViewModel;

    new-instance v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->get(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;-><init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;)V

    iget-object v0, v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;->notifyChange()V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object v1, v2, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object v1, v1, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundVolumeView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundVolumeView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;

    if-nez v2, :cond_7

    move-object v2, v1

    :cond_7
    iget-object v2, v2, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlBoxViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/LevelSeekBarViewBinding;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_8
    iput-object v1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->ambientSoundVolumeView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlLevelView;

    :cond_9
    :goto_2
    return-void
.end method
