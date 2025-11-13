.class public Lcom/android/systemui/util/NotificationChannels;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static ALERTS:Ljava/lang/String; = "ALR"

.field public static BATTERY:Ljava/lang/String; = "BAT"

.field public static CHARGING:Ljava/lang/String; = "CHR"

.field public static FLASHLIGHT_ONGOING:Ljava/lang/String; = "FLASHLIGHT_ONGOING"

.field static GENERAL:Ljava/lang/String; = "GEN"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static HINTS:Ljava/lang/String; = "HNT"

.field public static INSIGNIFICANT:Ljava/lang/String; = "INSIGNIFICANT"

.field public static INSTANT:Ljava/lang/String; = "INS"

.field public static LOW_BATTERY:Ljava/lang/String; = "LBAT"

.field public static NEW_LOW_BATTERY:Ljava/lang/String; = "NLBAT"

.field public static OLD_LOW_BATTERY:Ljava/lang/String; = "LBT"

.field public static SCREENSHOTS_HEADSUP:Ljava/lang/String; = "SCN_HEADSUP"

.field public static SEC_LOW_BATTERY:Ljava/lang/String; = "LOWBAT"

.field public static SETUP:Ljava/lang/String; = "STP"

.field public static STORAGE:Ljava/lang/String; = "DSK"

.field public static TVPIP:Ljava/lang/String; = "TVPIP"

.field public static ZEN_ONGOING:Ljava/lang/String; = "ZEN_ONGOING"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    return-void
.end method

.method private cleanUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    sget-object v0, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static createAll(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    const v4, 0x7f130d19

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v2, v3, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "low_battery_sound"

    invoke-static {v3, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "file://"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v9, Lcom/android/systemui/util/NotificationChannels;->SEC_LOW_BATTERY:Ljava/lang/String;

    const v10, 0x7f130204

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    new-instance v10, Landroid/app/NotificationChannel;

    sget-object v11, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    const v12, 0x7f130d18

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v11, Landroid/app/NotificationChannel;

    sget-object v12, Lcom/android/systemui/util/NotificationChannels;->INSTANT:Ljava/lang/String;

    const v13, 0x7f130d1f

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v12, Landroid/app/NotificationChannel;

    sget-object v13, Lcom/android/systemui/util/NotificationChannels;->SETUP:Ljava/lang/String;

    const v14, 0x7f130d22

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-direct {v12, v13, v14, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v12, v9, v9}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    new-instance v13, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    const v8, 0x7f130d23

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v16

    const/4 v6, 0x2

    if-eqz v16, :cond_0

    move v7, v15

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-direct {v13, v14, v8, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    const v14, 0x7f130d1e

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v8, v14, v15}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v8, Landroid/app/NotificationChannel;

    sget-object v14, Lcom/android/systemui/util/NotificationChannels;->CHARGING:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v14, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v8, v9, v9}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    new-instance v4, Landroid/app/NotificationChannel;

    sget-object v9, Lcom/android/systemui/util/NotificationChannels;->INSIGNIFICANT:Ljava/lang/String;

    const v14, 0x7f130d41

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v9, v14, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/16 v9, 0xc

    new-array v9, v9, [Landroid/app/NotificationChannel;

    const/4 v14, 0x0

    aput-object v10, v9, v14

    aput-object v11, v9, v3

    aput-object v12, v9, v6

    aput-object v13, v9, v15

    const/4 v3, 0x4

    aput-object v4, v9, v3

    const v3, 0x7f130d21

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/util/NotificationChannels;->createScreenshotChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v9, v4

    const/4 v3, 0x6

    aput-object v5, v9, v3

    const/4 v3, 0x7

    aput-object v8, v9, v3

    const/16 v3, 0x8

    aput-object v2, v9, v3

    const/16 v2, 0x9

    aput-object v7, v9, v2

    const v2, 0x7f130d08

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/NotificationChannels;->createZenChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v9, v3

    const v2, 0x7f130d20

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/NotificationChannels;->createFlashLightChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v9, v3

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->OLD_LOW_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->LOW_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->NEW_LOW_BATTERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    const v4, 0x7f130d30

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    invoke-direct {v2, v3, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method public static createFlashLightChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 3

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->FLASHLIGHT_ONGOING:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static createScreenshotChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 3

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    return-object v0
.end method

.method public static createZenChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 3

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->ZEN_ONGOING:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    return-object v0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic isDumpCritical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onBootCompleted()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/util/NotificationChannels;->cleanUp()V

    return-void
.end method
