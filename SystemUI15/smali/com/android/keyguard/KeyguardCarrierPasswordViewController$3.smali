.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->access$000(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
