.class Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;
.super Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopModeBlockerDelegate"
.end annotation


# instance fields
.field private blacklist mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .locals 0
    .param p1, "blocker"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 139
    return-void
.end method


# virtual methods
.method blacklist nullOutBlockerLocked()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 163
    return-void
.end method

.method public blacklist onBlocked()Ljava/lang/String;
    .locals 2

    .line 144
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 146
    .local v1, "blocker":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v1, :cond_0

    .line 148
    invoke-interface {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;->onBlocked()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 146
    .end local v1    # "blocker":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 156
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->mBlocker:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
