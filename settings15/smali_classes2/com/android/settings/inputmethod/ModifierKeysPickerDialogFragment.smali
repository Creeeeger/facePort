.class public Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mFeatureProvider:Lcom/android/settings/inputmethod/KeyboardSettingsFeatureProviderImpl;

.field public mKeyDefaultName:Ljava/lang/String;

.field public mKeyFocus:Ljava/lang/String;

.field public mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final mRemappableKeyList:Ljava/util/List;

.field public final mRemappableKeyMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x73

    filled-new-array {v1}, [I

    move-result-object v1

    const/16 v2, 0x71

    const/16 v3, 0x72

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/16 v3, 0x75

    const/16 v4, 0x76

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const/16 v4, 0x39

    const/16 v5, 0x3a

    filled-new-array {v4, v5}, [I

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mRemappableKeyList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mRemappableKeyMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object v0, v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->keyboardSettingsFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardSettingsFeatureProviderImpl;

    iput-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mFeatureProvider:Lcom/android/settings/inputmethod/KeyboardSettingsFeatureProviderImpl;

    iget-object v0, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "default_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "delection_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyFocus:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyFocus:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f14183e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f14183f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v4, 0x7f141843

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v5, 0x7f14183b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mRemappableKeyMap:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mRemappableKeyList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mFeatureProvider:Lcom/android/settings/inputmethod/KeyboardSettingsFeatureProviderImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0489

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0a0991

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v5, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f141845

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;-><init>(Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;Ljava/util/List;)V

    const v4, 0x7f0a0990

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyFocus:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyDefaultName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, v3, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mCurrentItem:I

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyFocus:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iput v5, v3, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;->mCurrentItem:I

    :goto_1
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    new-instance v5, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$1;

    invoke-direct {v5, v3}, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$1;-><init>(Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v4, 0x7f0a098c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, v3, v0}, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;Ljava/util/List;Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$ModifierKeyAdapter;Landroid/hardware/input/InputManager;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a098a

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d8

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    return-object v2

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "delection_key"

    iget-object v1, p0, Lcom/android/settings/inputmethod/ModifierKeysPickerDialogFragment;->mKeyFocus:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
