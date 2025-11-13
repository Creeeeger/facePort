.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;
.super Landroid/widget/RelativeLayout;
.source "ChartDateRangeSelector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:J

.field mDataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field mDateEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

.field private mDeviceDataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsOneUI30:Z

.field private mListDate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapDateEntriesWeekly:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMonthlyIndex:I

.field private mNextDayButton:Landroid/widget/ImageButton;

.field private mPrevDayButton:Landroid/widget/ImageButton;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

.field private mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

.field private mhistoryPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;


# direct methods
.method public static synthetic $r8$lambda$XTFaQ41tMDZ2MhhPEn_G-iItpZQ(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->lambda$setOnClickListener$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$er1YpvtXV5WEdAX9lsf1EJDy0ZA(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->lambda$setOnClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDataEntries:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateEntries:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mListDate:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDeviceDataEntries:Ljava/util/List;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDataEntries:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateEntries:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mListDate:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDeviceDataEntries:Ljava/util/List;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDataEntries:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateEntries:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mListDate:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDeviceDataEntries:Ljava/util/List;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->initView()V

    return-void
.end method

.method private disableButton(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 168
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    const p0, 0x3ecccccd    # 0.4f

    .line 170
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private enableButton(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 161
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    .line 162
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 163
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private getDateRangeString(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Ljava/lang/String;
    .locals 8

    .line 373
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getMillisFromDateTime(Ljava/time/LocalDateTime;)J

    move-result-wide v3

    .line 376
    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getMillisFromDateTime(Ljava/time/LocalDateTime;)J

    move-result-wide v5

    const/16 v7, 0x8

    .line 375
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 378
    :cond_0
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 379
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getMillisFromDateTime(Ljava/time/LocalDateTime;)J

    move-result-wide v3

    .line 380
    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getMillisFromDateTime(Ljava/time/LocalDateTime;)J

    move-result-wide v5

    const/16 v7, 0x8

    .line 379
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getMillisFromDateTime(Ljava/time/LocalDateTime;)J

    move-result-wide v1

    .line 384
    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getMillisFromDateTime(Ljava/time/LocalDateTime;)J

    move-result-wide v3

    const/4 v5, 0x4

    .line 383
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->chart_date_range_selector:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    sget v0, Lcom/android/settings/R$id;->selected_day_textView:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSelectedDayTextView:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/android/settings/R$id;->prev_day_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    .line 95
    sget v0, Lcom/android/settings/R$id;->next_day_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setOnClickListener()V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$0(Landroid/view/View;)V
    .locals 1

    const-string p1, "ChartDateRangeSelector"

    const-string v0, "PrevDayButton clicked"

    .line 213
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    if-ne p1, v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->doLeftOperationWeek()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->doLeftOperationMonth()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setOnClickListener$1(Landroid/view/View;)V
    .locals 1

    const-string p1, "ChartDateRangeSelector"

    const-string v0, "NextDayButton clicked"

    .line 224
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    if-ne p1, v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->doRightOperationWeek()V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->doRightOperationMonth()V

    :goto_0
    return-void
.end method

.method private resetContainerPadding()V
    .locals 3

    .line 83
    sget v0, Lcom/android/settings/R$id;->date_range_selector_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 85
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->chart_date_range_selector_padding_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 87
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$dimen;->chart_date_range_selector_padding_vertical:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    .line 88
    invoke-virtual {v0, v1, p0, v1, p0}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setOnClickListener()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public createGraphEntries(JJ)V
    .locals 8

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDataEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mListDate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDeviceDataEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getTopHotspotClientsForEachDay(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 311
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_3

    .line 312
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;

    .line 313
    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getStackedProgressBarEntries()Ljava/util/List;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 316
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extra Entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " At Index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 319
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, p2

    :goto_1
    if-ge v5, v1, :cond_1

    .line 324
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    .line 325
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->getProgressEntryName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v5, v2, :cond_2

    const/4 v0, 0x0

    .line 329
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    .line 330
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDataEntries:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateEntries:Ljava/util/List;

    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getDayMonthDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mListDate:Ljava/util/List;

    invoke-virtual {p4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/WifiApDailyStackedProgressBarEntries;->getDateInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getDayInMonth(J)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDeviceDataEntries:Ljava/util/List;

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 339
    :cond_3
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Data Entry Updated:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDataEntries:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "Date Entries: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateEntries:Ljava/util/List;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doLeftOperationMonth()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mhistoryPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->leftMonthlyButton(I)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableDisableMonthlyButton()V

    return-void
.end method

.method public doLeftOperationWeek()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->getSelectedDay()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 180
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    .line 181
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->getValue()I

    move-result v2

    neg-int v2, v2

    .line 179
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateFromStart(JI)J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mIsOneUI30:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->normalizeToSupportedRange(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;JLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)J

    move-result-wide v0

    .line 183
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->updateSelectedDay(Ljava/lang/Long;)V

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mhistoryPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 185
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->leftButton(I)V

    :cond_0
    return-void
.end method

.method public doRightOperationMonth()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mhistoryPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->rightMonthlyButton(I)V

    .line 208
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableDisableMonthlyButton()V

    return-void
.end method

.method public doRightOperationWeek()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    .line 198
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->getSelectedDay()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 197
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    .line 198
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->getValue()I

    move-result v2

    .line 196
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateFromStart(JI)J

    move-result-wide v0

    .line 199
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mIsOneUI30:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartUtil;->normalizeToSupportedRange(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;JLcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)J

    move-result-wide v0

    .line 200
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;->updateSelectedDay(Ljava/lang/Long;)V

    .line 201
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mhistoryPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 202
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->rightButton(I)V

    :cond_0
    return-void
.end method

.method public enableDisableMonthlyButton()V
    .locals 2

    .line 148
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->disableButton(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->disableButton(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public getDataEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDataEntries:Ljava/util/List;

    return-object p0
.end method

.method public getDateEntries()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateEntries:Ljava/util/List;

    return-object p0
.end method

.method public getDayInMonth(J)Ljava/lang/String;
    .locals 0

    .line 345
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 347
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 348
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    .line 349
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDayMonthDate(J)Ljava/lang/String;
    .locals 4

    .line 355
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    .line 357
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 358
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p1

    .line 359
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object p2

    .line 360
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result p0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/time/Month;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/time/Month;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 287
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDeviceDataEntries:Ljava/util/List;

    return-object p0
.end method

.method public getInitialGraphEntries(J)V
    .locals 5

    .line 291
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result v0

    .line 292
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateTimeFromMillis(J)Ljava/time/LocalDateTime;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 293
    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 294
    sget p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 296
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 299
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    .line 301
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AAA FirstDay : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Last Day: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->createGraphEntries(JJ)V

    return-void
.end method

.method public getLabelDateString()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mListDate:Ljava/util/List;

    return-object p0
.end method

.method public getLabelMarkerString()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMapDateEntriesWeekly:Ljava/util/HashMap;

    return-object p0
.end method

.method public initConfig(Landroid/content/Context;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    .line 103
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSharedModel:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SelectedDayViewModel;

    .line 104
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    .line 105
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    const-string p1, "is.support.oneui.30"

    .line 106
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DwFeature;->is(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mIsOneUI30:Z

    .line 107
    iput-object p5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mhistoryPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->resetContainerPadding()V

    return-void
.end method

.method public setButtonVisibility(Ljava/lang/Long;)V
    .locals 10

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getCurrentTodayTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    if-eqz v1, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getDiffDays(J)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->getValue()I

    move-result v2

    sub-int/2addr v1, v2

    .line 122
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    if-ne v2, v3, :cond_1

    sget v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    sub-int v2, v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 123
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getDiffDays(J)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->getValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 124
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    if-ne v5, v3, :cond_2

    .line 125
    sget v5, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mIsOneUI30:Z

    invoke-static {v6, v7}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getSizeOfWeeklyViewPager(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v0

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCategoryType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mIsOneUI30:Z

    invoke-static {v0, v5}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getSizeOfDailyViewPager(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$CategoryType;Z)I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 127
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    if-ne v0, v3, :cond_6

    .line 132
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mUsageDataManager:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/UsageDataManager;->getCurrentTodayTime()J

    move-result-wide v8

    cmp-long p1, v6, v8

    if-gtz p1, :cond_5

    if-ge v1, v2, :cond_3

    goto :goto_2

    :cond_3
    if-le v4, v5, :cond_4

    .line 137
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->disableButton(Landroid/view/View;)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    goto :goto_3

    .line 140
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    .line 141
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    goto :goto_3

    .line 134
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mPrevDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableButton(Landroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mNextDayButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->disableButton(Landroid/view/View;)V

    goto :goto_3

    .line 144
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->enableDisableMonthlyButton()V

    :goto_3
    return-void

    :cond_7
    :goto_4
    const-string p0, "ChartDataRangeSelector"

    const-string p1, "dayInMillis is null"

    .line 117
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDateRangeType(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;)V
    .locals 2

    .line 236
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    .line 237
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCurrentDate:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setSelectedDateText(J)V

    .line 238
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCurrentDate:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->setButtonVisibility(Ljava/lang/Long;)V

    return-void
.end method

.method public setMontlyIndex(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mMonthlyIndex:I

    return-void
.end method

.method public setSelectedDateText(J)V
    .locals 2

    .line 242
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mCurrentDate:J

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mDateRangeType:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->DAILY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSelectedDayTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;->WEEKLY:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CategoryViewConstants$DateRangeType;

    if-ne v0, v1, :cond_1

    .line 247
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result v0

    .line 248
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateTimeFromMillis(J)Ljava/time/LocalDateTime;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 249
    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 250
    sget p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 252
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 255
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSelectedDayTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->getDateRangeString(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result v0

    .line 261
    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateTimeFromMillis(J)Ljava/time/LocalDateTime;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 262
    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 263
    sget p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/WellbeingConstants;->DAYS_OF_WEEK:I

    add-int/lit8 p2, p2, -0x1

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    .line 264
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mhistoryPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/WifiApStackChartHistoryViewPreference;->getMonthlyIndexData()Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/ChartDateRangeSelector;->mSelectedDayTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
