.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTwilightManager:Landroidx/appcompat/app/TwilightManager;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/TwilightManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    return-void
.end method


# virtual methods
.method public final createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public final getApplyableNightMode()I
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Landroidx/appcompat/app/TwilightManager;

    iget-object v1, v0, Landroidx/appcompat/app/TwilightManager;->mTwilightState:Landroidx/appcompat/app/TwilightManager$TwilightState;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v3, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    goto/16 :goto_6

    :cond_0
    iget-object v3, v0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    iget-object v5, v0, Landroidx/appcompat/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v5, v6}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "gps"

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    :goto_1
    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    if-eqz v3, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v4, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    if-nez v4, :cond_5

    new-instance v4, Landroidx/appcompat/app/TwilightCalculator;

    invoke-direct {v4}, Landroidx/appcompat/app/TwilightCalculator;-><init>()V

    sput-object v4, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    :cond_5
    sget-object v9, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    const-wide/32 v20, 0x5265c00

    sub-long v18, v11, v20

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-object v13, v9

    invoke-virtual/range {v13 .. v19}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-object v4, v9

    move-object v14, v9

    move-wide v9, v11

    invoke-virtual/range {v4 .. v10}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    iget v4, v14, Landroidx/appcompat/app/TwilightCalculator;->state:I

    if-ne v4, v2, :cond_6

    move v0, v2

    :cond_6
    iget-wide v4, v14, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    iget-wide v6, v14, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    add-long v18, v11, v20

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-object v13, v14

    move-object v3, v14

    move-wide v14, v8

    invoke-virtual/range {v13 .. v19}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    iget-wide v8, v3, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    const-wide/16 v13, -0x1

    cmp-long v3, v4, v13

    if-eqz v3, :cond_a

    cmp-long v3, v6, v13

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    cmp-long v3, v11, v6

    if-lez v3, :cond_8

    move-wide v4, v8

    goto :goto_3

    :cond_8
    cmp-long v3, v11, v4

    if-lez v3, :cond_9

    move-wide v4, v6

    :cond_9
    :goto_3
    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    goto :goto_5

    :cond_a
    :goto_4
    const-wide/32 v3, 0x2932e00

    add-long v4, v11, v3

    :goto_5
    iput-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    iput-wide v4, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    goto :goto_6

    :cond_b
    const-string v1, "TwilightManager"

    const-string v3, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x6

    if-lt v1, v3, :cond_c

    const/16 v3, 0x16

    if-lt v1, v3, :cond_d

    :cond_c
    move v0, v2

    :cond_d
    :goto_6
    if-eqz v0, :cond_e

    const/4 v2, 0x2

    :cond_e
    return v2
.end method

.method public final onChange()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(Z)Z

    return-void
.end method
