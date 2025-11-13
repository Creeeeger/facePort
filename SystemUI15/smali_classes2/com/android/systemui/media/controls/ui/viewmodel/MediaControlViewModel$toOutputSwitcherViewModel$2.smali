.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

.field final synthetic $isCurrentBroadcastApp:Z

.field final synthetic $model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

.field final synthetic $showBroadcastButton:Z

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;


# direct methods
.method public constructor <init>(ZZLcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$showBroadcastButton:Z

    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$isCurrentBroadcastApp:Z

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/android/systemui/animation/Expandable;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$showBroadcastButton:Z

    const-string v1, "media_output"

    const/16 v2, 0x3a

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$isCurrentBroadcastApp:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    iget-object v4, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_OPEN_BROADCAST_DIALOG:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v2, v1, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-interface {p1, v3}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object p1

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->broadcastDialogController:Lcom/android/systemui/bluetooth/BroadcastDialogController;

    iget-object v2, v0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mBroadcastDialogFactory:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$Factory;

    invoke-interface {v2, v1, p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget v4, v3, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    iget-object v5, v3, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6, v4, v3, v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-object v4, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/animation/DialogCuj;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v6

    const/4 v5, 0x1

    const/16 v8, 0x8

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShowWithController$default(Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;Landroid/media/session/MediaSession$Token;I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget v5, v4, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    iget-object v6, v4, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v7, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget-object v4, v4, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7, v5, v4, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->launchOverLockscreen(Landroid/app/PendingIntent;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v3, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_4
    iget-object v0, v3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->instanceId:Lcom/android/internal/logging/InstanceId;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device pending intent of instanceId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not an activity."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MediaControlInteractor"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_6
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-object v4, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/animation/DialogCuj;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/systemui/animation/Expandable;->dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;

    move-result-object v6

    const/4 v5, 0x1

    const/16 v8, 0x8

    iget-object v3, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->mediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShowWithController$default(Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Ljava/lang/String;ZLcom/android/systemui/animation/DialogTransitionAnimator$Controller;Landroid/media/session/MediaSession$Token;I)V

    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
