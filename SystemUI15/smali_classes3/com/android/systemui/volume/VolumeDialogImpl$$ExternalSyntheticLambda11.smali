.class public final synthetic Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x0

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    packed-switch v0, :pswitch_data_0

    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mIsRingerDrawerOpen:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->hideRingerDrawer()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->showRingerDrawer()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "TouchedRingerToggle"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v1, :cond_2

    if-eqz v3, :cond_5

    move p1, v2

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    goto :goto_1

    :cond_3
    iget p1, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    :cond_4
    move p1, v1

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setRingerMode(I)V

    :goto_2
    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x8

    invoke-static {v0, p1}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->$r8$clinit:I

    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumeNavigator:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mVolumePanelNavigationInteractor:Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;

    iget-object p0, p0, Lcom/android/systemui/volume/domain/interactor/VolumePanelNavigationInteractor;->volumePanelFlag:Lcom/android/systemui/volume/panel/shared/flag/VolumePanelFlag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/volume/domain/model/VolumePanelRoute;->COMPOSE_VOLUME_PANEL:Lcom/android/systemui/volume/domain/model/VolumePanelRoute;

    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->openVolumePanel(Lcom/android/systemui/volume/domain/model/VolumePanelRoute;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
