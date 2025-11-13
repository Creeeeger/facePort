.class public final Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_3

    const-string p2, "FlexMediaPanel"

    const-string p3, "MediaPanel mSeekBarControlListener onProgressChanged"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    iput-boolean p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarFromUser:Z

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    const-string p3, "accessibility"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->makeCurrentText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-static {p1}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p3

    div-int/lit16 p3, p3, 0x3e8

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getMax()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p1}, Landroidx/reflect/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p2, p3, v0, p1}, Landroidx/datastore/preferences/protobuf/BooleanArrayList$$ExternalSyntheticOutline0;->m(IIII)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float p2, p1, p2

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setX(F)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setX(F)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setX(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 2

    const-string v0, "FlexMediaPanel"

    const-string v1, "MediaPanel mSeekBarControlListener onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaSeekBarView:Landroidx/appcompat/widget/SeslSeekBar;

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    :cond_1
    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPanel mSeekBarControlListener onStopTrackingTouch : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlexMediaPanel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$1;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->checkPlaybackPosition(J)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mContext:Landroid/content/Context;

    const v1, 0x7f13110d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "F003"

    invoke-static {v1, p1, v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->eventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarText:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
