.class public Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;
.super Ljava/lang/Object;
.source "SECCalendarFeatures.java"


# static fields
.field private static sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;
    .locals 2

    .line 50
    sget-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    if-nez v0, :cond_5

    .line 51
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOREA"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Lcom/samsung/android/calendar/secfeature/KOR_SECCalendarFeatures;

    invoke-direct {v0}, Lcom/samsung/android/calendar/secfeature/KOR_SECCalendarFeatures;-><init>()V

    sput-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    goto :goto_0

    :cond_0
    const-string v1, "CHINA"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    new-instance v0, Lcom/samsung/android/calendar/secfeature/CHN_SECCalendarFeatures;

    invoke-direct {v0}, Lcom/samsung/android/calendar/secfeature/CHN_SECCalendarFeatures;-><init>()V

    sput-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    goto :goto_0

    :cond_1
    const-string v1, "HKTW"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    new-instance v0, Lcom/samsung/android/calendar/secfeature/HKTW_SECCalendarFeatures;

    invoke-direct {v0}, Lcom/samsung/android/calendar/secfeature/HKTW_SECCalendarFeatures;-><init>()V

    sput-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    goto :goto_0

    :cond_2
    const-string v1, "JAPAN"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    new-instance v0, Lcom/samsung/android/calendar/secfeature/JPN_SECCalendarFeatures;

    invoke-direct {v0}, Lcom/samsung/android/calendar/secfeature/JPN_SECCalendarFeatures;-><init>()V

    sput-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    goto :goto_0

    :cond_3
    const-string v1, "VI"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    new-instance v0, Lcom/samsung/android/calendar/secfeature/VI_SECCalendarFeatures;

    invoke-direct {v0}, Lcom/samsung/android/calendar/secfeature/VI_SECCalendarFeatures;-><init>()V

    sput-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    goto :goto_0

    .line 65
    :cond_4
    new-instance v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    invoke-direct {v0}, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;-><init>()V

    sput-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    .line 68
    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;->sInstance:Lcom/samsung/android/calendar/secfeature/SECCalendarFeatures;

    return-object v0
.end method


# virtual methods
.method public isLunarCalendarSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
