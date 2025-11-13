.class public final Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEditLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120027

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEditLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
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
