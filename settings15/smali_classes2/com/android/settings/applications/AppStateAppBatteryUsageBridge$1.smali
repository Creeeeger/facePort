.class public final Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateAppBatteryUsageBridge$1()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateAppBatteryUsageBridge$2()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateAppBatteryUsageBridge$3()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->getAppBatteryUsageDetailsMode(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->getAppBatteryUsageDetailsMode(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->getAppBatteryUsageDetailsMode(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final init()V
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;->$r8$classId:I

    return-void
.end method
