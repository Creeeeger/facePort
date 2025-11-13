.class public final Lcom/android/systemui/volume/CaptionsToggleImageButton$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;->this$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$1;->this$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    sget p1, Lcom/android/systemui/volume/CaptionsToggleImageButton;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton;->mConfirmedTapListener:Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda16;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mController:Lcom/android/systemui/plugins/VolumeDialogController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->getCaptionsEnabledState(Z)V

    new-array p0, p1, [Ljava/lang/Object;

    const/16 p1, 0x15

    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move p1, v0

    :cond_0
    return p1
.end method
