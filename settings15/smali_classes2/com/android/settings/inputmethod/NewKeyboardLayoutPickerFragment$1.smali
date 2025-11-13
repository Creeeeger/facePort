.class public final Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerController$KeyboardLayoutSelectedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;->this$0:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;

    return-void
.end method


# virtual methods
.method public final onSelected(Landroid/hardware/input/KeyboardLayout;)V
    .locals 5

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment$1;->this$0:Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreview:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreviewText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/16 v1, 0x65e

    const/16 v2, 0x21c

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/input/InputManager;->getKeyboardLayoutPreview(Landroid/hardware/input/KeyboardLayout;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreview:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreviewText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreviewText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/inputmethod/NewKeyboardLayoutPickerFragment;->mKeyboardLayoutPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
