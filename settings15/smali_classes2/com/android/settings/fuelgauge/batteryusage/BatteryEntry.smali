.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BATTERY_DIMENSIONS:[Landroid/os/BatteryConsumer$Dimensions;

.field public static final COMPARATOR:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$$ExternalSyntheticLambda0;

.field public static final sUidCache:Landroid/util/ArrayMap;


# instance fields
.field public final mBatteryConsumer:Landroid/os/BatteryConsumer;

.field public mConsumedPower:D

.field public mConsumedPowerInBackground:D

.field public mConsumedPowerInCached:D

.field public mConsumedPowerInForeground:D

.field public mConsumedPowerInForegroundService:D

.field public final mConsumerType:I

.field public final mContext:Landroid/content/Context;

.field public mDefaultPackageName:Ljava/lang/String;

.field public final mIconId:I

.field public final mIsHidden:Z

.field public final mName:Ljava/lang/String;

.field public mPercent:D

.field public final mPowerComponentId:I

.field public mTimeInBackgroundMs:J

.field public mTimeInForegroundMs:J

.field public mTimeInForegroundServiceMs:J

.field public final mUid:I

.field public final mUsageDurationMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/os/BatteryConsumer$Dimensions;

    new-instance v2, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/os/BatteryConsumer$Dimensions;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/os/BatteryConsumer$Dimensions;

    invoke-direct {v2, v3, v0}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->BATTERY_DIMENSIONS:[Landroid/os/BatteryConsumer$Dimensions;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->sUidCache:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->COMPARATOR:Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IDJZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    iput-boolean p7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    iput-wide p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUsageDurationMs:J

    const/4 p3, 0x3

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object p2

    iget p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mIconId:I

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIconId:I

    iget-object p2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;D)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    const p2, 0x7f08056c

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIconId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mBatteryConsumer:Landroid/os/BatteryConsumer;

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    iput-object p6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPowerComponentId:I

    instance-of p6, p2, Landroid/os/UidBatteryConsumer;

    const/4 v0, 0x2

    if-eqz p6, :cond_4

    iput p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    invoke-virtual {p2}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    check-cast p2, Landroid/os/UidBatteryConsumer;

    iget-object p6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p6, :cond_2

    if-eqz p5, :cond_0

    array-length p6, p5

    if-ne p6, p3, :cond_0

    aget-object p4, p5, v1

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/16 p5, 0x3e8

    if-ne p4, p5, :cond_1

    const-string p4, "android"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    invoke-virtual {p1, p4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "PackageManager failed to retrieve ApplicationInfo for: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    const-string p5, "BatteryEntry"

    invoke-static {p1, p4, p5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    :cond_3
    :goto_2
    invoke-virtual {p2, p3}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundServiceMs:J

    invoke-virtual {p2, v0}, Landroid/os/UidBatteryConsumer;->getTimeInProcessStateMs(I)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    sget-object p4, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->BATTERY_DIMENSIONS:[Landroid/os/BatteryConsumer$Dimensions;

    aget-object p5, p4, v1

    invoke-static {p2, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide p5

    iput-wide p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForeground:D

    aget-object p3, p4, p3

    invoke-static {p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide p5

    iput-wide p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForegroundService:D

    aget-object p3, p4, v0

    invoke-static {p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide p5

    iput-wide p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInBackground:D

    aget-object p1, p4, p1

    invoke-static {p2, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInCached:D

    goto :goto_3

    :cond_4
    instance-of p4, p2, Landroid/os/UserBatteryConsumer;

    if-eqz p4, :cond_5

    iput p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumerType:I

    invoke-virtual {p2}, Landroid/os/BatteryConsumer;->getConsumedPower()D

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    check-cast p2, Landroid/os/UserBatteryConsumer;

    invoke-virtual {p2}, Landroid/os/UserBatteryConsumer;->getUserId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    :goto_3
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getNameAndIconFromPowerComponent(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "unknown attribute:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/os/BatteryConsumer;

    const-string v2, "POWER_COMPONENT_"

    invoke-static {v1, v2, p1}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryEntry"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f08056c

    move p1, p0

    move-object p0, v0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f14030c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805d3

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c78

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f08060e

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c90

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f080613

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c68

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805ef

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c54

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805db

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c67

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805ec

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c53

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805da

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c52

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805d9

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c5d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805dd

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141c86

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p1, 0x7f0805e3

    :goto_0
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    invoke-direct {v1, p0, v0, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object v1
.end method

.method public static getNameAndIconFromUserId(Landroid/content/Context;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;
    .locals 3

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141f5c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, v1

    :goto_0
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry$NameAndIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object p1
.end method

.method public static safeGetConsumedPower(Landroid/os/UidBatteryConsumer;Landroid/os/BatteryConsumer$Dimensions;)D
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Dimensions;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "safeGetConsumedPower failed:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryEntry"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BatteryEntry{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\tname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIsHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume=%.2f%% | %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForeground:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInForegroundService:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume power= foreground:%f foregroundService:%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInBackground:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mConsumedPowerInCached:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\tconsume power= background:%f cached:%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundMs:J

    long-to-double v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInForegroundServiceMs:J

    long-to-double v6, v6

    invoke-static {v2, v6, v7, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mTimeInBackgroundMs:J

    long-to-double v6, v6

    invoke-static {v3, v6, v7, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUsageDurationMs:J

    long-to-double v7, v7

    invoke-static {v6, v7, v8, v4, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\n\ttime= foreground:%s foregroundService:%s background:%s usageDuration:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mDefaultPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "\n\tpackage:%s uid:%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
