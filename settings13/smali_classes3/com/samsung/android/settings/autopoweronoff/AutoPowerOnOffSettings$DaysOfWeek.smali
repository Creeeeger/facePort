.class final Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
.super Ljava/lang/Object;
.source "AutoPowerOnOffSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 387
    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->DAY_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    return-void
.end method

.method private isSet(I)Z
    .locals 1

    .line 436
    iget p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 3

    .line 457
    sget-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->DAY_MAP:[I

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x1

    .line 458
    :goto_0
    sget-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->DAY_MAP:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 459
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCoded()I
    .locals 0

    .line 452
    iget p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    return p0
.end method

.method public isAllSelected()Z
    .locals 1

    .line 469
    iget p0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    const/16 v0, 0xfe

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public set(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 0

    .line 448
    iget p1, p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    iput p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    return-void
.end method

.method public setItem(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 441
    iget p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    goto :goto_0

    .line 443
    :cond_0
    iget p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    :goto_0
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5

    .line 403
    iget v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 404
    sget p0, Lcom/android/settings/R$string;->sec_auto_power_days_one_time:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_1
    const/16 p2, 0xfe

    if-ne v0, p2, :cond_2

    .line 409
    sget p0, Lcom/android/settings/R$string;->sec_auto_power_days_everyday:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 412
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    new-instance p2, Ljava/text/DateFormatSymbols;

    invoke-direct {p2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 414
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 417
    :goto_1
    sget-object v3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->DAY_MAP:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 418
    iget v3, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->mDays:I

    shl-int v4, v1, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    if-lez v0, :cond_3

    const-string v3, ", "

    .line 420
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_3
    sget-object v3, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->DAY_MAP:[I

    aget v3, v3, v2

    aget-object v3, p2, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 427
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
