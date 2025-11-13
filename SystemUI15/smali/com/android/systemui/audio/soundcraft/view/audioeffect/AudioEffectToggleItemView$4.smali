.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView$4;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectToggleItemViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
