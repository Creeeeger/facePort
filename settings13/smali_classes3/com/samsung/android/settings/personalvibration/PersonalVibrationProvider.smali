.class public Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;
.super Landroid/content/ContentProvider;
.source "PersonalVibrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver;,
        Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;,
        Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;,
        Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;
    }
.end annotation


# static fields
.field private static final mNotiPatternData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRingPatternData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mSupportedColorful:Z

.field private static mSupportedLive:Z

.field private static sDbHelperInstance:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeviceProvisioned:I

.field private mSoundDB:[Ljava/lang/String;

.field private final mVibBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceProvisioned(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDeviceProvisioned:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundDB(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSoundDB:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDeviceProvisioned(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDeviceProvisioned:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSilentPatternName(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->updateSilentPatternName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmNotiPatternData()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mNotiPatternData:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmRingPatternData()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mRingPatternData:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSupportedColorful()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSupportedColorful:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSupportedLive()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSupportedLive:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mRingPatternData:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mNotiPatternData:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->sDbHelperInstance:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;

    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSupportedColorful:Z

    .line 76
    sput-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSupportedLive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    new-instance v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver;-><init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mVibBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static declared-synchronized getDbHelperInstance(Landroid/content/Context;)Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    monitor-enter v0

    .line 442
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->sDbHelperInstance:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;

    if-nez v1, :cond_0

    .line 443
    new-instance v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->sDbHelperInstance:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;

    .line 445
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->sDbHelperInstance:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTableByUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 517
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "registerinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 519
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    .line 521
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "customindex"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method private makePatternData(ILjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;",
            ">;)V"
        }
    .end annotation

    .line 528
    new-instance v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$1;-><init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;I)V

    .line 554
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 555
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;

    add-int/lit8 v3, v0, 0x1

    .line 556
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;->getName()Ljava/lang/String;

    move-result-object v5

    .line 557
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerConstants$PatternContainer;->getIndex()I

    move-result v2

    invoke-direct {v4, v5, v2, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$PatternInfo;-><init>(Ljava/lang/String;II)V

    .line 556
    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSilentPatternName()V
    .locals 12

    .line 563
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 565
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_silent_pattern:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibration_name"

    .line 566
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

    .line 568
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const v5, 0xc3a4

    .line 569
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "vibration_pattern=?"

    .line 568
    invoke-virtual {p0, v2, v0, v6, v4}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating the name of the ringtone silent pattern "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "fail"

    const-string v9, "success"

    const/4 v10, -0x1

    if-ne v2, v10, :cond_0

    move-object v2, v8

    goto :goto_0

    :cond_0
    move-object v2, v9

    .line 571
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "PersonalVibrationProvider"

    .line 570
    invoke-static {v11, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "content://com.android.settings.personalvibration.PersonalVibrationProvider/notification"

    .line 573
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/String;

    .line 574
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 573
    invoke-virtual {p0, v4, v0, v6, v3}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating the name of the notification silent pattern "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v10, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v9

    .line 576
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 575
    invoke-static {v11, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 501
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 502
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->getTableByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 503
    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0, p2, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 493
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 494
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->getTableByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 495
    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 9

    const-string v0, "PersonalVibrationProvider#onCreate"

    .line 450
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 452
    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->supportsColorfulPattern(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSupportedColorful:Z

    .line 453
    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/PatternRestoreHelper;->supportsLivePattern(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSupportedLive:Z

    .line 454
    sget-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mRingPatternData:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->makePatternData(ILjava/util/HashMap;)V

    .line 455
    sget-object v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mNotiPatternData:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-direct {p0, v8, v0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->makePatternData(ILjava/util/HashMap;)V

    .line 456
    invoke-static {v1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->getDbHelperInstance(Landroid/content/Context;)Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$DatabaseHelper;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 458
    iput-object v0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mSoundDB:[Ljava/lang/String;

    .line 459
    new-instance v0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;-><init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)V

    .line 461
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 462
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mVibBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 465
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 466
    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p0, :cond_0

    move v7, v8

    :cond_0
    return v7
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 472
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 473
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->getTableByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 475
    sget-object v1, Lcom/samsung/android/settings/as/vibration/VibPickerConstants;->PATH_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibUri;->getUriType(I)Lcom/samsung/android/settings/as/vibration/VibUri;

    move-result-object v1

    .line 476
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/as/vibration/VibUri;->getSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {v1, p1, p4}, Lcom/samsung/android/settings/as/vibration/VibUri;->getSelectionArgs(Landroid/net/Uri;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, p2

    move-object v7, p5

    .line 476
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 510
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 511
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->getTableByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 512
    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
