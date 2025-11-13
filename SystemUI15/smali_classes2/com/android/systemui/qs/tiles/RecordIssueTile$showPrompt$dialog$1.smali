.class public final Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/RecordIssueTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dialog$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dialog$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recordissue/IssueRecordingService;->Companion:Lcom/android/systemui/recordissue/IssueRecordingService$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/recordissue/IssueRecordingService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.android.systemui.screenrecord.START"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0xc000000

    const/4 v3, 0x2

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dialog$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogTransitionAnimator;->disableAllCurrentDialogsExitAnimations()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile$showPrompt$dialog$1;->this$0:Lcom/android/systemui/qs/tiles/RecordIssueTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/RecordIssueTile;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p0}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    return-void
.end method
