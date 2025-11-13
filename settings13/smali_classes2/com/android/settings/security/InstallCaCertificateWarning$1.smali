.class Lcom/android/settings/security/InstallCaCertificateWarning$1;
.super Ljava/lang/Object;
.source "InstallCaCertificateWarning.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/InstallCaCertificateWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/InstallCaCertificateWarning;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/security/InstallCaCertificateWarning;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->this$0:Lcom/android/settings/security/InstallCaCertificateWarning;

    iput-object p2, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->this$0:Lcom/android/settings/security/InstallCaCertificateWarning;

    invoke-static {v0}, Lcom/android/settings/security/InstallCaCertificateWarning;->-$$Nest$morderingFooterButton(Lcom/android/settings/security/InstallCaCertificateWarning;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/security/InstallCaCertificateWarning$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
