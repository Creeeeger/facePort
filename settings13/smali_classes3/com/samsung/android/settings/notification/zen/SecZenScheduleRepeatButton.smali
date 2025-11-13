.class public Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;
.super Landroid/widget/RelativeLayout;
.source "SecZenScheduleRepeatButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;,
        Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;,
        Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$InterpolatorStyle;
    }
.end annotation


# static fields
.field public static final REPEAT_DAYS:[I

.field public static final VALUES_DAYS:[I

.field private static sRepeatSelectItems:Landroid/util/SparseBooleanArray;


# instance fields
.field private final BUTTON_CNT:I

.field private final LEFT_DRAG:I

.field private final RIGHT_DRAG:I

.field public mAlarmRepeatString:Ljava/lang/String;

.field private final mCheckedRepeatItems:[Z

.field private final mColorSet:[I

.field private mColorValues:[I

.field private mContext:Landroid/content/Context;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDragState:I

.field private mEndValue:F

.field public mIsDateSelected:Z

.field public mIsDragging:Z

.field private mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

.field private mRepeatBtn:[Landroid/widget/ToggleButton;

.field private mRepeatClickListener:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;

.field private mRepeatTextView:Landroid/widget/TextView;

.field private mStartValue:F

.field private mTouchIndex:I

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndValue(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatTextView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartValue(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mclickRepeatButton(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->clickRepeatButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 89
    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->VALUES_DAYS:[I

    new-array v0, v0, [I

    .line 101
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
    .locals 6

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    .line 47
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v1, v0, [Z

    .line 49
    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    const/4 v2, -0x1

    .line 53
    iput v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 63
    sget v4, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_toggle_btn_text_color_normal:I

    aput v4, v3, v1

    sget v1, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_saturday_color:I

    const/4 v4, 0x1

    aput v1, v3, v4

    sget v1, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_sunday_color:I

    const/4 v5, 0x2

    aput v1, v3, v5

    iput-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    new-array v0, v0, [I

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 75
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    .line 109
    iput v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->RIGHT_DRAG:I

    .line 110
    iput v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->LEFT_DRAG:I

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 130
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$dimen;->sec_zen_mode_schedule_repeat_layout_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    .line 47
    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array v0, p2, [Z

    .line 49
    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    const/4 v1, -0x1

    .line 53
    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 63
    sget v3, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_toggle_btn_text_color_normal:I

    aput v3, v2, v0

    sget v0, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_saturday_color:I

    const/4 v3, 0x1

    aput v0, v2, v3

    sget v0, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_sunday_color:I

    const/4 v4, 0x2

    aput v0, v2, v4

    iput-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    new-array p2, p2, [I

    .line 69
    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 p2, 0x0

    .line 73
    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 75
    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    .line 109
    iput v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->RIGHT_DRAG:I

    .line 110
    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->LEFT_DRAG:I

    .line 112
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x7

    .line 47
    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->BUTTON_CNT:I

    new-array p3, p2, [Z

    .line 49
    iput-object p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    const/4 p3, 0x0

    .line 51
    iput-boolean p3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 63
    sget v2, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_toggle_btn_text_color_normal:I

    aput v2, v1, p3

    sget p3, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_saturday_color:I

    const/4 v2, 0x1

    aput p3, v1, v2

    sget p3, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_sunday_color:I

    const/4 v3, 0x2

    aput p3, v1, v3

    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    new-array p2, p2, [I

    .line 69
    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    const/4 p2, 0x0

    .line 73
    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 75
    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    .line 109
    iput v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->RIGHT_DRAG:I

    .line 110
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->LEFT_DRAG:I

    .line 112
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "EEE"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clickRepeatButton()V
    .locals 2

    .line 511
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDateSelected:Z

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getCheckDay()I

    move-result v0

    const/4 v1, 0x1

    .line 516
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setCheckDayWithAnimation(IZ)V

    .line 518
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;

    if-eqz p0, :cond_1

    .line 519
    invoke-interface {p0, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;->setRepeatClick(I)V

    goto :goto_0

    :cond_1
    const-string p0, "ZenScheduleRepeatButton"

    const-string v0, "mRepeatClickListener is null. not able to click Repeat button."

    .line 521
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static getColor(C[I)I
    .locals 1

    const/16 v0, 0x52

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    .line 340
    aget p0, p1, p0

    return p0

    :cond_0
    const/16 v0, 0x42

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    .line 342
    aget p0, p1, p0

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 344
    aget p0, p1, p0

    return p0
.end method

.method public static getColors([II)[I
    .locals 4

    const/4 v0, 0x3

    if-eqz p0, :cond_0

    .line 321
    array-length v1, p0

    if-eq v1, v0, :cond_1

    :cond_0
    new-array p0, v0, [I

    .line 322
    fill-array-data p0, :array_0

    :cond_1
    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const-string v3, "XXXXXXR"

    .line 331
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getColor(C[I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getRotateOffset(I)I

    move-result p0

    .line 336
    invoke-static {v1, p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->rotate([II)[I

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0xffff01
        -0x10000
    .end array-data
.end method

.method public static getDayOfWeekString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    const-string v0, "1. day value is invalid : "

    const-string v1, "ZenScheduleRepeatButton"

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 697
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 694
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_saturday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 691
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_friday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 688
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_thursday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 685
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_wednesday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 682
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_tuesday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 679
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_monday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 676
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_sunday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 670
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 667
    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_sat:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 664
    :pswitch_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_fri:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 661
    :pswitch_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_thu:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 658
    :pswitch_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_wed:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 655
    :pswitch_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_tue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 652
    :pswitch_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_mon:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 649
    :pswitch_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_dnd_sun:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static getInterpolatorStyle(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;
    .locals 4

    .line 485
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$6;->$SwitchMap$com$samsung$android$settings$notification$zen$SecZenScheduleRepeatButton$InterpolatorStyle:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 502
    :pswitch_0
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v3, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    .line 499
    :pswitch_1
    new-instance p0, Landroid/view/animation/PathInterpolator;

    invoke-direct {p0, v3, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    .line 496
    :pswitch_2
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    .line 493
    :pswitch_3
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    invoke-direct {p0, v3, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    .line 490
    :pswitch_4
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f2b851f    # 0.67f

    invoke-direct {p0, v3, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    .line 487
    :pswitch_5
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f547ae1    # 0.83f

    invoke-direct {p0, v3, v2, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRotateOffset(I)I
    .locals 5

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    const/4 v4, 0x4

    if-eq p0, v4, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    return v2

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static getStartDayOfWeek()I
    .locals 1

    .line 878
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method private inflateRepeatBtn()V
    .locals 13

    const/4 v0, 0x7

    new-array v1, v0, [Landroid/widget/ToggleButton;

    .line 177
    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    new-array v1, v0, [Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    .line 178
    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    .line 179
    sget v1, Lcom/android/settings/R$id;->repeat_0:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    .line 182
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    aput-object v6, v5, v3

    .line 183
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    new-instance v6, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;Landroid/content/Context;)V

    aput-object v6, v5, v3

    .line 184
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;->setRepeatToggleButton(Landroid/view/View;)V

    .line 185
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 186
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 187
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 189
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    add-int/2addr v1, v4

    .line 192
    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aput-boolean v2, v4, v3

    .line 194
    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v1

    sub-int/2addr v1, v4

    .line 199
    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->isMirroringEnabled()Z

    move-result v3

    new-array v5, v0, [I

    .line 200
    sget v6, Lcom/android/settings/R$string;->sec_dnd_sun:I

    aput v6, v5, v2

    sget v6, Lcom/android/settings/R$string;->sec_dnd_mon:I

    aput v6, v5, v4

    sget v6, Lcom/android/settings/R$string;->sec_dnd_tue:I

    const/4 v7, 0x2

    aput v6, v5, v7

    sget v6, Lcom/android/settings/R$string;->sec_dnd_wed:I

    const/4 v8, 0x3

    aput v6, v5, v8

    sget v6, Lcom/android/settings/R$string;->sec_dnd_thu:I

    const/4 v9, 0x4

    aput v6, v5, v9

    sget v6, Lcom/android/settings/R$string;->sec_dnd_fri:I

    const/4 v10, 0x5

    aput v6, v5, v10

    sget v6, Lcom/android/settings/R$string;->sec_dnd_sat:I

    const/4 v11, 0x6

    aput v6, v5, v11

    new-array v6, v0, [I

    .line 204
    sget v12, Lcom/android/settings/R$string;->sec_dnd_sunday:I

    aput v12, v6, v2

    sget v12, Lcom/android/settings/R$string;->sec_dnd_monday:I

    aput v12, v6, v4

    sget v4, Lcom/android/settings/R$string;->sec_dnd_tuesday:I

    aput v4, v6, v7

    sget v4, Lcom/android/settings/R$string;->sec_dnd_wednesday:I

    aput v4, v6, v8

    sget v4, Lcom/android/settings/R$string;->sec_dnd_thursday:I

    aput v4, v6, v9

    sget v4, Lcom/android/settings/R$string;->sec_dnd_friday:I

    aput v4, v6, v10

    sget v4, Lcom/android/settings/R$string;->sec_dnd_saturday:I

    aput v4, v6, v11

    .line 209
    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorSet:[I

    invoke-static {v4, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getColors([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    if-eqz v3, :cond_1

    const-string v7, "ZenScheduleRepeatButton"

    const-string v8, "isMirroringEnabled : true"

    .line 215
    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v1, 0x6

    sub-int/2addr v7, v4

    .line 216
    rem-int/2addr v7, v0

    goto :goto_2

    :cond_1
    add-int v7, v1, v4

    .line 218
    rem-int/2addr v7, v0

    .line 221
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    aget v9, v5, v7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    :try_start_0
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v8, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v8, v8, v4

    iget-object v10, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    aget v11, v11, v4

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 226
    iget-object v8, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v8, v8, v4

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v8, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v8, v8, v4

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v8, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v8, v8, v4

    new-instance v9, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;

    invoke-direct {v9, p0, v6, v7}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$1;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;[II)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 236
    iget-object v7, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v8, v8, v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settings/R$dimen;->sec_zen_mode_schedule_repeat_toggle_btn_text_size:I

    .line 237
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f99999a    # 1.2f

    .line 236
    invoke-static {v7, v8, v9, v10}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v2, v0, :cond_3

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v2

    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 163
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 165
    sget v1, Lcom/android/settings/R$layout;->sec_zen_schedule_repeat_button:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mView:Landroid/view/View;

    .line 166
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->inflateRepeatBtn()V

    .line 168
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    .line 169
    sget p1, Lcom/android/settings/R$id;->repeat_text:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_zen_mode_schedule_repeat_text_size:I

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    .line 171
    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V

    .line 173
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public static isMirroringEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isRtl()Z
    .locals 2

    .line 882
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static rotate([II)[I
    .locals 5

    .line 368
    array-length v0, p0

    .line 369
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int v3, v2, p1

    .line 371
    rem-int/2addr v3, v0

    aget v4, p0, v2

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private setCheckDayWithAnimation(IZ)V
    .locals 8

    .line 547
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    .line 548
    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    add-int v6, v1, v4

    .line 552
    rem-int/2addr v6, v5

    .line 554
    iget-object v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget v6, v0, v6

    and-int v7, p1, v6

    if-ne v7, v6, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    aput-boolean v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 557
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    if-eqz p1, :cond_6

    move p1, v3

    :goto_2
    if-ge p1, v5, :cond_5

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mCheckedRepeatItems:[Z

    aget-boolean v0, v0, p1

    const-string v1, "sans-serif"

    if-eqz v0, :cond_3

    .line 560
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 562
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$color;->sec_zen_mode_schedule_repeat_toggle_btn_text_color_select:I

    .line 564
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 563
    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 566
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ko"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    const-string v1, "sans-serif-medium"

    .line 570
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 573
    :cond_3
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    if-nez p2, :cond_4

    .line 576
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v0, v0, p1

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mColorValues:[I

    aget v6, v6, p1

    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    .line 580
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 584
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setRepeatText()V

    :cond_6
    return-void
.end method

.method private setRepeatText()V
    .locals 12

    .line 589
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 592
    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto/16 :goto_2

    .line 597
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v3

    rsub-int/lit8 v4, v3, 0xe

    const/4 v5, 0x7

    .line 600
    rem-int/2addr v4, v5

    rsub-int/lit8 v6, v3, 0x8

    .line 601
    rem-int/2addr v6, v5

    .line 602
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v8, v5, :cond_5

    .line 604
    sget-object v10, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_4

    if-lez v9, :cond_3

    .line 606
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ar"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "\u060c "

    .line 607
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 608
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 609
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "\u3001"

    .line 610
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v10, ", "

    .line 612
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int v10, v3, v8

    .line 616
    rem-int/2addr v10, v5

    .line 617
    invoke-virtual {v7, v5, v10}, Ljava/util/Calendar;->set(II)V

    .line 618
    iget-object v10, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 624
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRepeatSubText() - size = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", checkCnt = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ZenScheduleRepeatButton"

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_6

    .line 627
    iput-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v9, v5, :cond_7

    .line 630
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_dnd_every_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 v0, 0x5

    if-ne v9, v0, :cond_8

    .line 631
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 632
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_dnd_week_days:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    if-ne v9, v0, :cond_9

    .line 633
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->sRepeatSelectItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 634
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_dnd_week_ends:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    goto :goto_2

    .line 636
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    .line 640
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mAlarmRepeatString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static setTextSize(Landroid/content/Context;Landroid/widget/TextView;FF)V
    .locals 3

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    div-float v0, p2, p0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLargeTextSize fontScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    cmpl-float p2, p0, p3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p3, p0

    :goto_0
    mul-float/2addr v0, p3

    .line 156
    invoke-static {p1, v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setTextSize(Landroid/widget/TextView;F)V

    :cond_1
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    float-to-double v1, p1

    .line 139
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ZenScheduleRepeatButton"

    const-string p1, "Exception "

    .line 141
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 706
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 710
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 711
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 713
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_zen_mode_schedule_repeat_btn_layout_start_end_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 714
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v0, v3

    const/4 v3, 0x7

    .line 715
    div-int/2addr v4, v3

    div-int/2addr v0, v4

    .line 717
    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->isRtl()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

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

    .line 736
    :cond_4
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    if-eq v2, v0, :cond_10

    if-ge v2, v0, :cond_6

    .line 738
    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v4, v3, :cond_5

    .line 739
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    .line 741
    :cond_5
    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    goto :goto_1

    :cond_6
    if-le v2, v0, :cond_8

    .line 743
    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v4, v1, :cond_7

    .line 744
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    .line 746
    :cond_7
    iput v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    .line 750
    :cond_8
    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    if-nez v4, :cond_9

    .line 751
    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->performClick()Z

    .line 753
    :cond_9
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_b

    .line 754
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v2, v1, :cond_a

    .line 755
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v2, v0, :cond_b

    .line 756
    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    if-ne v2, v3, :cond_b

    .line 759
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v1

    :goto_3
    if-le v2, v0, :cond_b

    .line 760
    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 764
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->performClick()Z

    .line 765
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    .line 766
    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    goto :goto_6

    .line 770
    :cond_c
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_e

    .line 771
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    if-ne v2, v1, :cond_d

    .line 772
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    add-int/2addr v2, v1

    :goto_4
    if-gt v2, v0, :cond_e

    .line 773
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    if-ne v2, v3, :cond_e

    .line 776
    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    sub-int/2addr v2, v1

    :goto_5
    if-lt v2, v0, :cond_e

    .line 777
    iget-object v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->performClick()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 781
    :cond_e
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    .line 782
    iput v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mDragState:I

    goto :goto_6

    .line 732
    :cond_f
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mIsDragging:Z

    .line 733
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mTouchIndex:I

    .line 788
    :cond_10
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCheckDay()I
    .locals 7

    .line 526
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->REPEAT_DAYS:[I

    .line 527
    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 528
    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->isMirroringEnabled()Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x7

    if-ge v3, v5, :cond_2

    .line 531
    iget-object v6, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    if-eqz v6, :cond_1

    aget-object v6, v6, v3

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v2, :cond_0

    add-int/lit8 v6, v1, 0x6

    sub-int/2addr v6, v3

    .line 535
    rem-int/2addr v6, v5

    goto :goto_1

    :cond_0
    add-int v6, v1, v3

    .line 537
    rem-int/2addr v6, v5

    .line 540
    :goto_1
    aget v5, v0, v6

    or-int/2addr v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public initRepeatBtn([I)V
    .locals 6

    if-eqz p1, :cond_0

    .line 268
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 275
    sget-object v3, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->VALUES_DAYS:[I

    aget v4, p1, v2

    add-int/lit8 v4, v4, 0x7

    invoke-static {}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getStartDayOfWeek()I

    move-result v5

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x7

    aget v3, v3, v4

    .line 277
    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    aget-object v4, v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 278
    iget-object v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->clickRepeatButton()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->clickRepeatButton()V

    :cond_1
    return-void
.end method

.method public setEnabledBtn(Ljava/lang/Boolean;)V
    .locals 1

    .line 890
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 891
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method public setOnRepeatClickListener(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatClickListener:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$RepeatListener;

    return-void
.end method

.method public setSelectionMarkAnimator(IZ)V
    .locals 9

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectionMarkAnimator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , isShowAnim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenScheduleRepeatButton"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 382
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    .line 383
    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    const/16 v0, 0xc8

    goto :goto_0

    .line 386
    :cond_0
    iput v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    .line 387
    iput v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    const/16 v0, 0x12c

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 389
    iget v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v6, v0

    .line 390
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 391
    sget-object v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$InterpolatorStyle;->SineInOut60:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$InterpolatorStyle;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getInterpolatorStyle(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$3;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;IZ)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 410
    new-instance v3, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$4;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v3, v1, [F

    .line 460
    iget v8, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mStartValue:F

    aput v8, v3, v4

    iget v8, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mEndValue:F

    aput v8, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 461
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 462
    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getInterpolatorStyle(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$InterpolatorStyle;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 463
    new-instance v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$5;-><init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;IZ)V

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 479
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p1, v1, [Landroid/animation/Animator;

    aput-object v2, p1, v4

    aput-object v3, p1, v5

    .line 480
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 481
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
