.class Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$1;
.super Ljava/lang/Object;
.source "AccessibilityServiceWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->createAccessibilityServiceWarningDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$allowListener:Landroid/view/View$OnClickListener;

.field final synthetic blacklist val$denyListener:Landroid/view/View$OnClickListener;

.field final synthetic blacklist val$uninstallListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$1;->val$allowListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$1;->val$denyListener:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$1;->val$uninstallListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onShow(Landroid/content/DialogInterface;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$1;->val$allowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->getTouchConsumingListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$1;->val$denyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$1;->val$uninstallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
