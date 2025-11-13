.class public final Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDayColorSet:[I

.field public final mDayLabelCalendar:Ljava/util/Calendar;

.field public final mMonthDayLabelPaint:Landroid/graphics/Paint;

.field public final mNormalDayTextColor:I

.field public final mSaturdayTextColor:I

.field public final mSundayTextColor:I

.field public final mWeekdayFeatureString:Ljava/lang/String;

.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePicker;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroidx/picker/widget/SeslDatePicker;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070fbb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f06082e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    const v2, 0x7f060835

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p3, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    sget-object p3, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    const p3, 0x7f060830

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    iput p2, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    iget-object p1, p1, Landroidx/picker/widget/SeslDatePicker;->mMonthViewColor:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/reflect/feature/SeslCscFeatureReflector;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, v0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p0, "sec"

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    const/16 p3, 0x190

    invoke-static {p0, p3, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget v1, v0, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v2, v0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iget v0, v0, Landroidx/picker/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget v4, v4, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget v6, v6, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    rem-int/2addr v5, v6

    const/16 v6, 0x42

    if-eq v4, v6, :cond_2

    const/16 v6, 0x52

    if-eq v4, v6, :cond_1

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v6, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    aput v6, v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v6, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    aput v6, v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v6, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    aput v6, v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget v4, v3, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    if-ge v1, v4, :cond_5

    iget v3, v3, Landroidx/picker/widget/SeslDatePicker;->mWeekStart:I

    add-int/2addr v3, v1

    rem-int/2addr v3, v4

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-object v4, v4, Landroidx/picker/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Landroidx/picker/widget/SeslDatePicker;

    iget-boolean v6, v5, Landroidx/picker/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v6, :cond_4

    iget v6, v5, Landroidx/picker/widget/SeslDatePicker;->mNumDays:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v0

    iget v5, v5, Landroidx/picker/widget/SeslDatePicker;->mPadding:I

    :goto_3
    add-int/2addr v6, v5

    goto :goto_4

    :cond_4
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v0

    iget v5, v5, Landroidx/picker/widget/SeslDatePicker;->mPadding:I

    goto :goto_3

    :goto_4
    iget-object v5, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    aget v3, v7, v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v6

    int-to-float v5, v2

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
