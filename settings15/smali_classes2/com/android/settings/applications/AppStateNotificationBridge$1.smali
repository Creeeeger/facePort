.class public final Lcom/android/settings/applications/AppStateNotificationBridge$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateNotificationBridge$1()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateNotificationBridge$2()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateNotificationBridge$3()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateNotificationBridge$4()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settings$applications$AppStateNotificationBridge$5()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4

    iget p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blockable:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->isPermissionDeclared:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1

    :pswitch_1
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1

    :pswitch_2
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    iget v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    :cond_3
    return p1

    :pswitch_3
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    iget-wide v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    :cond_4
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final init()V
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$1;->$r8$classId:I

    return-void
.end method
