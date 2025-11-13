.class public final Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

.field public final synthetic val$nextCertView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->val$nextCertView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->val$nextCertView:Landroid/view/View;

    iput-object p0, v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    iget-object v1, v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p0, v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;

    invoke-direct {v1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$4;-><init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
