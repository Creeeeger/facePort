.class final Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$emergencyCallButtonModel$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$emergencyCallButtonModel$2$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$emergencyCallButtonModel$2$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;

    iget-object v1, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->activityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/ActivityTaskManager;->stopSystemLockTaskMode()V

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$emergencyCallButtonModel$2$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->dozeLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLogger;->logEmergencyCall()V

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$emergencyCallButtonModel$2$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->emergencyDialerIntentFactory:Lcom/android/systemui/bouncer/domain/interactor/EmergencyDialerIntentFactory;

    check-cast v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractorModule$emergencyDialerIntentFactory$1;

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerInteractorModule$emergencyDialerIntentFactory$1;->$telecomManager:Landroid/telecom/TelecomManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const/high16 v0, 0x14800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->applicationContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
