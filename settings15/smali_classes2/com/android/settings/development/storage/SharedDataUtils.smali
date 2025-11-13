.class public abstract Lcom/android/settings/development/storage/SharedDataUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CALENDAR:Landroid/icu/util/Calendar;

.field public static final FORMATTER:Landroid/icu/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "MMM dd, yyyy HH:mm:ss z"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/development/storage/SharedDataUtils;->FORMATTER:Landroid/icu/text/SimpleDateFormat;

    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/TimeZone;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/storage/SharedDataUtils;->CALENDAR:Landroid/icu/util/Calendar;

    return-void
.end method
