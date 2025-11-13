.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBrightnessVolumeView:Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/widget/BrightnessVolumeView;->setBrightnessViewColor(I)V

    :cond_0
    return-void
.end method
