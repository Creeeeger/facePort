.class public final synthetic Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

.field public final synthetic f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    sget-object p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$$ExternalSyntheticLambda5;->f$1:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->showEnabledLocalesKeyboardLayoutList(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 p0, 0x1

    return p0
.end method
