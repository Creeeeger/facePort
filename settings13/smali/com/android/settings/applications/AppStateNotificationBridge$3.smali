.class Lcom/android/settings/applications/AppStateNotificationBridge$3;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    .line 320
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->hasChannels:Z

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public init()V
    .locals 0

    return-void
.end method
