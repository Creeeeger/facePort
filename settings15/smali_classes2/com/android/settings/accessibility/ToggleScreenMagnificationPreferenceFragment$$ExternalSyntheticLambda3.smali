.class public final synthetic Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/CheckBox;

    sget-object v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    iget-object p0, p1, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mDialog:Landroid/app/Dialog;

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getShortcutTypeCheckBoxValue()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
