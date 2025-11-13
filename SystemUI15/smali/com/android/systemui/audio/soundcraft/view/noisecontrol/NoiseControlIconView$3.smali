.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->name:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
