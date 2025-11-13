.class public final Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $controlId:Ljava/lang/String;

.field public final synthetic $response:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;->$response:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter;->controlViewHolders:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;->$response:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "actionResponse: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", controlId="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", response="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "StatefulControlAdapter"

    invoke-static {v3, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;->$controlId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/android/systemui/controls/management/adapter/StatefulControlAdapter$actionResponse$1;->$response:I

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    check-cast v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->actionsInProgress:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz p0, :cond_9

    if-eq p0, v4, :cond_8

    const/4 v5, 0x2

    if-eq p0, v5, :cond_7

    iget-object v5, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->onDialogCancel:Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    if-eq p0, v6, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/4 v2, 0x5

    if-eq p0, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-object p0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4, v1, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    :cond_3
    sget-object p0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3, v1, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    :cond_4
    sget-object p0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastAction:Landroid/service/controls/actions/ControlAction;

    if-nez p0, :cond_5

    const-string p0, "ControlsUiController"

    const-string v1, "Confirmation Dialog attempted but no last action is set. Will not show"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    sget v3, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f13105c

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecConfirmationDialog$builder$1$1;

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecConfirmationDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    const p0, 0x7f13105d

    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecConfirmationDialog$builder$1$2;

    invoke-direct {p0, v5}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecConfirmationDialog$builder$1$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v2, 0x7f13042b

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_6

    const/16 v1, 0x7e4

    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    :cond_6
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecConfirmationDialog$1$1;

    invoke-direct {p0, v2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecConfirmationDialog$1$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :goto_2
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_3

    :cond_7
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    goto :goto_3

    :cond_8
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    goto :goto_3

    :cond_9
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->lastChallengeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setErrorStatus()V

    :cond_a
    :goto_3
    return-void
.end method
