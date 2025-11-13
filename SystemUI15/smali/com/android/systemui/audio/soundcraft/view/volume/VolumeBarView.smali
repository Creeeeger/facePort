.class public final Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public soundCraftVolumeMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeMotion;

.field public touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/volume/VolumeBarViewBinding;

.field public final viewModel$delegate:Lkotlin/Lazy;

.field public final volumeKeyHandler:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$special$$inlined$lazyViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$special$$inlined$lazyViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->viewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->volumeKeyHandler:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$special$$inlined$lazyViewModel$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$special$$inlined$lazyViewModel$2;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->viewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->volumeKeyHandler:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$special$$inlined$lazyViewModel$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$special$$inlined$lazyViewModel$3;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->viewModel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;-><init>(Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->volumeKeyHandler:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    return-void
.end method


# virtual methods
.method public final getViewModel$2()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "SoundCraft.VolumeBarView"

    const-string v1, "addOnUnhandledKeyEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->getViewModel$2()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->forceVolumeControlStream(I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->volumeKeyHandler:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "SoundCraft.VolumeBarView"

    const-string v1, "removeOnUnhandledKeyEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->getViewModel$2()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->forceVolumeControlStream(I)V

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView;->volumeKeyHandler:Lcom/android/systemui/audio/soundcraft/view/volume/VolumeBarView$volumeKeyHandler$1;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    return-void
.end method
