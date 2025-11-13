.class public final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerMessageAreaViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $view:Lcom/android/keyguard/AuthKeyguardMessageArea;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AuthKeyguardMessageArea;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerMessageAreaViewBinder$bind$1$1$1$1;->$view:Lcom/android/keyguard/AuthKeyguardMessageArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/deviceentry/shared/model/BiometricMessage;

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerMessageAreaViewBinder$bind$1$1$1$1;->$view:Lcom/android/keyguard/AuthKeyguardMessageArea;

    if-nez p1, :cond_0

    const-string p1, ""

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/deviceentry/shared/model/BiometricMessage;->message:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
