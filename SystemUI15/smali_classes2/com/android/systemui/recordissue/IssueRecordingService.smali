.class public final Lcom/android/systemui/recordissue/IssueRecordingService;
.super Lcom/android/systemui/screenrecord/RecordingService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/recordissue/IssueRecordingService$Companion;


# instance fields
.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final iActivityManager:Landroid/app/IActivityManager;

.field public final issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recordissue/IssueRecordingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/recordissue/IssueRecordingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/recordissue/IssueRecordingService;->Companion:Lcom/android/systemui/recordissue/IssueRecordingService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Landroid/app/NotificationManager;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/recordissue/TraceurMessageSender;Lcom/android/systemui/recordissue/IssueRecordingState;Landroid/app/IActivityManager;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/screenrecord/RecordingService;-><init>(Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Landroid/app/NotificationManager;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;)V

    iput-object p2, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p9, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p10, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->traceurMessageSender:Lcom/android/systemui/recordissue/TraceurMessageSender;

    iput-object p11, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    iput-object p12, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->iActivityManager:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method public final getChannelId()Ljava/lang/String;
    .locals 0

    const-string p0, "issue_record"

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "IssueRecordingService"

    return-object p0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$2;-><init>(Lcom/android/systemui/recordissue/IssueRecordingService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    iput-boolean v2, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->isRecording:Z

    iget-object v0, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :sswitch_2
    const-string v1, "com.android.systemui.screenrecord.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$1;-><init>(Lcom/android/systemui/recordissue/IssueRecordingService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    iput-boolean v3, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->isRecording:Z

    iget-object v0, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->issueRecordingState:Lcom/android/systemui/recordissue/IssueRecordingState;

    iget-object v0, v0, Lcom/android/systemui/recordissue/IssueRecordingState;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "key_recordScreen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.systemui.screenrecord.START_NOTIF"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/screenrecord/RecordingService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0

    :sswitch_3
    const-string v1, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/recordissue/IssueRecordingService$onStartCommand$3;-><init>(Lcom/android/systemui/recordissue/IssueRecordingService;Landroid/content/Intent;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/animation/DialogTransitionAnimator;->disableAllCurrentDialogsExitAnimations()V

    iget-object p0, p0, Lcom/android/systemui/recordissue/IssueRecordingService;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    return v3

    :cond_5
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/screenrecord/RecordingService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x649efbd3 -> :sswitch_3
        -0x64998750 -> :sswitch_2
        -0x1c04f22c -> :sswitch_1
        -0x1130027a -> :sswitch_0
    .end sparse-switch
.end method

.method public final provideRecordingServiceStrings()Lcom/android/systemui/screenrecord/RecordingServiceStrings;
    .locals 1

    new-instance v0, Lcom/android/systemui/recordissue/IrsStrings;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/recordissue/IrsStrings;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method
