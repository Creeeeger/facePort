.class public final Lcom/android/systemui/battery/BatteryMeterViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/BatteryMeterViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$1;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$1;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->AOD:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mAodScaleFactor:F

    mul-float/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mAdditionalScaleFactorForSpecificBatteryView:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$100(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/battery/BatteryMeterView;

    iput v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mRatio:F

    iget-object v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iget-boolean v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    iput-boolean v2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldShowGrayIcon:Z

    iget-boolean v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->setShowPercentSetting(Z)V

    iget-object v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iget-boolean v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mPowerSaveEnabled:Z

    iput-boolean v2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->powerSaveEnabled:Z

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->resizeDrawable()V

    iget-object v2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    sget v3, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iget-object v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v0, v2}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->onBatteryLevelChanged(Lcom/android/systemui/battery/SamsungBatteryState;)V

    iget-boolean v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mIsDarkReceiverRegistered:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mDarkLastAreas:Ljava/util/ArrayList;

    iget v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mDarkIntensity:F

    iget v3, v1, Lcom/android/systemui/battery/BatteryMeterView;->mDarkTint:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/battery/BatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FI)V

    :cond_3
    iget-object v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidate()V

    iget-object v0, v1, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, v1, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/android/systemui/battery/BatteryMeterViewController;->access$200(Lcom/android/systemui/battery/BatteryMeterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->scaleBatteryMeterViewsLegacy()V

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterViewController$1;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method
