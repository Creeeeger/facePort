.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;
.super Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mFistTimestamp:J

.field public mIsStartTimestamp:Z

.field public mLatestTimestamp:J

.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    return-void
.end method


# virtual methods
.method public final generateContentDescription(ILjava/util/List;)Ljava/lang/String;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->access$500(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f140639

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final generateFullText(ILjava/util/List;)Ljava/lang/String;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->access$400(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(ILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->generateText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f14063a

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final generateText(ILjava/util/List;)Ljava/lang/String;
    .locals 6

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->mLatestTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->access$200(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f140629

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->mFistTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;->mIsStartTimestamp:Z

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getSharpHourCalendar(J)Ljava/util/Calendar;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->access$300(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;

    move-result-object p0

    iget-boolean p1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p1, :cond_4

    const-string p1, "HHm"

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    const-string p1, "hma"

    goto :goto_2

    :cond_5
    const-string p1, "ha"

    :goto_2
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
