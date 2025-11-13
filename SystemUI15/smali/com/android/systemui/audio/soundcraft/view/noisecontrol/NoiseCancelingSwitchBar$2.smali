.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->checkWearingOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseCancelingSwitchBarViewModel;->onClick()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseCancelingSwitchBar;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseCancelingSwitchBarViewBinding;->switch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_0
    return-void
.end method
