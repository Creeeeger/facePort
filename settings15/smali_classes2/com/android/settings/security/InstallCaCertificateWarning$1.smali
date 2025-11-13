.class public final Lcom/android/settings/security/InstallCaCertificateWarning$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/security/InstallCaCertificateWarning;

.field public final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/InstallCaCertificateWarning;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->this$0:Lcom/android/settings/security/InstallCaCertificateWarning;

    iput-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->val$layout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->this$0:Lcom/android/settings/security/InstallCaCertificateWarning;

    invoke-virtual {v0}, Lcom/android/settings/security/InstallCaCertificateWarning;->orderingFooterButton()V

    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
