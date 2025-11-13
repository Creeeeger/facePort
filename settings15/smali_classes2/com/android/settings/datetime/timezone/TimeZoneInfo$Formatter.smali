.class public final Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLocale:Ljava/util/Locale;

.field public final mNow:Ljava/util/Date;

.field public final mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;

    return-void
.end method


# virtual methods
.method public final format(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 8

    invoke-virtual {p1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mTimeZoneFormat:Landroid/icu/text/TimeZoneFormat;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    invoke-static {v3, v4, v2, v5}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;

    invoke-direct {v3, p1}, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;-><init>(Landroid/icu/util/TimeZone;)V

    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settingslib/datetime/ZoneGetter;->capitalizeForStandaloneDisplay(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGenericName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settingslib/datetime/ZoneGetter;->capitalizeForStandaloneDisplay(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mStandardName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mNow:Ljava/util/Date;

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v0, v5, v6, v7}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settingslib/datetime/ZoneGetter;->capitalizeForStandaloneDisplay(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mDaylightName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Formatter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/datetime/ZoneGetter;->capitalizeForStandaloneDisplay(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mExemplarLocation:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGmtOffset:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-direct {p0, v3}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;-><init>(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "gmtOffset must not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
