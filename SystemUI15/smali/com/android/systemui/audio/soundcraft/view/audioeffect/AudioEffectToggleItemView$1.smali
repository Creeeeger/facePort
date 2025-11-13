.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView$1;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectToggleItemView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseToggleViewModel;->onClick()V

    return-void
.end method
