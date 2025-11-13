.class public final synthetic Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSystemBrightnessEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mAppUsingBrightness:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f131042

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mSliderDisableToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeEnter:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->isAutoChecked$1()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    const p2, 0x7f131053

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mHighBrightnessModeToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return v0
.end method
