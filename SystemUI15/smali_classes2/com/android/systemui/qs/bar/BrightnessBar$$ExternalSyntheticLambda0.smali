.class public final synthetic Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/bar/BrightnessBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/bar/BrightnessBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBrightnessBlocked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->sliderEnabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->showSliderDisabledToast()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSecBrightnessSliderView:Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;

    iget-boolean v0, v0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderView;->highBrightnessModeEnter:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->isAutoChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessSliderController:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->showHighBrightnessModeToast()V

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method
