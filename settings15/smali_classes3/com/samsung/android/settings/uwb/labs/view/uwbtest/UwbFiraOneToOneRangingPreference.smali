.class public Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public distance:I

.field public final mContext:Landroid/content/Context;

.field public mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

.field public mDistLineData:Lcom/github/mikephil/charting/data/LineData;

.field public mDistLineDataSet:Lcom/github/mikephil/charting/data/LineDataSet;

.field public mDistVal:Ljava/util/ArrayList;

.field public mErrorCnt:I

.field public mRangingCnt:I

.field public mSuccessCnt:I

.field public mTime:I

.field public mViewHolder:Landroidx/preference/PreferenceViewHolder;

.field public nlos:I

.field public rssi:I

.field public status:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mContext:Landroid/content/Context;

    const-string p1, "UwbFiraOneToOneRangingPreference"

    const-string p2, "CREATE: UwbFiraOneToOneRangingPreference"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0d09da

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final getPointDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080aa3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0606ec

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a0544

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->getPointDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a0cda

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->getPointDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a0c3b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->getPointDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a0f45

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->getPointDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v0, 0x7f0a0c3c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->getPointDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mTime:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mViewHolder:Landroidx/preference/PreferenceViewHolder;

    const v1, 0x7f0a0543

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistVal:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v2, "Distance"

    invoke-direct {v1, v2, v0}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistLineDataSet:Lcom/github/mikephil/charting/data/LineDataSet;

    iput-boolean p1, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mDrawValues:Z

    iput-boolean p1, v1, Lcom/github/mikephil/charting/data/LineDataSet;->mDrawCircles:Z

    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0604eb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->setColor(I)V

    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistLineDataSet:Lcom/github/mikephil/charting/data/LineDataSet;

    filled-new-array {v1}, [Lcom/github/mikephil/charting/data/LineDataSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistLineData:Lcom/github/mikephil/charting/data/LineData;

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iput-object v1, v0, Lcom/github/mikephil/charting/components/XAxis;->mPosition:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    iget-object v1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f060093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/components/ComponentBase;->mTextColor:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iput-boolean p1, v0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    iput-boolean p1, v0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    iput-boolean p1, v0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mTime:I

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistVal:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mDistChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iput-boolean p1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsCalculated:Z

    iput-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    iget-object v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iput-object v1, v2, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mRangingCnt:I

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mErrorCnt:I

    iput p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbFiraOneToOneRangingPreference;->mSuccessCnt:I

    return-void
.end method
