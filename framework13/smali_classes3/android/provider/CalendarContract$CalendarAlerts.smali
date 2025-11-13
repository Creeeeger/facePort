.class public final Landroid/provider/CalendarContract$CalendarAlerts;
.super Ljava/lang/Object;
.source "CalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$CalendarAlertsColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarAlerts"
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o SORT_ORDER_ALARMTIME_ASC:Ljava/lang/String; = "alarmTime ASC"

.field public static final greylist-max-o TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"

.field private static final greylist-max-o WHERE_ALARM_EXISTS:Ljava/lang/String; = "event_id=? AND begin=? AND alarmTime=?"

.field private static final greylist-max-o WHERE_FINDNEXTALARMTIME:Ljava/lang/String; = "alarmTime>=?"

.field private static final greylist-max-o WHERE_RESCHEDULE_MISSED_ALARMS:Ljava/lang/String; = "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 2452
    const-string v0, "content://com.android.calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 2478
    nop

    .line 2479
    const-string v0, "content://com.android.calendar/calendar_alerts/by_instance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 2478
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist-max-o alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "alarmTime"    # J

    .line 2652
    const-string v0, "alarmTime"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 2653
    .local v3, "projection":[Ljava/lang/String;
    sget-object v2, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    .line 2655
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    .line 2653
    const-string v4, "event_id=? AND begin=? AND alarmTime=?"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2657
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 2659
    .local v1, "found":Z
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    .line 2660
    const/4 v1, 0x1

    goto :goto_0

    .line 2663
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 2664
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2666
    :cond_0
    throw v2

    .line 2663
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2664
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2667
    :cond_2
    return v1
.end method

.method public static final greylist-max-r findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "millis"    # J

    .line 2519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarmTime>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2522
    .local v0, "selection":Ljava/lang/String;
    const-string v1, "alarmTime"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 2523
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 2525
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v6, v8

    .line 2523
    const-string v5, "alarmTime>=?"

    const-string v7, "alarmTime ASC"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2527
    .local v1, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 2529
    .local v2, "alarmTime":J
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2530
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v5

    goto :goto_0

    .line 2533
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_0

    .line 2534
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2536
    :cond_0
    throw v5

    .line 2533
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2534
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2537
    :cond_2
    return-wide v2
.end method

.method public static final greylist-max-o insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "end"    # J
    .param p7, "alarmTime"    # J
    .param p9, "minutes"    # I

    .line 2491
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2492
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2493
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "begin"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2494
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2495
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "alarmTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2497
    .local v1, "currentTime":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "creationTime"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2498
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "receivedTime"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2499
    const-string/jumbo v4, "notifyTime"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2500
    const-string/jumbo v4, "state"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2501
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "minutes"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2502
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final greylist-max-r rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/AlarmManager;

    .line 2556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2557
    .local v0, "now":J
    const-wide/32 v2, 0x5265c00

    sub-long v2, v0, v2

    .line 2558
    .local v2, "ancient":J
    const-string v4, "alarmTime"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    .line 2564
    .local v7, "projection":[Ljava/lang/String;
    sget-object v6, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    .line 2566
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v9, v5

    .line 2564
    const-string/jumbo v8, "state=0 AND alarmTime<? AND alarmTime>? AND end>=?"

    const-string v10, "alarmTime ASC"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 2568
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_0

    .line 2569
    return-void

    .line 2577
    :cond_0
    const-wide/16 v5, -0x1

    .line 2579
    .local v5, "alarmTime":J
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2580
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2581
    .local v8, "newAlarmTime":J
    cmp-long v10, v5, v8

    if-eqz v10, :cond_1

    .line 2585
    invoke-static {p1, p2, v8, v9}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2586
    move-wide v5, v8

    .line 2588
    .end local v8    # "newAlarmTime":J
    :cond_1
    goto :goto_0

    .line 2590
    .end local v5    # "alarmTime":J
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2591
    nop

    .line 2592
    return-void

    .line 2590
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2591
    throw v5
.end method

.method public static greylist-max-r scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "alarmTime"    # J

    .line 2615
    if-nez p1, :cond_0

    .line 2616
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/app/AlarmManager;

    .line 2619
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2620
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2621
    const-string v1, "alarmTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2622
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2626
    invoke-static {}, Landroid/os/StrictMode;->allowVmViolations()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 2627
    .local v1, "oldVmPolicy":Landroid/os/StrictMode$VmPolicy;
    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2629
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 2631
    invoke-virtual {p1, v3, p2, p3, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 2632
    return-void
.end method
