.class public final Landroidx/leanback/widget/picker/DatePicker$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/picker/DatePicker;

.field public final synthetic val$animation:Z


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/picker/DatePicker;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/leanback/widget/picker/DatePicker$1;->this$0:Landroidx/leanback/widget/picker/DatePicker;

    iput-boolean p2, p0, Landroidx/leanback/widget/picker/DatePicker$1;->val$animation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Landroidx/leanback/widget/picker/DatePicker$1;->this$0:Landroidx/leanback/widget/picker/DatePicker;

    iget-boolean p0, p0, Landroidx/leanback/widget/picker/DatePicker$1;->val$animation:Z

    iget v1, v0, Landroidx/leanback/widget/picker/DatePicker;->mColDayIndex:I

    iget v2, v0, Landroidx/leanback/widget/picker/DatePicker;->mColMonthIndex:I

    iget v3, v0, Landroidx/leanback/widget/picker/DatePicker;->mColYearIndex:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    move v4, v2

    move v5, v4

    :goto_0
    if-ltz v3, :cond_b

    aget v6, v1, v3

    if-gez v6, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-object v7, Landroidx/leanback/widget/picker/DatePicker;->DATE_FIELDS:[I

    aget v7, v7, v3

    iget-object v8, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/widget/picker/PickerColumn;

    :goto_1
    const/4 v8, 0x0

    if-eqz v4, :cond_3

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eq v9, v10, :cond_2

    iput v9, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    :goto_2
    move v9, v2

    goto :goto_3

    :cond_2
    move v9, v8

    goto :goto_3

    :cond_3
    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v9

    iget v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eq v9, v10, :cond_2

    iput v9, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_5

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget v11, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v10, v11, :cond_4

    iput v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :goto_4
    move v10, v2

    goto :goto_5

    :cond_4
    move v10, v8

    :goto_5
    or-int/2addr v9, v10

    goto :goto_6

    :cond_5
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    iget v11, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v10, v11, :cond_4

    iput v10, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    goto :goto_4

    :goto_6
    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_6

    move v10, v2

    goto :goto_7

    :cond_6
    move v10, v8

    :goto_7
    and-int/2addr v4, v10

    iget-object v10, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v10, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, v0, Landroidx/leanback/widget/picker/DatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-ne v10, v11, :cond_7

    move v10, v2

    goto :goto_8

    :cond_7
    move v10, v8

    :goto_8
    and-int/2addr v5, v10

    if-eqz v9, :cond_8

    aget v9, v1, v3

    invoke-virtual {v0, v9, v6}, Landroidx/leanback/widget/picker/Picker;->setColumnAt(ILandroidx/leanback/widget/picker/PickerColumn;)V

    :cond_8
    aget v6, v1, v3

    iget-object v9, v0, Landroidx/leanback/widget/picker/DatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v9, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/leanback/widget/picker/PickerColumn;

    iget v10, v9, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    if-eq v10, v7, :cond_a

    iput v7, v9, Landroidx/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    iget-object v9, v0, Landroidx/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/leanback/widget/VerticalGridView;

    if-eqz v9, :cond_a

    iget-object v10, v0, Landroidx/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/leanback/widget/picker/PickerColumn;

    iget v6, v6, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    sub-int/2addr v7, v6

    if-eqz p0, :cond_9

    iget-object v6, v9, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v6, v7, v2}, Landroidx/leanback/widget/GridLayoutManager;->setSelection$1(IZ)V

    goto :goto_9

    :cond_9
    iget-object v6, v9, Landroidx/leanback/widget/BaseGridView;->mLayoutManager:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v6, v7, v8}, Landroidx/leanback/widget/GridLayoutManager;->setSelection$1(IZ)V

    :cond_a
    :goto_9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method
