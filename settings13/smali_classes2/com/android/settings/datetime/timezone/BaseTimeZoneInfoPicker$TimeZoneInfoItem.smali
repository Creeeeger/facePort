.class Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;
.super Ljava/lang/Object;
.source "BaseTimeZoneInfoPicker.java"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneInfoItem"
.end annotation


# instance fields
.field private final mItemId:J

.field private final mResources:Landroid/content/res/Resources;

.field private final mSearchKeys:[Ljava/lang/String;

.field private final mTimeFormat:Landroid/icu/text/DateFormat;

.field private final mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTimeZoneInfo(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-object p0
.end method

.method private constructor <init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    .line 112
    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 113
    iput-object p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    .line 114
    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    .line 115
    invoke-static {p3, p4}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->createTitle(Lcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 116
    iput-object p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;-><init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V

    return-void
.end method

.method private static createTitle(Lcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_SHANGHAI_TO_BEIJING_BY_CHINA:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$string;->city_shanghai:I

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget v0, Lcom/android/settings/R$string;->city_beijing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_0
    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_JERUSALEM_TO_TELAVIV_BY_TURKEY:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settings/R$string;->jerusalem:I

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    sget v0, Lcom/android/settings/R$string;->tel_aviv:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIconText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId()J
    .locals 2

    .line 185
    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    return-wide v0
.end method

.method public getSearchKeys()[Ljava/lang/String;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGenericName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getDaylightName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getStandardName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 164
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$string;->zone_info_offset_and_name:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v0, v3, p0

    .line 168
    invoke-static {v1, v2, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0

    .line 165
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 166
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const-string v0, ""

    :cond_5
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
