.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mVolumeSeekBarChangeListener onProgressChanged mVolumeSeekBarTracking : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTracking:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mStreamType : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessVolumeView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTracking:Z

    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTracking:Z

    if-eqz p1, :cond_2

    const/16 p1, 0xa

    if-lez p2, :cond_1

    if-ge p2, p1, :cond_1

    move p2, p1

    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    div-int/2addr p2, p1

    const/4 p1, 0x0

    invoke-virtual {p3, v0, p2, p1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeIcon(I)V

    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 2

    const-string v0, "BrightnessVolumeView"

    const-string v1, "mVolumeSeekBarChangeListener onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTracking:Z

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    const-string p1, "BrightnessVolumeView"

    const-string v0, "mVolumeSeekBarChangeListener onStopTrackingTouch"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$5;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBarTracking:Z

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    return-void
.end method
