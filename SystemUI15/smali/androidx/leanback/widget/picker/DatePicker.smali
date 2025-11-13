.class public Landroidx/leanback/widget/picker/DatePicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DATE_FIELDS:[I


# instance fields
.field public final mColDayIndex:I

.field public final mColMonthIndex:I

.field public final mColYearIndex:I

.field public final mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

.field public final mCurrentDate:Ljava/util/Calendar;

.field public final mDateFormat:Ljava/text/DateFormat;

.field public final mDatePickerFormat:Ljava/lang/String;

.field public final mDayColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public final mMaxDate:Ljava/util/Calendar;

.field public final mMinDate:Ljava/util/Calendar;

.field public final mMonthColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public final mTempDate:Ljava/util/Calendar;

.field public final mYearColumn:Landroidx/leanback/widget/picker/PickerColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x5

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401c5

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v8, 0x6

    const/16 v9, 0x44

    const/16 v11, 0x4d

    const/4 v12, 0x1

    invoke-direct/range {p0 .. p3}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v13, "MM/dd/yyyy"

    invoke-direct {v1, v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    invoke-direct {v3, v1, v2}, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;)V

    iput-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v2, v3, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v2, v2, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v2, v2, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v2, v2, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mMonthColumn:Landroidx/leanback/widget/picker/PickerColumn;

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v2, v2, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    iput-object v2, v1, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    invoke-virtual {v0, v2, v1}, Landroidx/leanback/widget/picker/Picker;->setColumnAt(ILandroidx/leanback/widget/picker/PickerColumn;)V

    :cond_0
    sget-object v3, Landroidx/leanback/R$styleable;->lbDatePicker:[I

    move-object/from16 v14, p1

    move-object/from16 v4, p2

    invoke-virtual {v14, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v15

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x76c

    if-nez v5, :cond_1

    iget-object v5, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v5}, Landroidx/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v1, v12}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v1, v12}, Ljava/util/Calendar;->set(III)V

    :cond_2
    :goto_0
    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v5, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v5, 0x834

    if-nez v2, :cond_3

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v2}, Landroidx/leanback/widget/picker/DatePicker;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, v1, v12}, Ljava/util/Calendar;->set(III)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, v1, v12}, Ljava/util/Calendar;->set(III)V

    :cond_4
    :goto_1
    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v4, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    :cond_6
    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_f

    :cond_7
    iput-object v4, v0, Landroidx/leanback/widget/picker/DatePicker;->mDatePickerFormat:Ljava/lang/String;

    iget-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v2, v2, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    move-object v13, v2

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v8, [C

    fill-array-data v5, :array_0

    move v6, v1

    move v7, v6

    move v14, v7

    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v6, v15, :cond_10

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v10, 0x20

    if-ne v15, v10, :cond_9

    goto :goto_6

    :cond_9
    const/16 v10, 0x27

    if-ne v15, v10, :cond_b

    if-nez v7, :cond_a

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v7, v12

    goto :goto_6

    :cond_a
    move v7, v1

    goto :goto_6

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    move v10, v1

    :goto_4
    if-ge v10, v8, :cond_e

    aget-char v8, v5, v10

    if-ne v15, v8, :cond_d

    if-eq v15, v14, :cond_f

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    :cond_d
    add-int/2addr v10, v12

    const/4 v8, 0x6

    goto :goto_4

    :cond_e
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    :goto_5
    move v14, v15

    :goto_6
    add-int/2addr v6, v12

    const/4 v8, 0x6

    goto :goto_3

    :cond_10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v12

    const-string v6, " + 1"

    const-string v7, "Separators size: "

    if-ne v3, v5, :cond_23

    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mDayColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mMonthColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mYearColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const/4 v3, -0x1

    iput v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iput v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mColDayIndex:I

    iput v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mColYearIndex:I

    iget-object v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v3, v3, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_17

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v10, "datePicker format error"

    if-eq v8, v9, :cond_15

    if-eq v8, v11, :cond_13

    const/16 v13, 0x59

    if-ne v8, v13, :cond_12

    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mYearColumn:Landroidx/leanback/widget/picker/PickerColumn;

    if-nez v8, :cond_11

    new-instance v8, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v8}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mYearColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v5, v0, Landroidx/leanback/widget/picker/DatePicker;->mColYearIndex:I

    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mYearColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const-string v10, "%d"

    iput-object v10, v8, Landroidx/leanback/widget/picker/PickerColumn;->mLabelFormat:Ljava/lang/String;

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/16 v13, 0x59

    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mMonthColumn:Landroidx/leanback/widget/picker/PickerColumn;

    if-nez v8, :cond_14

    new-instance v8, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v8}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mMonthColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mMonthColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$DateConstant;

    iget-object v10, v10, Landroidx/leanback/widget/picker/PickerUtility$DateConstant;->months:[Ljava/lang/String;

    iput-object v10, v8, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    iput v5, v0, Landroidx/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    goto :goto_8

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v13, 0x59

    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mDayColumn:Landroidx/leanback/widget/picker/PickerColumn;

    if-nez v8, :cond_16

    new-instance v8, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v8}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mDayColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Landroidx/leanback/widget/picker/DatePicker;->mDayColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const-string v10, "%02d"

    iput-object v10, v8, Landroidx/leanback/widget/picker/PickerColumn;->mLabelFormat:Ljava/lang/String;

    iput v5, v0, Landroidx/leanback/widget/picker/DatePicker;->mColDayIndex:I

    :goto_8
    add-int/2addr v5, v12

    goto :goto_7

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v12, :cond_19

    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v5, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v12

    if-ge v5, v7, :cond_18

    iget-object v7, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v12

    goto :goto_9

    :cond_18
    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_19
    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v12

    if-ne v3, v5, :cond_21

    :goto_a
    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    iget v4, v0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    if-le v4, v3, :cond_1a

    iget-object v3, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    iput v3, v0, Landroidx/leanback/widget/picker/Picker;->mSelectedColumn:I

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v4, :cond_1b

    move v4, v1

    goto :goto_b

    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_b
    iget-object v5, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7f0d01c8

    if-nez v5, :cond_1c

    iget-object v5, v0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1c
    move v5, v1

    :goto_c
    if-ge v5, v4, :cond_20

    const v7, 0x7f0d01c6

    iget-object v8, v0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v7}, Landroidx/leanback/widget/picker/Picker;->updateColumnSize(Landroidx/leanback/widget/VerticalGridView;)V

    iget-object v8, v7, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v8, v8, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v8, v8, Landroidx/leanback/widget/WindowAlignment;->mMainAxis:Landroidx/leanback/widget/WindowAlignment$Axis;

    iput v1, v8, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v1, v7, Landroidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isActivated()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    iput v1, v8, Landroidx/recyclerview/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    iget-object v8, v0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v8, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    add-int/lit8 v9, v5, 0x1

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1d

    iget-object v8, v0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Landroidx/leanback/widget/picker/Picker;->mPickerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1d
    new-instance v8, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;

    iget v10, v0, Landroidx/leanback/widget/picker/Picker;->mPickerItemLayoutId:I

    iget v11, v0, Landroidx/leanback/widget/picker/Picker;->mPickerItemTextViewId:I

    invoke-direct {v8, v0, v10, v11, v5}, Landroidx/leanback/widget/picker/Picker$PickerScrollArrayAdapter;-><init>(Landroidx/leanback/widget/picker/Picker;III)V

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v5, v0, Landroidx/leanback/widget/picker/Picker;->mColumnChangeListener:Landroidx/leanback/widget/picker/Picker$1;

    iget-object v7, v7, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    if-nez v5, :cond_1e

    iput-object v2, v7, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    goto :goto_e

    :cond_1e
    iget-object v8, v7, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v8, :cond_1f

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    goto :goto_d

    :cond_1f
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :goto_d
    iget-object v7, v7, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    move v5, v9

    goto/16 :goto_c

    :cond_20
    new-instance v2, Landroidx/leanback/widget/picker/DatePicker$1;

    invoke-direct {v2, v0, v1}, Landroidx/leanback/widget/picker/DatePicker$1;-><init>(Landroidx/leanback/widget/picker/DatePicker;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_f
    return-void

    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mustequal the size of columns: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Separators size is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". At least one separator must be provided"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must equal the size of datePickerFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    nop

    :array_0
    .array-data 2
        0x59s
        0x79s
        0x4ds
        0x6ds
        0x44s
        0x64s
    .end array-data
.end method


# virtual methods
.method public final onColumnValueChanged(II)V
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/picker/PickerColumn;

    :goto_0
    iget v0, v0, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    iget v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mColDayIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p2, v0

    invoke-virtual {p1, v4, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_1
    iget v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p2, v0

    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_2
    iget v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mColYearIndex:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    sub-int/2addr p2, v0

    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->add(II)V

    :goto_1
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_6

    :cond_3
    iget-object v1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/Calendar;->set(III)V

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_5
    :goto_2
    new-instance p1, Landroidx/leanback/widget/picker/DatePicker$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/leanback/widget/picker/DatePicker$1;-><init>(Landroidx/leanback/widget/picker/DatePicker;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/leanback/widget/picker/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Date: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: MM/dd/yyyy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatePicker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
