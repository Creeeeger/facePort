.class public final synthetic Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;->f$0:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda11;->f$1:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
