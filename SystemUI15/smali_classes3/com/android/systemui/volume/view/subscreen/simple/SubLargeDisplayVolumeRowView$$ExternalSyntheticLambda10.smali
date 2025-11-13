.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
