.class final Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$returnToCallButtonModel$2$1;
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

    iput-object p1, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$returnToCallButtonModel$2$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$returnToCallButtonModel$2$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;

    iget-object v1, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->activityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/ActivityTaskManager;->stopSystemLockTaskMode()V

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor$returnToCallButtonModel$2$1;->this$0:Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/domain/interactor/BouncerActionButtonInteractor;->telecomManager:Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
