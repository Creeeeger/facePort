.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsKeyDownAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
