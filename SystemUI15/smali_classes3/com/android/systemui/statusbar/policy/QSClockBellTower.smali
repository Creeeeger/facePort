.class public final Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/demomode/DemoModeCommandReceiver;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG:Z

.field public static final NNBSP_UNICODE:Ljava/lang/String;


# instance fields
.field public final mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

.field public final mAudienceList:Ljava/util/HashMap;

.field public mCalendar:Ljava/util/Calendar;

.field public mClockFormat:Ljava/text/SimpleDateFormat;

.field public mClockFormatString:Ljava/lang/String;

.field public mClockFormatStringWithSeconds:Ljava/lang/String;

.field public mClockFormatWithSeconds:Ljava/text/SimpleDateFormat;

.field public mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentDate:Ljava/util/Date;

.field public final mCurrentShortenDate:Ljava/util/Date;

.field public mDateStringFormat:Ljava/lang/String;

.field public mDateStringPattern:Ljava/lang/String;

.field public mDemoMode:Z

.field public final mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

.field public final mHandler:Landroid/os/Handler;

.field public mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

.field public mLocale:Ljava/util/Locale;

.field public mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

.field public final mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

.field public mShortenDateStringFormat:Ljava/lang/String;

.field public mShortenDateStringPattern:Ljava/lang/String;

.field public final mUpdateNotifyNewClockTime:Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->DEBUG:Z

    const/16 v0, 0x202f

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->NNBSP_UNICODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    new-instance v4, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;I)V

    new-instance v6, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mUpdateNotifyNewClockTime:Lcom/android/systemui/statusbar/policy/QSClockBellTower$1;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    new-instance v8, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    invoke-direct {v7, v9, v8, v1, v10}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    :cond_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

    if-eqz v1, :cond_1

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    iput-object v6, v2, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mUpdateNotifyNewClockTime:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    const/4 v15, 0x0

    const-string v16, ".."

    const-string v9, "00:00"

    const-string v10, "00:00"

    const-string v11, "...."

    const-string v12, ".."

    const/4 v13, 0x0

    const-string v14, "00:00:00"

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    sget-object v2, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v5, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeBroadcastReceiver;->updateTimeZone(Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$2;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "First TimeZoneChange"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " (currentTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const-string v3, ")"

    if-eqz v2, :cond_3

    const-string v2, ", Calendar.getTime():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Calendar.getTimeZone():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    const-string v2, " FIRST TIME BELL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->init()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getBasicSmallTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const v0, 0xef00

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const v1, 0xef01

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v0, :cond_2

    if-le v1, v0, :cond_2

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p0

    :goto_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const-string p2, "millis"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "hhmm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {p2, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    invoke-static {v0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p2

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xa

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    const-string v1, "   "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mFirstTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLastTimeZoneChangeLogString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string p0, "    mAudienceList("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p0, ")\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBestPatternFormat(Z)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ko"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "a H:mm:ss"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    const-string v0, "H"

    goto :goto_1

    :cond_2
    const-string v0, "h"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string/jumbo p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onDemoModeFinished()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final registerAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerAudience() ticket:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->notifyTimeChanged(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    return-void
.end method

.method public final ringBellOfTower()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDemoMode:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower(Z)V

    return-void
.end method

.method public final ringBellOfTower(Z)V
    .locals 13

    new-instance v9, Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    const-string v10, "QSClockBellTower"

    const-string v1, ")"

    const-string v2, ", format:"

    const-string v3, ""

    if-nez v0, :cond_0

    const-string v0, "12:34"

    :goto_0
    move-object v4, v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    goto :goto_1

    :cond_1
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSmallTime recalculate time format (mClockFormatString:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getBasicClockFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatString:Ljava/lang/String;

    move-object v0, v5

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBasicSmallTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->NNBSP_UNICODE:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, v3

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    const v7, 0x7f131337

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    move-object v7, v3

    goto :goto_6

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Date;->setTime(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mDateStringFormat:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentDate:Ljava/util/Date;

    invoke-static {v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

    if-eqz v7, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAlternateCalendarUtil:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->isAlternateCalendarEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v7, :cond_6

    iget-object v7, v8, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    const-string v11, "."

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v8, v11}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->updateAlternateCalendar(Ljava/lang/String;)V

    :cond_5
    iget-object v7, v8, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v7, v6

    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mContext:Landroid/content/Context;

    const v8, 0x7f130e9e

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringPattern:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    move-object v6, v3

    goto :goto_8

    :cond_8
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mShortenDateStringFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCurrentShortenDate:Ljava/util/Date;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockQuickStarHelper:Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->shouldShowSecondsClock()Z

    move-result v3

    const-string v8, "12:34:56"

    if-nez v3, :cond_9

    goto :goto_a

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mLocale:Ljava/util/Locale;

    if-nez v3, :cond_a

    goto :goto_a

    :cond_a
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatStringWithSeconds:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getSmallTimeWithSeconds() recalculate time format (mClockFormatString:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatStringWithSeconds:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/QSClockUtils;->getBasicClockFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatWithSeconds:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBestPatternFormat(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatStringWithSeconds:Ljava/lang/String;

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mClockFormatWithSeconds:Ljava/text/SimpleDateFormat;

    :goto_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->getBasicSmallTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_a
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->shouldShowSecondsClock()Z

    move-result v11

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QSClockQuickStarHelper;->getQuickStarDateViewText()Ljava/lang/String;

    move-result-object v12

    move-object v0, v9

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    move-object v4, v6

    move v5, p1

    move-object v6, v8

    move v7, v11

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mQSClockBellSound:Lcom/android/systemui/statusbar/policy/QSClockBellSound;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "He is ready to ring the bell. ((("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/QSClockBellSound;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;

    invoke-direct {p1, v9}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellSound;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final unregisterAudience(Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterAudience() ticket:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSClockBellTower"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->mAudienceList:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/QSClockBellTower$TimeAudience;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
