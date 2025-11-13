.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    iget v2, v2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;->this$0:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
