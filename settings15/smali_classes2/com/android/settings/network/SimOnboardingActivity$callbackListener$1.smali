.class final Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/SimOnboardingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/SimOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/settings/network/SimOnboardingActivity$Companion$CallbackType;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receive the CALLBACK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimOnboardingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$4;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$4;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p0}, Lcom/android/settings/network/SimOnboardingActivity;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$3;

    invoke-direct {p1, v2, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$1;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$1;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    iget-object p1, p1, Lcom/android/settings/network/SimOnboardingActivity;->showStartingDialog:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1, v2}, Lcom/android/settings/network/SimOnboardingActivity;->setProgressDialog(Z)V

    iget-object p1, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-virtual {p1}, Lcom/android/settings/network/SimOnboardingActivity;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v2, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;

    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1$2;-><init>(Lcom/android/settings/network/SimOnboardingActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_0

    :cond_5
    const-string p0, "showStartingDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object p0, p0, Lcom/android/settings/network/SimOnboardingActivity$callbackListener$1;->this$0:Lcom/android/settings/network/SimOnboardingActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/SimOnboardingActivity;->setProgressDialog(Z)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
