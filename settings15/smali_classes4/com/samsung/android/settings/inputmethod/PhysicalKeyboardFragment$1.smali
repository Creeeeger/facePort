.class public final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getChangedType()I

    move-result p1

    const-string v0, "DB changed type is "

    const-string v1, "PhysicalKeyboardFragment"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mWirelessKeyboardShareUiHandler:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    sget-object p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    sget-object p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchForDeX:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "keyboard_dex"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
