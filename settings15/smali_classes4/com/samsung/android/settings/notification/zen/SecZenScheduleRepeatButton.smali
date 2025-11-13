.class public Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;
.super Landroid/widget/RelativeLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final REPEAT_DAYS:[I

.field public static final VALUES_DAYS:[I

.field public static sRepeatSelectItems:Landroid/util/SparseBooleanArray;


# instance fields
.field public mAlarmRepeatString:Ljava/lang/String;

.field public final mCheckedRepeatItems:[Z

.field public final mColorSet:[I

.field public mColorValues:[I

.field public mContext:Landroid/content/Context;

.field public final mDayFormat:Ljava/text/SimpleDateFormat;

.field public mDragState:I

.field public mEndValue:F

.field public mIsDragging:Z

.field public mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

.field public mRepeatBtn:[Landroid/widget/ToggleButton;

.field public mRepeatClickListener:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

.field public mRepeatTextView:Landroid/widget/TextView;

.field public mStartValue:F

.field public mTouchIndex:I

.field public mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->VALUES_DAYS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x1000000
        0x100000
        0x10000
        0x1000
        0x100
        0x10
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const v1, 0x7f0607ab

    const v2, 0x7f0607ac

    const v3, 0x7f0607aa

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070ea9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    new-array v0, p2, [Z

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const v0, 0x7f0607ab

    const v1, 0x7f0607ac

    const v2, 0x7f0607aa

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x7

    new-array p3, p2, [Z

    iput-object p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const p3, 0x7f0607ab

    const v0, 0x7f0607ac

    const v1, 0x7f0607aa

    filled-new-array {v0, v1, p3}, [I

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE"

    invoke-direct {p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    const/4 p3, -0x1

    iput p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getDayOfWeekString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "1. day value is invalid : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenScheduleRepeatButton"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14230e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f142307

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14231c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f142320

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14231e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14230a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14231a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInterpolatorStyle()Landroid/view/animation/Interpolator;
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method public static setTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    div-float v0, p2, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLargeTextSize fontScale : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ZenScheduleRepeatButton"

    invoke-static {v1, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x3f99999a    # 1.2f

    cmpl-float v2, p0, p2

    if-lez v2, :cond_0

    move p0, p2

    :cond_0
    mul-float/2addr v0, p0

    float-to-double v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float p0, v2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Exception "

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final clickRepeatButton()V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x7

    if-ge v5, v7, :cond_1

    iget-object v8, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    if-eqz v8, :cond_0

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int v8, v2, v5

    rem-int/2addr v8, v7

    aget v7, v1, v8

    or-int/2addr v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    sub-int/2addr v2, v3

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    add-int v8, v2, v5

    rem-int/2addr v8, v7

    iget-object v9, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget v8, v1, v8

    and-int v10, v6, v8

    if-ne v10, v8, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    aput-boolean v8, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    const-string v5, "ZenScheduleRepeatButton"

    if-eqz v2, :cond_11

    move v2, v4

    :goto_3
    const/16 v8, 0x258

    const-string/jumbo v9, "sec"

    if-ge v2, v7, :cond_6

    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_5

    sget-object v10, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v10, v10, v2

    invoke-virtual {v10, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v10, v10, v2

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v10, v10, v2

    iget-object v11, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const v12, 0x7f0607ad

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setTextColor(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ko"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v8, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v8, v8, v2

    const-string/jumbo v9, "sans-serif"

    invoke-static {v9, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    :cond_4
    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v10, v10, v2

    invoke-static {v9, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v9, v8, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4

    :cond_5
    sget-object v10, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v10, v10, v2

    invoke-virtual {v10, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v10, v10, v2

    iget-object v11, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    aget v12, v12, v2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v10, v10, v2

    invoke-static {v9, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v9, v8, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_6
    sget-object v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const-string v10, ""

    if-nez v2, :cond_7

    iput-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto/16 :goto_7

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v12

    rsub-int/lit8 v13, v12, 0xe

    rem-int/2addr v13, v7

    rsub-int/lit8 v14, v12, 0x8

    rem-int/2addr v14, v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move v3, v4

    move v8, v3

    :goto_5
    if-ge v3, v7, :cond_c

    sget-object v4, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_b

    if-lez v8, :cond_a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ar"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "\u060c "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    const-string v4, ", "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_6
    add-int v4, v12, v3

    const/4 v7, 0x7

    rem-int/2addr v4, v7

    invoke-virtual {v15, v7, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v4, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x7

    goto :goto_5

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setRepeatSubText() - size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", checkCnt = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_d

    iput-object v10, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const/4 v2, 0x7

    if-ne v8, v2, :cond_e

    iget-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142305

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_7

    :cond_e
    const/4 v2, 0x5

    if-ne v8, v2, :cond_f

    sget-object v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_7

    :cond_f
    const/4 v2, 0x2

    if-ne v8, v2, :cond_10

    sget-object v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f142322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_7

    :cond_10
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    :goto_7
    iget-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v9, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    const/16 v7, 0x258

    invoke-static {v4, v7, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatClickListener:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;

    if-nez v6, :cond_12

    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    const/4 v2, 0x0

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateScheduleRule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x7

    if-ge v3, v4, :cond_14

    aget v4, v1, v3

    and-int/2addr v4, v6

    if-eqz v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_14
    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x7

    :goto_9
    if-ge v4, v7, :cond_16

    aget v7, v1, v3

    and-int/2addr v7, v6

    if-eqz v7, :cond_15

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v3, 0x1

    aput v8, v2, v5

    move v5, v7

    :cond_15
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x7

    rem-int/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_16
    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateScheduleRule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDaysEmpty:Z

    :goto_a
    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_17

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mNameEmpty:Z

    :cond_17
    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateSaveButton()V

    goto :goto_b

    :cond_18
    const-string v0, "mRepeatClickListener is null. not able to click Repeat button."

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070ea6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v0, v3

    const/4 v3, 0x7

    div-int/2addr v4, v3

    div-int/2addr v0, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_1

    rsub-int/lit8 v0, v0, 0x6

    if-gtz v0, :cond_1

    move v0, v5

    :cond_1
    if-lt v0, v3, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    move v0, v5

    :cond_3
    :goto_0
    if-eqz v2, :cond_f

    const/4 v3, -0x1

    if-eq v2, v1, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    goto/16 :goto_6

    :cond_4
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    if-eq v2, v0, :cond_10

    if-ge v2, v0, :cond_6

    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v4, v3, :cond_5

    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    :cond_5
    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    goto :goto_1

    :cond_6
    if-le v2, v0, :cond_8

    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v4, v1, :cond_7

    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    :cond_7
    iput v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    :cond_8
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->performClick()Z

    :cond_9
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_b

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v2, v1, :cond_a

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v2, v0, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    if-ne v2, v3, :cond_b

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v1

    :goto_3
    if-le v2, v0, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->performClick()Z

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    goto :goto_6

    :cond_c
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_e

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v2, v1, :cond_d

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    add-int/2addr v2, v1

    :goto_4
    if-gt v2, v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    if-ne v2, v3, :cond_e

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v1

    :goto_5
    if-lt v2, v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_e
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    iput v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    goto :goto_6

    :cond_f
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    :cond_10
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0aaa

    invoke-virtual {p1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-array p1, v0, [Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    new-array p1, v0, [Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    const p1, 0x7f0a0c8b

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ToggleButton;

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    new-instance v5, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;Landroid/content/Context;)V

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v3

    iput-object v5, v4, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->mRepeatToggleButton:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    add-int/2addr p1, v1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aput-boolean v2, v4, v3

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/2addr v3, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    sub-int/2addr p1, v1

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v5, :cond_1

    array-length v8, v5

    if-eq v8, v7, :cond_2

    :cond_1
    new-array v5, v7, [I

    const/high16 v8, -0x1000000

    aput v8, v5, v2

    const v8, -0xffff01

    aput v8, v5, v1

    const/high16 v8, -0x10000

    aput v8, v5, v6

    :cond_2
    new-array v8, v0, [I

    move v9, v2

    :goto_1
    if-ge v9, v0, :cond_5

    const-string v10, "XXXXXXR"

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x52

    if-ne v10, v11, :cond_3

    aget v10, v5, v6

    goto :goto_2

    :cond_3
    const/16 v11, 0x42

    if-ne v10, v11, :cond_4

    aget v10, v5, v1

    goto :goto_2

    :cond_4
    aget v10, v5, v2

    :goto_2
    aput v10, v8, v9

    add-int/2addr v9, v1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_a

    const/4 v5, 0x6

    if-eq p1, v6, :cond_9

    const/4 v9, 0x5

    if-eq p1, v7, :cond_8

    const/4 v10, 0x4

    if-eq p1, v10, :cond_7

    if-eq p1, v9, :cond_6

    if-eq p1, v5, :cond_b

    move v6, v2

    goto :goto_3

    :cond_6
    move v6, v7

    goto :goto_3

    :cond_7
    move v6, v10

    goto :goto_3

    :cond_8
    move v6, v9

    goto :goto_3

    :cond_9
    move v6, v5

    goto :goto_3

    :cond_a
    move v6, v1

    :cond_b
    :goto_3
    new-array v5, v0, [I

    move v7, v2

    :goto_4
    if-ge v7, v0, :cond_c

    add-int v9, v7, v6

    rem-int/2addr v9, v0

    aget v10, v8, v7

    aput v10, v5, v9

    add-int/2addr v7, v1

    goto :goto_4

    :cond_c
    iput-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    move v5, v2

    :goto_5
    if-ge v5, v0, :cond_d

    add-int v6, p1, v5

    rem-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget v8, v3, v6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v5

    iget-object v9, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    aget v10, v10, v5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ToggleButton;->setTextColor(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v5

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v5

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v5

    new-instance v8, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;

    invoke-direct {v8, p0, v4, v6}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;[II)V

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v7, v7, v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070eae

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/2addr v5, v1

    goto :goto_5

    :cond_d
    :goto_6
    if-ge v2, v0, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object p1, p1, v2

    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;I)V

    invoke-virtual {p1, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/2addr v2, v1

    goto :goto_6

    :cond_e
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    const p1, 0x7f0a0c93

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070eac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x7f142319
        0x7f142309
        0x7f14231d
        0x7f14231f
        0x7f14231b
        0x7f142306
        0x7f14230d
    .end array-data

    :array_1
    .array-data 4
        0x7f14231a
        0x7f14230a
        0x7f14231e
        0x7f142320
        0x7f14231c
        0x7f142307
        0x7f14230e
    .end array-data
.end method

.method public final setSelectionMarkAnimator(IZ)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setSelectionMarkAnimator = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , isShowAnim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenScheduleRepeatButton"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    iput v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    iput v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    const/16 v3, 0xc8

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    iput v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    const/16 v3, 0x12c

    :goto_0
    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    iget v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    new-array v6, v0, [F

    aput v4, v6, v2

    aput v5, v6, v1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getInterpolatorStyle()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;IZI)V

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;I)V

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    iget v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    new-array v8, v0, [F

    aput v3, v8, v2

    aput v7, v8, v1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getInterpolatorStyle()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;

    invoke-direct {v5, p0, p1, p2, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;IZI)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p1, v0, [Landroid/animation/Animator;

    aput-object v4, p1, v2

    aput-object v3, p1, v1

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
