.class public final Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field public final synthetic $imeManager:Landroid/view/inputmethod/InputMethodManager;

.field public final synthetic $passwordField:Landroid/widget/ImeAwareEditText;

.field public final synthetic $view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Landroid/widget/ImeAwareEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [B

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialAttestation:[B

    const/4 p1, 0x1

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
