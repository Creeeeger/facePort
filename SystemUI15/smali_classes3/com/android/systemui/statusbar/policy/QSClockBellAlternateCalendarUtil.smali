.class public final Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

.field public static final SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;


# instance fields
.field private mAlternateCalendarSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mCachedAlternateCalendar:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mUpdateNotifyNewClockTime:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aodlock_support_lunar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;

    const-string v0, "aodlock_support_hijri"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "."

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mAlternateCalendarSettingCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_LUNAR_CALENDAR_URI:Landroid/net/Uri;

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->SETTING_KEY_HIJRI_CALENDAR_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

    if-eqz p1, :cond_0

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    new-instance p1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;-><init>(Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;Landroid/os/Handler;)V

    :try_start_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil$UpdateHelperByContent;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "content://com.samsung.android.app.clockpack.provider/alternate_calendar"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "QSClockBellTower"

    const-string p2, "Exception is caught in init()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final isAlternateCalendarEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLunarCalendarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isHijriCalendarEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_PERSIAN:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateAlternateCalendar(Ljava/lang/String;)V
    .locals 7

    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_CLOCK_BELL_TOWER_ALTERNATE_CALENDAR_HIJRI:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p1, "content://com.samsung.android.app.clockpack.provider/clock_pack_settings/get_alternate_calendar_complete_text"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, " ("

    const-string v0, ")"

    invoke-static {p1, v1, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellAlternateCalendarUtil;->mCachedAlternateCalendar:Ljava/lang/String;

    :cond_5
    return-void

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method
