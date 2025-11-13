.class public Lcom/android/systemui/battery/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBatteryEstimateFetcher:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;

.field public mBatteryIconDarkModeAlpha:F

.field public mBatteryIconLightModeAlpha:F

.field public final mBatteryIconView:Landroid/widget/ImageView;

.field public mBatteryState:Lcom/android/systemui/battery/SamsungBatteryState;

.field public mDarkIntensity:F

.field public mDarkLastAreas:Ljava/util/ArrayList;

.field public mDarkModeBackgroundColor:I

.field public mDarkModeFillColor:I

.field public mDarkTint:I

.field public mDisplayShieldEnabled:Z

.field public final mDualToneHandler:Lcom/android/systemui/DualToneHandler;

.field public mGrayColor:I

.field public mInvalidateRunnable:Lcom/android/systemui/battery/BatteryMeterView$1;

.field public mIsBatteryDefender:Z

.field public mIsDarkReceiverRegistered:Z

.field public mIsDirectPowerMode:Z

.field public mIsGrayColor:Z

.field public mIsIncompatibleCharging:Z

.field public mLevel:I

.field public mLightModeBackgroundColor:I

.field public mLightModeFillColor:I

.field public mNonAdaptedBackgroundColor:I

.field public mNonAdaptedForegroundColor:I

.field public mPowerSaveEnabled:Z

.field public mRatio:F

.field public mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

.field public mShowPercentMode:I

.field public mShowPercentSamsungSetting:Z

.field public mTextColor:I

.field public final mUnifiedBatteryColors:Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

.field public final mUnifiedBatteryState:Lcom/android/systemui/battery/unified/BatteryDrawableState;

.field public final mUpdateBatteryStateHandler:Landroid/os/Handler;

.field public showing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/battery/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    iput-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDarkReceiverRegistered:Z

    sget-object v1, Lcom/android/systemui/battery/unified/BatteryColors;->LIGHT_THEME_COLORS:Lcom/android/systemui/battery/unified/BatteryColors$LightThemeColors;

    sget-object v1, Lcom/android/systemui/battery/unified/BatteryDrawableState;->Companion:Lcom/android/systemui/battery/unified/BatteryDrawableState$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/battery/unified/BatteryDrawableState;->DefaultInitialState:Lcom/android/systemui/battery/unified/BatteryDrawableState;

    iput-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mUnifiedBatteryState:Lcom/android/systemui/battery/unified/BatteryDrawableState;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mRatio:F

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mUpdateBatteryStateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mInvalidateRunnable:Lcom/android/systemui/battery/BatteryMeterView$1;

    iget-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    iput-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->showing:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800013

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v1, Lcom/android/systemui/res/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const p3, 0x7f060471

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    new-instance p3, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-direct {p3, p1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    new-instance p3, Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-direct {p3}, Lcom/android/systemui/battery/SamsungBatteryState;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f07147e

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconLightModeAlpha:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f071479

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconDarkModeAlpha:F

    const p3, 0x7f060964

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLightModeFillColor:I

    const p3, 0x7f060963

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkModeFillColor:I

    const p3, 0x7f060966

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLightModeBackgroundColor:I

    const p3, 0x7f060965

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkModeBackgroundColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110059

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    const-string p2, "batterymanager"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/BatteryManager;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p3, v0, v0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    new-instance p2, Lcom/android/systemui/DualToneHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/DualToneHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDualToneHandler:Lcom/android/systemui/DualToneHandler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    const p3, -0x12000001

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/battery/BatteryMeterView;->onDarkChanged(Ljava/util/ArrayList;FI)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, "  BatteryMeterView:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    mDrawable.getPowerSave: null"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    mDrawable.getDisplayShield: null"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    mDrawable.getCharging: null"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    mBatteryPercentView.getText(): null"

    const-string v0, "    mTextColor: #"

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mTextColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    mBatteryStateUnknown: false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    mIsIncompatibleCharging: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsIncompatibleCharging:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    mPluggedIn: false"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    mLevel: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    const-string v1, "    mMode: "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    mIsDirectPowerMode: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDirectPowerMode:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public getBatteryPercentView()Landroid/widget/TextView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBatteryPercentViewText()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public getUnifiedBatteryState()Lcom/android/systemui/battery/unified/BatteryDrawableState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mUnifiedBatteryState:Lcom/android/systemui/battery/unified/BatteryDrawableState;

    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCharging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDarkReceiverRegistered:Z

    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkLastAreas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkTint:I

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/battery/BatteryMeterView;->onDarkChangedLegacy(Ljava/util/ArrayList;FI)V

    return-void
.end method

.method public final onDarkChangedLegacy(Ljava/util/ArrayList;FI)V
    .locals 4

    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/Collection;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iput p2, v1, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->darkIntensity:F

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconLightModeAlpha:F

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconDarkModeAlpha:F

    invoke-static {v1, v0, p2, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v0

    goto :goto_1

    :cond_1
    const v0, 0x3f3d70a4    # 0.74f

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    if-eqz v1, :cond_2

    iput p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mGrayColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkModeFillColor:I

    sget-object v2, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p2, v0, v1}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDarkModeBackgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p2, v0, v1}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedForegroundColor:I

    iget p3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mNonAdaptedBackgroundColor:I

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iget p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mGrayColor:I

    iput p2, p1, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->grayIconColor:I

    sget p3, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->BATTERY_BACKGROUND_ALPHA:F

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p3, v0, v1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p1, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundColor:I

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidate()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iput p3, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundLightColor:I

    iput p2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->iconTint:I

    iput p2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelColor:I

    iget-object p2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->darkIntensity:F

    sget-object v2, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->sInstance:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, v1, v3, p3}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterPaint:Landroid/graphics/Paint;

    iget p3, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->darkIntensity:F

    iget v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterBackgroundLightColor:I

    iget v3, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterBackgroundDarkColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v1, v3}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mTextColor:I

    :goto_2
    return-void
.end method

.method public final scaleBatteryMeterViewsLegacy()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f071495

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mRatio:F

    const v2, 0x7f070ef6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v4}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getBatteryWidthLevelBased()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mDisplayShieldEnabled:Z

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsBatteryDefender:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    sget v1, Lcom/android/systemui/battery/BatterySpecs;->$r8$clinit:I

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41a00000    # 20.0f

    div-float v1, v2, v1

    const/high16 v6, 0x41b80000    # 23.0f

    mul-float/2addr v1, v6

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v6, 0x41400000    # 12.0f

    div-float/2addr v4, v6

    const/high16 v6, 0x41900000    # 18.0f

    mul-float/2addr v4, v6

    :goto_2
    if-eqz v3, :cond_3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const v3, 0x7f07147b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    const v3, 0x7f0700bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5, v2, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPercentShowMode(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method public final updateContentDescription()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsBatteryDefender:Z

    if-eqz v2, :cond_0

    const v2, 0x7f130053

    goto :goto_0

    :cond_0
    const v2, 0x7f130054

    :goto_0
    iget v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsBatteryDefender:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f130052

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f130051

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f130050

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updatePercentText()V
    .locals 1

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mBatteryEstimateFetcher:Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateContentDescription()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateContentDescription()V

    :goto_0
    return-void
.end method

.method public final updateShowPercent()V
    .locals 5

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentMode:I

    if-eq v3, v2, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDirectPowerMode:Z

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDirectPowerMode:Z

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->setShowPercentSetting(Z)V

    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->showing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidate()V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updatePercentText()V

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->newStatusBarIcons()V

    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->scaleBatteryMeterViewsLegacy()V

    iput-boolean v2, p0, Lcom/android/systemui/battery/BatteryMeterView;->showing:Z

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->showing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidate()V

    iput-boolean v1, p0, Lcom/android/systemui/battery/BatteryMeterView;->showing:Z

    :cond_5
    :goto_2
    return-void
.end method
