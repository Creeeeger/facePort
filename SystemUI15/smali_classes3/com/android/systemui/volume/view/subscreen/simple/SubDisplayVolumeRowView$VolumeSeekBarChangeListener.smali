.class public final Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p3, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {p3, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_START_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    iget-object p1, p1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_STOP_SLIDER_TRACKING:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
