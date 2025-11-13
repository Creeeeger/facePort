.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$1$1;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$1$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;Landroid/content/DialogInterface;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    return-void
.end method
