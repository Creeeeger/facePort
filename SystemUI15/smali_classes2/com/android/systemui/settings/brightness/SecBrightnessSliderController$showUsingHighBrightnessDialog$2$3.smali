.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$3;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$3;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->highBrightnessDialogEnabled:Z

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isAutoChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$3;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->dualSeekBarThreshold:I

    add-int/2addr v1, v0

    iget-object p1, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$3;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "shown_max_brightness_dialog"

    const/4 v1, -0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
