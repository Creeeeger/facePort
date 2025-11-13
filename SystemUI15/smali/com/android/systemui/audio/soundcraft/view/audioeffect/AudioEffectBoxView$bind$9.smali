.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$9;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$9;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$9;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->isFallbackTextVisible:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$9;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->fallbackText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
