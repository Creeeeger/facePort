.class public final Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    add-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->setFlashlightLevel(IZ)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    const/16 v1, 0x29

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mWarningTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPDE1014"

    int-to-long v1, p2

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QPDS1014"

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSlider:Landroid/widget/SeekBar;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter$3;->this$0:Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/FlashlightDetailAdapter;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->setFlashlightLevel(IZ)V

    return-void
.end method
