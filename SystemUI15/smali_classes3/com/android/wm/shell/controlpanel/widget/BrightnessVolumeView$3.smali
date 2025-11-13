.class public final Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public currentBrightness:I

.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    iget p3, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    sub-int/2addr p1, p3

    sub-int p3, p2, p3

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p3}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(F)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setBrightnessViewColor(I)V

    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 4

    const-string v0, "BrightnessVolumeView"

    const-string v1, "mBrightnessSeekBarChangeListener onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    iget-object p0, v0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    invoke-virtual {v0, p0, v3}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mBrightnessSeekBarChangeListener onStopTrackingTouch currentBrightness : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    const-string v1, "BrightnessVolumeView"

    invoke-static {v0, v1, p1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->this$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$3;->currentBrightness:I

    iget p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMaxBrightness:I

    iget v1, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMinBrightness:I

    sub-int/2addr p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(F)V

    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    return-void
.end method
