.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$2;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
