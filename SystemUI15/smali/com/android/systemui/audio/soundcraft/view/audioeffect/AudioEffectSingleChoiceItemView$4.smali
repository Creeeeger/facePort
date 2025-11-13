.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$4;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$4;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/audioeffect/AudioEffectSingleChoiceItemViewBinding;->status:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
