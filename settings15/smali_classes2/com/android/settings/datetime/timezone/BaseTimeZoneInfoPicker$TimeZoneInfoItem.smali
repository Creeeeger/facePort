.class public final Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$AdapterItem;


# instance fields
.field public final mItemId:J

.field public final mResources:Landroid/content/res/Resources;

.field public final mSearchKeys:[Ljava/lang/String;

.field public final mTimeFormat:Landroid/icu/text/DateFormat;

.field public final mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/android/settings/datetime/timezone/TimeZoneInfo;Landroid/content/res/Resources;Landroid/icu/text/DateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    iput-object p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    iput-object p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    iput-object p5, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    iget-object p1, p3, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_SHANGHAI_TO_BEIJING_BY_CHINA:Z

    if-eqz p2, :cond_0

    const p2, 0x7f140947

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p1, 0x7f140946

    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_JERUSALEM_TO_TELAVIV_BY_TURKEY:Z

    if-eqz p2, :cond_1

    const p2, 0x7f1412a5

    invoke-virtual {p4, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p1, 0x7f142e9e

    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p3, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    :cond_2
    if-nez p1, :cond_3

    iget-object p2, p3, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p4}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p3, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mDaylightName:Ljava/lang/String;

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p3, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mStandardName:Ljava/lang/String;

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p3, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCurrentTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeFormat:Landroid/icu/text/DateFormat;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-static {p0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mItemId:J

    return-wide v0
.end method

.method public final getSearchKeys()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mSearchKeys:[Ljava/lang/String;

    return-object p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    iget-object v1, v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mDaylightName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mStandardName:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14391b

    invoke-static {p0, v1, v0}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    iget-object p0, v0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string p0, ""

    :cond_5
    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$TimeZoneInfoItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method
