.class public final synthetic Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->returnToMenu()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultVolumeIcon()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/media/AudioManager;->semGetActiveStreamType()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isClockActivity(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeSeekBar(I)V

    iget p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mStreamType:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setVolumeIcon(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mVolumeRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$2;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    :goto_1
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaBrightnessLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x4

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mGridUIManager:Lcom/android/wm/shell/controlpanel/GridUIManager;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->returnToMenu()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setDefaultBrightnessView()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mMediaVolumeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screen_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setBrightnessViewColor(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->semRequestAccessibilityFocus()Z

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessRunnable:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView$1;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->handlerExcute(Ljava/lang/Runnable;Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
