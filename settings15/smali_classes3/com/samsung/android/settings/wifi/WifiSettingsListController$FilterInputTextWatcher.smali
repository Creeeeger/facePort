.class public final Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsListController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mFilter:Lcom/samsung/android/settings/wifi/WifiEntriesFilter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->ssidFilter:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/WifiEntriesFilter;->listener:Lcom/samsung/android/settings/wifi/WifiEntriesFilter$OnFilterChangedListener;

    if-eqz p2, :cond_0

    check-cast p2, Lcom/android/settings/wifi/WifiSettings;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/settings/wifi/WifiSettings;->updateWifiEntryPreferences(Z)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterEditText:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController$FilterInputTextWatcher;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsListController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsListController;->mSsidFilterClearDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    move-object p0, p3

    :goto_0
    invoke-virtual {p2, p3, p3, p0, p3}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
