.class public final Lcom/android/settings/datetime/timezone/TimeZoneInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDaylightName:Ljava/lang/String;

.field public final mExemplarLocation:Ljava/lang/String;

.field public final mGenericName:Ljava/lang/String;

.field public final mGmtOffset:Ljava/lang/CharSequence;

.field public final mId:Ljava/lang/String;

.field public final mStandardName:Ljava/lang/String;

.field public final mTimeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mTimeZone:Landroid/icu/util/TimeZone;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mId:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGenericName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mStandardName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mStandardName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mDaylightName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mDaylightName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mExemplarLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mGmtOffset:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGmtOffset:Ljava/lang/CharSequence;

    return-void
.end method
