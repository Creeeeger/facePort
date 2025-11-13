.class public final Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/settings/UserTracker$Callback;
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskInitializer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    sget v1, Lcom/android/systemui/notetask/NoteTaskInitializer;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x137

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->lastStylusButtonTailUpEventTime:J

    sub-long/2addr v3, v5

    sget-wide v5, Lcom/android/systemui/notetask/NoteTaskInitializer;->MULTI_PRESS_TIMEOUT:J

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-wide v6, Lcom/android/systemui/notetask/NoteTaskInitializer;->LONG_PRESS_TIMEOUT:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->lastStylusButtonTailUpEventTime:J

    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->KEYBOARD_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    iget-boolean p1, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/notetask/NoteTaskController;->getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final onProfilesChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {p0}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskForCurrentUserAndManagedProfiles()V

    return-void
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.app.role.NOTES"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskAsUser(Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {p0}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskForCurrentUserAndManagedProfiles()V

    return-void
.end method

.method public final onUserUnlocked()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    invoke-virtual {p0}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskForCurrentUserAndManagedProfiles()V

    return-void
.end method
