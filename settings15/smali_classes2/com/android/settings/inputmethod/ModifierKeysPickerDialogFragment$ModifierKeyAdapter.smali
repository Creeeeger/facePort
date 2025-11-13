.class public final Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCurrentItem:I

.field public final mList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mCurrentItem:I

    iput-object p2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    iget-object p2, p2, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0488

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f0a0998

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a098b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mCurrentItem:I

    if-ne v2, p1, :cond_1

    iget-object p3, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    iget-object v2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p3, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyFocus:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    iget-object p1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const p3, 0x11200bf

    invoke-static {p1, p3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0xff

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    iget-object p1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const p3, 0x7f08072e

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    iget-object p1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x1010036

    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->this$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-object p2
.end method
