.class public final Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# instance fields
.field public viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/battery/BatteryInfoBoxViewBinding;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$special$$inlined$lazyViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$special$$inlined$lazyViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$special$$inlined$lazyViewModel$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$special$$inlined$lazyViewModel$2;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$special$$inlined$lazyViewModel$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView$special$$inlined$lazyViewModel$3;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/battery/BatteryInfoBoxView;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method
