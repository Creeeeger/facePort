.class public Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;
.super Ljava/lang/Object;
.source "WifiControlHistoryItem.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mLastEvent:I

.field private final mLastEventTime:J

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageName:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mLastEvent:I

    .line 50
    iput-wide p4, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mLastEventTime:J

    .line 52
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mDateFormat:Ljava/text/DateFormat;

    .line 53
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mTimeFormat:Ljava/text/DateFormat;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v0, "samsung.wifi.autowifi"

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings"

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageName:Ljava/lang/String;

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    .line 71
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 72
    iget-wide v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mLastEventTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u200e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mLastEvent:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_control_history_enable_summary:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_control_history_disable_summary:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageName:Ljava/lang/String;

    const-string v1, "samsung.wifi.autowifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_autowifi_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/WifiControlHistoryItem;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
