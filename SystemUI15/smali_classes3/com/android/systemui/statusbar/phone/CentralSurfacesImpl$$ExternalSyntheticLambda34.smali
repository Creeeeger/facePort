.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$1:Z

    const-string p1, "ShellStartingWindow"

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$2:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$2:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setRequestTopUi(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;->f$2:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoteTaskControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/notetask/NoteTaskController;

    iget-boolean v2, v0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/notetask/NoteTaskController;->infoReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/notetask/NoteTaskInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/notetask/NoteTaskInfo;->user:Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/wm/shell/bubbles/Bubble;->getAppBubbleKeyForApp(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;

    iget-object v3, v2, Lcom/android/systemui/notetask/NoteTaskInfo;->launchMode:Lcom/android/systemui/notetask/NoteTaskLaunchMode;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lcom/android/systemui/notetask/NoteTaskController;->eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

    const-class v0, Lcom/android/systemui/notetask/NoteTaskController;

    if-eqz v1, :cond_4

    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskOpened(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    goto :goto_0

    :cond_4
    sget v1, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskClosed(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
