.class public final Lcom/android/systemui/power/ChargerNowBarView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animationListener:Lcom/android/systemui/power/ChargerAnimationListener;

.field public final batteryIcon$delegate:Lkotlin/Lazy;

.field public final batteryIconShadow$delegate:Lkotlin/Lazy;

.field public final batteryLevel$delegate:Lkotlin/Lazy;

.field public final batteryLevelContainer$delegate:Lkotlin/Lazy;

.field public final batteryPercent$delegate:Lkotlin/Lazy;

.field public final batteryPercentRtl$delegate:Lkotlin/Lazy;

.field public final batteryProgressbar$delegate:Lkotlin/Lazy;

.field public final chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

.field public chargingType:I

.field public currentBatteryLevel:I

.field public final currentLayoutDirection:I

.field public final isRTL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$batteryLevelContainer$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/ChargerNowBarView$batteryLevelContainer$2;-><init>(Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevelContainer$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$batteryLevel$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/ChargerNowBarView$batteryLevel$2;-><init>(Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevel$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$batteryPercent$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/ChargerNowBarView$batteryPercent$2;-><init>(Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercent$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$batteryPercentRtl$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/ChargerNowBarView$batteryPercentRtl$2;-><init>(Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercentRtl$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$batteryProgressbar$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/ChargerNowBarView$batteryProgressbar$2;-><init>(Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryProgressbar$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$batteryIcon$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/ChargerNowBarView$batteryIcon$2;-><init>(Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryIcon$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$batteryIconShadow$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/ChargerNowBarView$batteryIconShadow$2;-><init>(Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryIconShadow$delegate:Lkotlin/Lazy;

    invoke-static {}, Lcom/android/systemui/power/ChargerAnimationUtil;->checkExceptionalLanguage()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->isRTL:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->currentLayoutDirection:I

    new-instance p1, Landroidx/core/animation/AnimatorSet;

    invoke-direct {p1}, Landroidx/core/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final getBatteryIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryIcon$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getBatteryIconShadow()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryIconShadow$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView;->batteryProgressbar$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isDebuggable()Z

    move-result v4

    const-string v5, "PowerUI.ChargerNowBarView"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Exception;

    const-string v6, "Need to check callstack, it is not real exception"

    invoke-direct {v4, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v6, "onAttachedWindow()"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevel$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v6, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    iget v6, v0, Lcom/android/systemui/power/ChargerNowBarView;->currentBatteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->isRTL:Z

    const/16 v6, 0x8

    const-string v7, "%"

    const-string v8, "%s"

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercentRtl$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercent$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercent$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercentRtl$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v4

    sget-object v6, Lcom/android/systemui/power/ChargerAnimationUtil;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "my-MM"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v4, :cond_3

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE_TABLET_MYANMAR:I

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE_TABLET:I

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE_MYANMAR:I

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_SIZE:I

    :goto_1
    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_PERCENT_SIZE_TABLET:I

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/android/systemui/power/ChargerAnimationConstants;->BATTERY_LEVEL_PERCENT_SIZE:I

    :goto_2
    new-instance v7, Lkotlin/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v7, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevel$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v7, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-boolean v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->isRTL:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercentRtl$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    goto :goto_3

    :cond_6
    iget-object v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercent$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    :goto_3
    invoke-static {v4, v6}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIcon()Landroid/widget/ImageView;

    move-result-object v4

    iget v6, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargingType:I

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eq v6, v7, :cond_7

    if-eq v6, v9, :cond_7

    if-eq v6, v8, :cond_7

    const v6, 0x7f080d3f

    goto :goto_4

    :cond_7
    const v6, 0x7f080d40

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIconShadow()Landroid/widget/ImageView;

    move-result-object v4

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v10, "minimal_battery_use"

    invoke-static {v4, v10, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const v10, 0x7f06009a

    if-ne v4, v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v11, "accessibility_reduce_transparency"

    invoke-static {v4, v11, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_9

    goto :goto_5

    :cond_9
    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    const-string v4, "navibar"

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v10, 0x7f06009b

    invoke-virtual {v4, v10}, Landroid/content/Context;->getColor(I)I

    move-result v4

    goto :goto_7

    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getColor(I)I

    move-result v4

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIcon()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v10, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevel$delegate:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v10, v0, Lcom/android/systemui/power/ChargerNowBarView;->isRTL:Z

    if-eqz v10, :cond_c

    iget-object v10, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercentRtl$delegate:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    :goto_8
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_c
    iget-object v10, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryPercent$delegate:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto :goto_8

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v4

    iget v10, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargingType:I

    iget v11, v0, Lcom/android/systemui/power/ChargerNowBarView;->currentLayoutDirection:I

    if-ne v11, v2, :cond_d

    const-string/jumbo v11, "rtl_"

    goto :goto_a

    :cond_d
    const-string v11, ""

    :goto_a
    if-eq v10, v7, :cond_f

    if-eq v10, v9, :cond_e

    if-eq v10, v8, :cond_e

    const-string v8, "nowbar_gradient_normal"

    goto :goto_b

    :cond_e
    const-string v8, "nowbar_gradient_superfast"

    goto :goto_b

    :cond_f
    const-string v8, "nowbar_gradient_fast"

    :goto_b
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".json"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/power/ChargerAnimationConstants;->INSTANCE:Lcom/android/systemui/power/ChargerAnimationConstants;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/power/ChargerAnimationConstants;->WAVE_KEY_PATH:Lcom/airbnb/lottie/model/KeyPath;

    sget-object v8, Lcom/airbnb/lottie/LottieProperty;->BLUR_RADIUS:Ljava/lang/Float;

    sget-object v9, Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;->INSTANCE:Lcom/android/systemui/power/ChargerNowBarView$setProgressBarLottie$1;

    invoke-virtual {v4, v6, v8, v9}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIcon()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    const-string v10, "alpha"

    invoke-static {v4, v10, v9}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v11, 0x258

    invoke-virtual {v4, v11, v12}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v9, Landroidx/core/animation/PathInterpolator;

    const v13, 0x3ea8f5c3    # 0.33f

    const v14, 0x3f2b851f    # 0.67f

    invoke-direct {v9, v13, v6, v14, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v9, v4, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-array v9, v3, [F

    fill-array-data v9, :array_1

    invoke-static {v9}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v9

    const-wide/16 v1, 0x6a4

    invoke-virtual {v9, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v15, Landroidx/core/animation/PathInterpolator;

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v15, v13, v6, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v15, v9, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-instance v15, Lcom/android/systemui/power/ChargerNowBarView$addBatteryIconAnimation$batteryIconScaleAnimator$1$1;

    invoke-direct {v15, v0, v9}, Lcom/android/systemui/power/ChargerNowBarView$addBatteryIconAnimation$batteryIconScaleAnimator$1$1;-><init>(Lcom/android/systemui/power/ChargerNowBarView;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v9, v15}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIcon()Landroid/widget/ImageView;

    move-result-object v15

    new-array v14, v3, [F

    fill-array-data v14, :array_2

    const-string/jumbo v11, "translationY"

    invoke-static {v15, v11, v14}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v14, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v14, v13, v6, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v14, v12, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget-object v14, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    filled-new-array {v4, v9, v12}, [Landroidx/core/animation/Animator;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    new-array v4, v3, [F

    fill-array-data v4, :array_3

    invoke-static {v4}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v9, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v9, v13, v6, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v9, v4, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-instance v9, Lcom/android/systemui/power/ChargerNowBarView$addBatteryIconShadowAnimation$batteryIconShadowScaleAnimator$1$1;

    invoke-direct {v9, v0, v4}, Lcom/android/systemui/power/ChargerNowBarView$addBatteryIconShadowAnimation$batteryIconShadowScaleAnimator$1$1;-><init>(Lcom/android/systemui/power/ChargerNowBarView;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v4, v9}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIconShadow()Landroid/widget/ImageView;

    move-result-object v9

    new-array v12, v3, [F

    fill-array-data v12, :array_4

    invoke-static {v9, v10, v12}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v14, 0x258

    invoke-virtual {v9, v14, v15}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v12, Landroidx/core/animation/PathInterpolator;

    const v14, 0x3f2b851f    # 0.67f

    invoke-direct {v12, v13, v6, v14, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v12, v9, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIconShadow()Landroid/widget/ImageView;

    move-result-object v12

    new-array v14, v3, [F

    fill-array-data v14, :array_5

    const-string/jumbo v15, "translationX"

    invoke-static {v12, v15, v14}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v14, Landroidx/core/animation/PathInterpolator;

    invoke-direct {v14, v13, v6, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v14, v12, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryIconShadow()Landroid/widget/ImageView;

    move-result-object v14

    new-array v6, v3, [F

    fill-array-data v6, :array_6

    invoke-static {v14, v11, v6}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v14, Landroidx/core/animation/PathInterpolator;

    const/4 v1, 0x0

    invoke-direct {v14, v13, v1, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v14, v6, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget-object v1, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    filled-new-array {v4, v9, v12, v6}, [Landroidx/core/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    iget-object v1, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevelContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    invoke-static {v1, v10, v2}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v9, 0xc8

    invoke-virtual {v1, v9, v10}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0x190

    invoke-virtual {v1, v9, v10}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v2, Landroidx/core/animation/PathInterpolator;

    const/4 v4, 0x0

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v2, v13, v4, v6, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, v1, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget v2, v0, Lcom/android/systemui/power/ChargerNowBarView;->currentBatteryLevel:I

    add-int/lit8 v4, v2, -0xc

    if-gez v4, :cond_10

    const/4 v4, 0x0

    :cond_10
    filled-new-array {v4, v2}, [I

    move-result-object v2

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v9, 0x3e8

    invoke-virtual {v2, v9, v10}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v4, Landroidx/core/animation/PathInterpolator;

    const v6, 0x3e2e147b    # 0.17f

    const/4 v9, 0x0

    invoke-direct {v4, v6, v6, v9, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v2, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-instance v4, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelSliderAnimator$1$1;

    invoke-direct {v4, v0, v2}, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelSliderAnimator$1$1;-><init>(Lcom/android/systemui/power/ChargerNowBarView;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v2, v4}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-array v4, v3, [F

    fill-array-data v4, :array_8

    invoke-static {v4}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v9, 0x6a4

    invoke-virtual {v4, v9, v10}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v6, Landroidx/core/animation/PathInterpolator;

    const/4 v9, 0x0

    invoke-direct {v6, v13, v9, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v4, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-instance v6, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelScaleAnimator$1$1;

    invoke-direct {v6, v0, v4}, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelAnimation$batteryLevelScaleAnimator$1$1;-><init>(Lcom/android/systemui/power/ChargerNowBarView;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v4, v6}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    iget-object v6, v0, Lcom/android/systemui/power/ChargerNowBarView;->batteryLevelContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    new-array v9, v3, [F

    fill-array-data v9, :array_9

    invoke-static {v6, v11, v9}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v9, 0x6a4

    invoke-virtual {v6, v9, v10}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v9, Landroidx/core/animation/PathInterpolator;

    const/4 v10, 0x0

    invoke-direct {v9, v13, v10, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v9, v6, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    iget-object v9, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    filled-new-array {v1, v2, v4, v6}, [Landroidx/core/animation/Animator;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    iget-object v1, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v9, 0x6a4

    invoke-virtual {v2, v9, v10}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v4, Landroidx/core/animation/PathInterpolator;

    const/4 v6, 0x0

    invoke-direct {v4, v13, v6, v7, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v2, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-instance v4, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelShadowAnimation$1$1;

    invoke-direct {v4, v2, v0}, Lcom/android/systemui/power/ChargerNowBarView$addBatteryLevelShadowAnimation$1$1;-><init>(Landroidx/core/animation/ValueAnimator;Lcom/android/systemui/power/ChargerNowBarView;)V

    invoke-virtual {v2, v4}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/core/animation/AnimatorSet$Builder;

    invoke-direct {v4, v1, v2}, Landroidx/core/animation/AnimatorSet$Builder;-><init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/power/ChargerNowBarView;->currentLayoutDirection:I

    if-nez v2, :cond_11

    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationUtil;->getNowBarCollapsedWidth(Landroid/content/Context;)F

    move-result v1

    neg-float v1, v1

    goto :goto_c

    :cond_11
    invoke-static {v1}, Lcom/android/systemui/power/ChargerAnimationUtil;->getNowBarCollapsedWidth(Landroid/content/Context;)F

    move-result v1

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, v0, Lcom/android/systemui/power/ChargerNowBarView;->currentLayoutDirection:I

    iget v6, v0, Lcom/android/systemui/power/ChargerNowBarView;->currentBatteryLevel:I

    const/high16 v7, 0x42c80000    # 100.0f

    if-nez v4, :cond_12

    invoke-static {v2}, Lcom/android/systemui/power/ChargerAnimationUtil;->getNowBarCollapsedWidth(Landroid/content/Context;)F

    move-result v2

    int-to-float v4, v6

    div-float/2addr v4, v7

    mul-float/2addr v4, v2

    goto :goto_d

    :cond_12
    invoke-static {v2}, Lcom/android/systemui/power/ChargerAnimationUtil;->getNowBarCollapsedWidth(Landroid/content/Context;)F

    move-result v2

    int-to-float v4, v6

    div-float/2addr v4, v7

    mul-float/2addr v4, v2

    neg-float v4, v4

    :goto_d
    add-float/2addr v4, v1

    iget-object v2, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v6

    new-array v7, v3, [F

    const/4 v9, 0x0

    aput v1, v7, v9

    const/4 v1, 0x1

    aput v4, v7, v1

    invoke-static {v6, v15, v7}, Landroidx/core/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroidx/core/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x546

    invoke-virtual {v1, v6, v7}, Landroidx/core/animation/ObjectAnimator;->setDuration(J)V

    new-instance v4, Landroidx/core/animation/PathInterpolator;

    const v9, 0x3e6147ae    # 0.22f

    const v10, 0x3e23d70a    # 0.16f

    const/4 v11, 0x0

    invoke-direct {v4, v9, v10, v11, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, v1, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/core/animation/AnimatorSet$Builder;

    invoke-direct {v4, v2, v1}, Landroidx/core/animation/AnimatorSet$Builder;-><init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V

    iget-object v1, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    new-instance v3, Landroidx/core/animation/PathInterpolator;

    const/4 v4, 0x0

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v3, v13, v4, v6, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v3, v2, Landroidx/core/animation/ValueAnimator;->mInterpolator:Landroidx/core/animation/Interpolator;

    new-instance v3, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/power/ChargerNowBarView$addProgressbarWaveBlurAnimation$1$1;-><init>(Lcom/android/systemui/power/ChargerNowBarView;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/core/animation/AnimatorSet$Builder;

    invoke-direct {v3, v1, v2}, Landroidx/core/animation/AnimatorSet$Builder;-><init>(Landroidx/core/animation/AnimatorSet;Landroidx/core/animation/Animator;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/power/ChargerNowBarView;->getBatteryProgressbar()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v1, v0, Lcom/android/systemui/power/ChargerNowBarView;->chargerAnimationSet:Landroidx/core/animation/AnimatorSet;

    invoke-virtual {v1}, Landroidx/core/animation/AnimatorSet;->start()V

    const-string v1, "addOnChargerAnimationEndHandler"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;

    const-wide/16 v3, 0xce4

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;-><init>(JLcom/android/systemui/power/ChargerNowBarView;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v6, v6, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const-string v0, "Animation Started"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x3ec00000    # -12.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x41000000    # 8.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x3ec00000    # -12.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x41800000    # 16.0f
        0x0
    .end array-data
.end method
