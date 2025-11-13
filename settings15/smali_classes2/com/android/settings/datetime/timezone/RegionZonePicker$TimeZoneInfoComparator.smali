.class Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/datetime/timezone/TimeZoneInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCollator:Landroid/icu/text/Collator;

.field public final mNow:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/icu/text/Collator;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mCollator:Landroid/icu/text/Collator;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mNow:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    check-cast p2, Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    iget-object v0, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mNow:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    iget-object v1, p2, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mNow:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v0

    iget-object v1, p2, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mCollator:Landroid/icu/text/Collator;

    iget-object v1, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mExemplarLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p2, p2, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->mGenericName:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker$TimeZoneInfoComparator;->mCollator:Landroid/icu/text/Collator;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method
