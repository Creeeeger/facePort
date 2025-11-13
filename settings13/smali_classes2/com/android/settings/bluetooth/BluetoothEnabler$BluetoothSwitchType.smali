.class Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothSwitchType"
.end annotation


# instance fields
.field private mIsBeforeChecked:Z

.field private mSwitchObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Ljava/lang/Object;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mIsBeforeChecked:Z

    .line 625
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSwitchObject()Ljava/lang/Object;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string p1, "BluetoothEnabler"

    const-string/jumbo v0, "onPreferenceChange()"

    .line 761
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChange(Z)Z

    move-result p0

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    const-string p1, "BluetoothEnabler"

    const-string/jumbo v0, "onSwitchChanged()"

    .line 749
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->onSwitchStateChange(Z)Z

    return-void
.end method

.method public removeChangeListener()V
    .locals 2

    .line 714
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_0

    .line 715
    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 716
    :cond_0
    instance-of v1, v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    .line 718
    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setBluetoothSummary()V

    :cond_0
    return-void
.end method

.method public setBluetoothSummary()V
    .locals 6

    .line 652
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_6

    .line 654
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmLocalAdapter(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_3

    .line 681
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_3

    .line 657
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmLocalAdapter(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_5

    .line 661
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmLocalAdapter(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectedDeviceListForGroup()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 664
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 666
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 668
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->bluetooth_summary_connected_devices:I

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    .line 677
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, v4}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 684
    :goto_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public setChangeListener()V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v1, :cond_0

    .line 706
    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 707
    :cond_0
    instance-of v1, v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    .line 709
    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 689
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, p0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    .line 690
    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 691
    :cond_0
    instance-of v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    .line 692
    check-cast p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 697
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    instance-of v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 698
    check-cast p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 699
    :cond_0
    instance-of v0, p0, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    .line 700
    check-cast p0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setupSwitchBar()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 727
    :cond_0
    instance-of v1, v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    .line 728
    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 730
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-$$Nest$fgetmPolicyEnabled(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 731
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public teardownSwitchBar()V
    .locals 1

    .line 738
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    if-nez p0, :cond_0

    return-void

    .line 742
    :cond_0
    instance-of v0, p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    .line 743
    check-cast p0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_1
    return-void
.end method
