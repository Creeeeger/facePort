.class public final Lcom/android/systemui/assist/AssistLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SESSION_END_EVENTS:Ljava/util/Set;


# instance fields
.field public final assistUtils:Lcom/android/internal/app/AssistUtils;

.field public final context:Landroid/content/Context;

.field public currentInstanceId:Lcom/android/internal/logging/InstanceId;

.field public final instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

.field public final phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/assist/AssistLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/assist/AssistLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    sget-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_CLOSE:Lcom/android/systemui/assist/AssistantSessionEvent;

    filled-new-array {v0, v1}, [Lcom/android/systemui/assist/AssistantSessionEvent;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/assist/AssistLogger;->SESSION_END_EVENTS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p3, p0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    iput-object p4, p0, Lcom/android/systemui/assist/AssistLogger;->phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    iput-object p5, p0, Lcom/android/systemui/assist/AssistLogger;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 p2, 0x100000

    invoke-direct {p1, p2}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    return-void
.end method


# virtual methods
.method public final getAssistantUid(Landroid/content/ComponentName;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/assist/AssistLogger;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AssistLogger"

    const-string v1, "Unable to find Assistant UID"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public final reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/16 v8, 0x9

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-nez p4, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    :cond_0
    sget-object v13, Lcom/android/systemui/assist/AssistantInvocationEvent;->Companion:Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v14, :pswitch_data_0

    move v13, v10

    goto :goto_0

    :pswitch_0
    move v13, v9

    goto :goto_0

    :pswitch_1
    move v13, v8

    goto :goto_0

    :pswitch_2
    move v13, v7

    goto :goto_0

    :pswitch_3
    move v13, v6

    goto :goto_0

    :pswitch_4
    move v13, v5

    goto :goto_0

    :pswitch_5
    move v13, v4

    goto :goto_0

    :pswitch_6
    move v13, v3

    goto :goto_0

    :pswitch_7
    move v13, v2

    goto :goto_0

    :pswitch_8
    move v13, v12

    goto :goto_0

    :pswitch_9
    move v13, v11

    :goto_0
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_1
    sget-object v14, Lcom/android/systemui/assist/AssistantInvocationEvent;->Companion:Lcom/android/systemui/assist/AssistantInvocationEvent$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    packed-switch v1, :pswitch_data_1

    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :pswitch_a
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_POWER_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :pswitch_b
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOME_LONG_PRESS:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :pswitch_c
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_QUICK_SEARCH_BAR:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :pswitch_d
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_HOTWORD:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :pswitch_e
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :pswitch_f
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :cond_1
    if-eq v1, v11, :cond_3

    if-eq v1, v12, :cond_2

    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_UNKNOWN:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_PHYSICAL_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/systemui/assist/AssistantInvocationEvent;->ASSISTANT_INVOCATION_START_TOUCH_GESTURE:Lcom/android/systemui/assist/AssistantInvocationEvent;

    :goto_2
    if-nez p3, :cond_4

    iget-object v14, v0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object v15, v0, Lcom/android/systemui/assist/AssistLogger;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v15, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v15}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v14

    goto :goto_3

    :cond_4
    move-object/from16 v14, p3

    :goto_3
    invoke-virtual {v0, v14}, Lcom/android/systemui/assist/AssistLogger;->getAssistantUid(Landroid/content/ComponentName;)I

    move-result v17

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_4
    :pswitch_10
    move/from16 v20, v2

    goto :goto_5

    :cond_5
    iget-object v13, v0, Lcom/android/systemui/assist/AssistLogger;->phoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    invoke-virtual {v13}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    move-result v13

    packed-switch v13, :pswitch_data_2

    move v2, v10

    goto :goto_4

    :pswitch_11
    move v2, v9

    goto :goto_4

    :pswitch_12
    move v2, v8

    goto :goto_4

    :pswitch_13
    move v2, v7

    goto :goto_4

    :pswitch_14
    move v2, v6

    goto :goto_4

    :pswitch_15
    move v2, v5

    goto :goto_4

    :pswitch_16
    move v2, v4

    goto :goto_4

    :pswitch_17
    move v2, v3

    goto :goto_4

    :pswitch_18
    move v2, v12

    goto :goto_4

    :pswitch_19
    move v2, v11

    goto :goto_4

    :goto_5
    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistantInvocationEvent;->getId()I

    move-result v16

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_7

    :cond_6
    :goto_6
    move-object/from16 v18, v1

    goto :goto_8

    :cond_7
    :goto_7
    const-string v1, ""

    goto :goto_6

    :goto_8
    iget-object v1, v0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    :cond_8
    iput-object v1, v0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v19

    const/16 v21, 0x0

    const/16 v15, 0x119

    invoke-static/range {v15 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_10
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public final reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/assist/AssistLogger;->assistUtils:Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistLogger;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistLogger;->getAssistantUid(Landroid/content/ComponentName;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/assist/AssistLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/assist/AssistLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v4}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    :cond_1
    iput-object v4, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v1, v0, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    sget-object v0, Lcom/android/systemui/assist/AssistLogger;->SESSION_END_EVENTS:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object v3, p0, Lcom/android/systemui/assist/AssistLogger;->currentInstanceId:Lcom/android/internal/logging/InstanceId;

    :cond_2
    return-void
.end method
