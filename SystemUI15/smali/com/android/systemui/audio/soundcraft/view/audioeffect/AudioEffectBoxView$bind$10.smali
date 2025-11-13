.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$10;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$10;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$10;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;

    iget-object v1, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->box:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$10;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f081262

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->coloredBGHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->getBGColor()I

    move-result p1

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectBoxLayoutBinding;->box:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->setBackGroundDrawable(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
