.class public final Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->root:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/noisecontrol/NoiseControlIconView;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/noisecontrol/NoiseControlIconViewBinding;->icon:Landroid/widget/ImageView;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
