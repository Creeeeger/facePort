.class public final synthetic Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;

.field public final synthetic f$3:Landroid/hardware/input/InputManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;Ljava/util/List;Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;Landroid/hardware/input/InputManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;

    iput-object p4, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;

    iget-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;

    iget-object p0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mCurrentItem:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    const-string v2, "Caps lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v2, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/16 v3, 0x731

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    const-string v2, "Ctrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v2, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/16 v3, 0x732

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    const-string v2, "Action key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v2, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/16 v3, 0x733

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    const-string v2, "Alt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v2, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/16 v3, 0x734

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_3
    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f141840

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x1010038

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mRemappableKeyMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_7

    aget v3, v0, v1

    invoke-virtual {p0, v3, v3}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v5, 0x11200bf

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mRemappableKeyMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget-object v3, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mRemappableKeyMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget-object v4, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v5, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    const v6, 0x7f14183e

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    aget v4, v1, v2

    aget v5, v3, v2

    invoke-virtual {p0, v4, v5}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    :cond_5
    iget-object v4, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v5, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_6

    iget-object v4, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    aget v4, v1, v2

    aget v7, v3, v2

    invoke-virtual {p0, v4, v7}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    aget v4, v1, v5

    aget v7, v3, v2

    invoke-virtual {p0, v4, v7}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    :cond_6
    iget-object v4, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v7, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    aget v0, v1, v2

    aget v4, v3, v2

    invoke-virtual {p0, v0, v4}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    aget v0, v1, v5

    aget v1, v3, v5

    invoke-virtual {p0, v0, v1}, Landroid/hardware/input/InputManager;->remapModifierKey(II)V

    :cond_7
    invoke-virtual {p1, v2, v2}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    iget-object p0, p1, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
