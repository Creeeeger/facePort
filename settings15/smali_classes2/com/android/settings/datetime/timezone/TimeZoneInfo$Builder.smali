.class public final Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDaylightName:Ljava/lang/String;

.field public mExemplarLocation:Ljava/lang/String;

.field public mGenericName:Ljava/lang/String;

.field public mGmtOffset:Ljava/lang/CharSequence;

.field public mStandardName:Ljava/lang/String;

.field public final mTimeZone:Landroid/icu/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/TimeZoneInfo$Builder;->mTimeZone:Landroid/icu/util/TimeZone;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TimeZone must not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
