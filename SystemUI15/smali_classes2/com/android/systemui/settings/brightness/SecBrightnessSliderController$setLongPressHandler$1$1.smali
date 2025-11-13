.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $brightnessDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

.field public final synthetic $slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

.field public final synthetic $v:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/ToggleSeekBar;Landroid/view/View;Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->$brightnessDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->$slider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isLongPressed:Z

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$setLongPressHandler$1$1;->$brightnessDetail:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/SecQSDetailController;->showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "QPPE1010"

    const-string v1, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "QPD101"

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    return-void
.end method
