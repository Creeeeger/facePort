.class public final synthetic Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/CaptionsToggleImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 1

    sget p1, Lcom/android/systemui/volume/CaptionsToggleImageButton;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/volume/CaptionsToggleImageButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/volume/CaptionsToggleImageButton;

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
