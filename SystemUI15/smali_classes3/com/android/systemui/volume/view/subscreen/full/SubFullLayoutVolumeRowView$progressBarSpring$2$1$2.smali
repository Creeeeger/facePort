.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2$1$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2$1$2;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
