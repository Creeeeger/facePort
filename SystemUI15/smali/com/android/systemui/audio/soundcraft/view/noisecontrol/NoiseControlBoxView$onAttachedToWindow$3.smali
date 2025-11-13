.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView$onAttachedToWindow$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlBoxView;->noiseControlOffView:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->viewModel:Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlIconViewModel;->notifyChange()V

    :cond_0
    return-void
.end method
