.class public Lcom/android/settings/fuelgauge/BatteryDiffEntry;
.super Ljava/lang/Object;
.source "BatteryDiffEntry.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sCurrentLocale:Ljava/util/Locale;

.field static final sResourceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final sValidForRestriction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAppIcon:Landroid/graphics/drawable/Drawable;

.field mAppIconId:I

.field mAppLabel:Ljava/lang/String;

.field public mBackgroundUsageTimeInMs:J

.field public final mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

.field public mConsumePower:D

.field private mContext:Landroid/content/Context;

.field private mDefaultPackageName:Ljava/lang/String;

.field public mForegroundUsageTimeInMs:J

.field mIsLoaded:Z

.field private mPercentOfTotal:D

.field private mTotalConsumePower:D

.field private mUserManager:Landroid/os/UserManager;

.field mValidForRestriction:Z


# direct methods
.method public static synthetic $r8$lambda$PiibUPIyOjOQJBgK12OjEm44M24(Lcom/android/settings/fuelgauge/BatteryDiffEntry;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->lambda$static$0(Lcom/android/settings/fuelgauge/BatteryDiffEntry;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/BatteryHistEntry;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mIsLoaded:Z

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    .line 76
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 77
    iput-wide p6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    .line 78
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 79
    iput-wide p4, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    .line 80
    iput-object p8, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    .line 81
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .line 357
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 358
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getBadgeIconForUser(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    long-to-int v0, v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getCache()Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;
    .locals 4

    .line 276
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v1, "clearCache() locale is changed from %s to %s"

    .line 278
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryDiffEntry"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sput-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sCurrentLocale:Ljava/util/Locale;

    .line 281
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->clearCache()V

    .line 283
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    return-object p0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    .line 368
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/settings/fuelgauge/BatteryDiffEntry;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)I
    .locals 2

    .line 49
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private loadNameAndIconForUid()V
    .locals 9

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 288
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "BatteryDiffEntry"

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 290
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    :try_start_0
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to retrieve ApplicationInfo for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput-object v4, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 304
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    long-to-int v1, v1

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 311
    array-length v0, v0

    if-nez v0, :cond_3

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 313
    invoke-static {v0, v2, v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getNameAndIconFromUid(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object v0

    .line 314
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 315
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 319
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryEntry;->loadNameAndIcon(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object v0

    .line 323
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    if-eqz v0, :cond_4

    .line 325
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 326
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 330
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    aput-object p0, v1, v8

    const/4 p0, 0x1

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mPackageName:Ljava/lang/String;

    aput-object v0, v1, p0

    const-string p0, "found different package: %s | %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/settings/fuelgauge/BatteryDiffEntry;
    .locals 10

    .line 98
    new-instance v9, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    iget-object v8, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;-><init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/BatteryHistEntry;)V

    return-object v9
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAppIconId()I
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 126
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIconId:I

    return p0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method getKey()Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ":"

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 139
    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 140
    aget-object v0, p0, v0

    :cond_2
    return-object v0
.end method

.method public getPercentOfTotal()D
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mPercentOfTotal:D

    return-wide v0
.end method

.method public isSystemEntry()Z
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 p0, 0x2

    if-eq v1, p0, :cond_0

    const/4 p0, 0x3

    if-eq v1, p0, :cond_0

    return v2

    :cond_0
    return v3

    .line 156
    :cond_1
    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    long-to-int v1, v4

    .line 157
    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    if-nez v0, :cond_4

    const/4 v0, -0x4

    if-eq v1, v0, :cond_4

    const/4 v0, -0x5

    if-ne v1, v0, :cond_2

    goto :goto_0

    .line 162
    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_battery_combine_system_components:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 165
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->isSystemUid(I)Z

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method loadLabelAndIcon()V
    .locals 5

    .line 171
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mIsLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getCache()Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 178
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 179
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mIconId:I

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIconId:I

    .line 181
    :cond_1
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sValidForRestriction:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mIsLoaded:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->updateRestrictionFlagState()V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_7

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_4

    goto/16 :goto_0

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    .line 211
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 214
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 215
    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mIconId:I

    if-eqz v0, :cond_5

    .line 216
    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIconId:I

    .line 217
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_5
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIconId:I

    invoke-direct {v2, v3, v4, p0}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v1, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    long-to-int v1, v1

    .line 199
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 202
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 203
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    .line 204
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4, p0, v3}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 204
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->loadNameAndIconForUid()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    .line 228
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getBadgeIconForUser(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 232
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    .line 233
    :cond_9
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->sResourceCache:Ljava/util/Map;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4, p0, v3}, Lcom/android/settings/fuelgauge/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 233
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_0
    return-void
.end method

.method public setTotalConsumePower(D)V
    .locals 3

    .line 86
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mTotalConsumePower:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mPercentOfTotal:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryDiffEntry{"

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mAppLabel:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    .line 341
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "\n\tname=%s restrictable=%b"

    .line 340
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mPercentOfTotal:D

    .line 343
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v4

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v5

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mTotalConsumePower:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v1

    const-string v6, "\n\tconsume=%.2f%% %f/%f"

    .line 342
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    long-to-double v7, v7

    .line 345
    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    long-to-double v7, v7

    .line 347
    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "\n\tforeground:%s background:%s"

    .line 344
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-object v6, v6, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    aput-object v6, v3, v4

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v4, v4, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    .line 351
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "\n\tpackage:%s|%s uid:%d userId:%d"

    .line 349
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method updateRestrictionFlagState()V
    .locals 5

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    .line 249
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->isAppEntry()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 253
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    .line 256
    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    return-void

    .line 260
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x401240

    .line 261
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 270
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "getPackageInfo() error %s for package=%s"

    .line 269
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryDiffEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-boolean v3, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    :goto_2
    return-void
.end method

.method public validForRestriction()Z
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->loadLabelAndIcon()V

    .line 146
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mValidForRestriction:Z

    return p0
.end method
