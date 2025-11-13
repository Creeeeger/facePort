.class public final Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $stream:I

.field public final synthetic $targetState:I

.field public final synthetic this$0:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/icon/VolumeIconMotion;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->this$0:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    iput p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$stream:I

    iput p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$targetState:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->this$0:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    iget-object p1, p1, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_ANIMATION_FINISHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$stream:I

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startMidAnimation$2$1;->$targetState:I

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->iconTargetState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->iconCurrentState(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    return-void
.end method
