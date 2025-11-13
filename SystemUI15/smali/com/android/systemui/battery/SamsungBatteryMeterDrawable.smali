.class public final Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BATTERY_BACKGROUND_ALPHA:F

.field public static final BLINKING_INTERVAL:I

.field public static final DEBUG:Z

.field public static final MSG_POST_INVALIDATE:I


# instance fields
.field public final MAX_LEVEL:I

.field public final SINGLE_LEVEL:I

.field public final additionalWidth:I

.field public batteryLevelBackgroundColor:I

.field public batteryLevelBackgroundLightColor:I

.field public final batteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field public batteryLevelColor:I

.field public final batteryLevelPaint:Landroid/graphics/Paint;

.field public final batteryOuterBackgroundDarkColor:I

.field public final batteryOuterBackgroundLightColor:I

.field public final batteryOuterPaint:Landroid/graphics/Paint;

.field public batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

.field public final colors:[I

.field public final context:Landroid/content/Context;

.field public final cornerRadius:F

.field public darkIntensity:F

.field public flagBlinkingNeeded:Z

.field public flagDrawIcon:Z

.field public final fontSize:F

.field public grayIconColor:I

.field public final height:I

.field public iconTint:I

.field public final icongap:I

.field public intrinsicHeight:I

.field public intrinsicWidth:I

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

.field public powerSaveEnabled:Z

.field public final roundedRectPaint:Landroid/graphics/Paint;

.field public shouldShowGrayIcon:Z

.field public showPercentSetting:Z

.field public showWarningText:Z

.field public final sideMargin:F

.field public textMeasuredWidth:F

.field public final textPaint:Landroid/graphics/Paint;

.field public final warningTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->DEBUG:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    const/16 v0, 0x3e8

    sput v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->BLINKING_INTERVAL:I

    const v0, 0x3eb33333    # 0.35f

    sput v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->BATTERY_BACKGROUND_ALPHA:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->roundedRectPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->SINGLE_LEVEL:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MAX_LEVEL:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->iconTint:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ef6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->height:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ef9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ef4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->additionalWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ef5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->icongap:I

    int-to-float v1, v1

    const v2, 0x3f47ae14    # 0.78f

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->fontSize:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->cornerRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->sideMargin:F

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    new-instance v1, Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-direct {v1}, Lcom/android/systemui/battery/SamsungBatteryState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->darkIntensity:F

    iput-boolean v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    iput v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->grayIconColor:I

    iput v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundColor:I

    iput-boolean v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagDrawIcon:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;-><init>(Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f03000d

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v4, 0x7f03000e

    :try_start_1
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    goto :goto_1

    :catchall_0
    move-exception p0

    :goto_0
    move-object v3, v1

    goto/16 :goto_8

    :cond_0
    move v5, v4

    :goto_1
    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->colors:[I

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_7

    iget-object v7, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->colors:[I

    if-nez v7, :cond_1

    move-object v7, v3

    :cond_1
    mul-int/lit8 v8, v6, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    goto :goto_3

    :cond_2
    move v9, v4

    :goto_3
    aput v9, v7, v8

    if-eqz p1, :cond_4

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    iget-object v7, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->colors:[I

    if-nez v7, :cond_3

    move-object v7, v3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getThemeAttributeId(II)I

    move-result v10

    invoke-static {v9, v10, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v9

    aput v9, v7, v8

    goto :goto_5

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->colors:[I

    if-nez v7, :cond_5

    move-object v7, v3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    goto :goto_4

    :cond_6
    move v9, v4

    :goto_4
    aput v9, v7, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060964

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    const v5, 0x7f060963

    invoke-virtual {p1, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelColor:I

    const v1, 0x7f060966

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundLightColor:I

    const v1, 0x7f060965

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    const v1, 0x7f060968

    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterBackgroundLightColor:I

    const v5, 0x7f060967

    invoke-virtual {p1, v5, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterBackgroundDarkColor:I

    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v5, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelColor:I

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundLightColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->roundedRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const-string p1, "sec"

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    const/16 v0, 0x2bc

    invoke-static {p1, v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v4, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->fontSize:F

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->fontSize:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->colors:[I

    if-nez p1, :cond_a

    move-object v0, v3

    goto :goto_6

    :cond_a
    move-object v0, p1

    :goto_6
    array-length v0, v0

    if-le v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    move-object v3, p1

    :goto_7
    aget p1, v3, v2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->resizeDrawable()V

    return-void

    :catchall_1
    move-exception p0

    move-object p1, v3

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    move-object p1, v3

    :goto_8
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_e
    throw p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget-boolean v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-nez v2, :cond_3

    iget v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    if-ne v2, v5, :cond_3

    iget v1, v1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    sget v2, Lcom/android/systemui/battery/SamsungBatteryState;->BATTERY_HEALTH_OVERHEAT_LIMIT:I

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_0
    iput-boolean v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    sget-boolean v1, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagDrawIcon:Z

    const-string v2, "battery icon blink for battery health... mFlagDrawIconTurn:"

    const-string v6, "SamsungBatteryMeterDrawable"

    invoke-static {v2, v6, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    sget v2, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    sget v6, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->BLINKING_INTERVAL:I

    int-to-long v6, v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagDrawIcon:Z

    xor-int/2addr v1, v4

    goto :goto_0

    :cond_3
    iput-boolean v3, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getBatteryLevel()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getBatteryLevel()I

    move-result v1

    iget v2, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v6, 0x60

    const/high16 v16, 0x3f800000    # 1.0f

    if-lt v1, v6, :cond_6

    move/from16 v6, v16

    goto :goto_1

    :cond_6
    if-gt v1, v5, :cond_7

    const/4 v6, 0x0

    goto :goto_1

    :cond_7
    int-to-float v6, v1

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    :goto_1
    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v13, v7

    if-gt v1, v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldDrawIcon()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v4

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    iput-boolean v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showWarningText:Z

    iget-boolean v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    const v17, 0x3e19999a    # 0.15f

    const v18, 0x3f59999a    # 0.85f

    const/16 v12, 0x10

    if-nez v7, :cond_9

    if-nez v6, :cond_9

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v9, v6

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v6

    iget v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->cornerRadius:F

    iget-object v8, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryOuterPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/16 v19, 0x0

    move-object v6, v14

    move-object/from16 v20, v8

    move/from16 v8, v19

    move/from16 v19, v11

    move v15, v12

    move/from16 v12, v19

    move v4, v13

    move-object/from16 v13, v20

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_9
    move v15, v12

    move v4, v13

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v9, v6

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v6

    iget v12, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->cornerRadius:F

    iget-object v13, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->roundedRectPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v14

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-boolean v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldShowGrayIcon:Z

    if-eqz v6, :cond_a

    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_a
    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v6, v6, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    if-le v6, v5, :cond_c

    if-ge v6, v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v6, v6

    mul-float v7, v6, v18

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v6

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_b
    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v9, v6

    mul-float v7, v9, v17

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v6

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v6, v6

    int-to-float v7, v4

    sub-float v7, v6, v7

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v6

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_d
    int-to-float v7, v4

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v9, v6

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v6

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelBackgroundPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_3
    iget-boolean v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-nez v6, :cond_e

    iget-boolean v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showWarningText:Z

    if-nez v6, :cond_e

    invoke-virtual {v14}, Landroid/graphics/Canvas;->save()I

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->sideMargin:F

    iget v8, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v8, v8

    sub-float v24, v8, v7

    iget v8, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v8, v8

    sub-float v25, v8, v7

    iget v8, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->cornerRadius:F

    sget-object v28, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v7

    move/from16 v26, v8

    move/from16 v27, v8

    invoke-virtual/range {v21 .. v28}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v14, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_4

    :cond_e
    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_4
    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getBatteryLevel()I

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget-boolean v9, v8, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    const/4 v12, 0x0

    if-eqz v9, :cond_f

    iget-boolean v8, v8, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    if-eqz v8, :cond_f

    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelColor:I

    goto :goto_a

    :cond_f
    move v8, v3

    move v9, v8

    :goto_5
    iget-object v10, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->colors:[I

    if-nez v10, :cond_10

    move-object v11, v12

    goto :goto_6

    :cond_10
    move-object v11, v10

    :goto_6
    array-length v11, v11

    if-ge v8, v11, :cond_16

    if-nez v10, :cond_11

    move-object v9, v12

    goto :goto_7

    :cond_11
    move-object v9, v10

    :goto_7
    aget v9, v9, v8

    if-nez v10, :cond_12

    move-object v11, v12

    goto :goto_8

    :cond_12
    move-object v11, v10

    :goto_8
    add-int/lit8 v13, v8, 0x1

    aget v11, v11, v13

    if-gt v7, v9, :cond_15

    if-nez v10, :cond_13

    move-object v10, v12

    :cond_13
    array-length v7, v10

    add-int/lit8 v7, v7, -0x2

    if-ne v8, v7, :cond_14

    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->iconTint:I

    move v9, v7

    goto :goto_9

    :cond_14
    move v9, v11

    goto :goto_9

    :cond_15
    add-int/lit8 v8, v8, 0x2

    move v9, v11

    goto :goto_5

    :cond_16
    :goto_9
    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->iconTint:I

    if-ne v9, v7, :cond_17

    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelColor:I

    goto :goto_a

    :cond_17
    move v7, v9

    :goto_a
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldShowGrayIcon:Z

    if-eqz v6, :cond_19

    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v6, v6, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    if-le v6, v5, :cond_18

    if-lt v6, v15, :cond_19

    :cond_18
    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->grayIconColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_19
    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v7, v6, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    if-le v7, v5, :cond_1a

    if-ge v7, v15, :cond_1a

    iget-boolean v6, v6, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    if-nez v6, :cond_1a

    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    const v8, 0x7f060962

    invoke-virtual {v6, v8, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1a
    :goto_b
    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v6, v6, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    if-le v6, v5, :cond_1c

    if-ge v6, v15, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v7, v4

    mul-float v9, v7, v18

    iget v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v4

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_1b
    iget v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v4, v4

    mul-float v9, v4, v17

    iget v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v4

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget v5, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v7, v5

    int-to-float v4, v4

    sub-float v9, v7, v4

    iget v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v4

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_c

    :cond_1d
    int-to-float v9, v4

    iget v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v10, v4

    iget-object v11, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryLevelPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_c
    iget-boolean v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-nez v4, :cond_1e

    iget-boolean v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showWarningText:Z

    if-nez v4, :cond_1e

    invoke-virtual {v14}, Landroid/graphics/Canvas;->restore()V

    :cond_1e
    iget-boolean v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v4, :cond_21

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textMeasuredWidth:F

    iget v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    add-float/2addr v8, v6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    sub-float/2addr v8, v6

    sub-float v8, v8, v16

    invoke-virtual {v0, v5}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getTextOriginX(Landroid/graphics/Rect;)F

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isHighTextContrastEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {v3}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    :cond_1f
    iget-object v7, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v7}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "my_MM"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-virtual {v14, v1, v5, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1, v5, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_d
    if-eqz v6, :cond_21

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldDrawIcon()Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showWarningText:Z

    if-eqz v1, :cond_30

    :cond_22
    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    const v4, 0x7f081352

    const v5, 0x7f081351

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_f

    :cond_23
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_f

    :cond_24
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v1, v1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_e

    :cond_25
    move v1, v3

    :goto_e
    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08129c

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_f

    :cond_26
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08129d

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_f

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isBatteryProtectionWorking()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v1, :cond_28

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0812a0

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_f

    :cond_28
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0812a1

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_f

    :cond_29
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v1}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08129b

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_f

    :cond_2a
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08129e

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_f

    :cond_2b
    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showWarningText:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0812a3

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_f

    :cond_2c
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0812a4

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_f

    :cond_2d
    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_f

    :cond_2e
    iget-object v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_f
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v1, v3, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getChargingIconBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showWarningText:Z

    if-eqz v4, :cond_2f

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v5, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->warningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_10

    :cond_2f
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v5, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_30
    :goto_10
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v2, p1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getBatteryLevel()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x64

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    :goto_0
    return p0
.end method

.method public final getBatteryWidthLevelBased()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    const v1, 0x7f070ef9

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v0, v0, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldDrawIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MAX_LEVEL:I

    if-ne v0, v2, :cond_0

    const p0, 0x7f070ef8

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->SINGLE_LEVEL:I

    if-lt v0, p0, :cond_1

    if-ge v0, v2, :cond_1

    const p0, 0x7f070efa

    return p0

    :cond_1
    return v1

    :cond_2
    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MAX_LEVEL:I

    if-ne v0, p0, :cond_3

    const p0, 0x7f070ef7

    return p0

    :cond_3
    return v1
.end method

.method public final getChargingIconBounds()Landroid/graphics/Rect;
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iget v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    sub-int v3, v2, v0

    iget v4, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->icongap:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->additionalWidth:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textMeasuredWidth:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    iget-boolean v5, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    if-nez v5, :cond_2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v3, v2, v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textMeasuredWidth:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->icongap:I

    add-int/2addr v2, v3

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->additionalWidth:I

    add-int/2addr v2, p0

    div-int/lit8 v3, v2, 0x2

    :cond_3
    new-instance p0, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTextBounds(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->textPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v1
.end method

.method public final getTextOriginX(Landroid/graphics/Rect;)F
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    iget-object v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldDrawIcon()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showWarningText:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    :goto_0
    int-to-float p0, p0

    div-float/2addr p0, v3

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    sub-int/2addr p0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->additionalWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->icongap:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    :goto_2
    return p0
.end method

.method public final isBatteryProtectionWorking()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v1, p0, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    iget v2, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->miscEvent:I

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->getProtectBatteryValue(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :cond_0
    const/16 v0, 0x64

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isProtectedFullyByMaximum(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public final isRtl()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onBatteryLevelChanged(Lcom/android/systemui/battery/SamsungBatteryState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v1, v0, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    iget v2, p1, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    iget-boolean v2, p1, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    iget-boolean v2, p1, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    iget v2, p1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    iget v2, p1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    iget v2, p1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    iget-boolean v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v3

    const-string v1, "onBatteryLevelChanged isSomethingChanged: "

    const-string v2, "SamsungBatteryMeterDrawable"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->resizeDrawable()V

    sget-boolean p1, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->DEBUG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PluggedIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Charging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", BatteryHealth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",BatteryStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BatteryOnline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IsDirectPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", miscEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/systemui/battery/SamsungBatteryState;->miscEvent:I

    const-string v1, ","

    invoke-static {p1, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBatteryLevelChanged - "

    invoke-static {v0, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    sget v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final postInvalidate()V
    .locals 3

    new-instance v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidate$1;-><init>(Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidate$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidate$2;-><init>(Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final resizeDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->getBatteryWidthLevelBased()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicWidth:I

    iget v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->height:I

    iput v1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->intrinsicHeight:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setShowPercentSetting(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->showPercentSetting:Z

    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->resizeDrawable()V

    iget-object p1, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    sget v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable$postInvalidateHandler$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final shouldDrawIcon()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    invoke-virtual {v0}, Lcom/android/systemui/battery/SamsungBatteryState;->shouldShowChargingIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->isBatteryProtectionWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->flagBlinkingNeeded:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->powerSaveEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget v0, v0, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    iget p0, p0, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
