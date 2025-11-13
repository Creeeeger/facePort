.class public final Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

.field public final synthetic $view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/ui/BouncerMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1$1$1$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;

    iget-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1$1$1$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    invoke-virtual {p2, p1}, Lcom/android/systemui/log/BouncerLogger;->bouncerMessageUpdated(Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;)V

    sget-object p2, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;->INSTANCE:Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->primaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->primaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;->message:Lcom/android/systemui/bouncer/shared/model/Message;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    invoke-static {p2, v0, v1, v3, v4}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;->access$updateView(Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;Lcom/android/keyguard/KeyguardSecMessageAreaController;Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/systemui/bouncer/shared/model/Message;Z)V

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->secondaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->secondaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/systemui/bouncer/shared/model/BouncerMessageModel;->secondaryMessage:Lcom/android/systemui/bouncer/shared/model/Message;

    :cond_1
    const/4 p1, 0x0

    invoke-static {p2, v0, v1, v2, p1}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;->access$updateView(Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;Lcom/android/keyguard/KeyguardSecMessageAreaController;Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/systemui/bouncer/shared/model/Message;Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
