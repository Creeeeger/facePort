.class public final Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "URI : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecDynamicFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-virtual {p2, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mUriList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSecDynamicMenuFeatureProvider:Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProviderImpl;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DynamicMenuData key "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,title : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,summary : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,isCheck : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isEnable : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isVisible : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    invoke-static {p1, v1, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mSummary:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsEnabled:Z

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsVisible:Z

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    instance-of p1, p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsChecked:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/external/DynamicMenuData;->mIsSummaryPrimaryDark:Z

    invoke-static {p2, p0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_1
    return-void

    :pswitch_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    iget-object p2, p2, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->mSettingsDbPreferenceKeyMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSettingsDBObserver dbKey : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , preferenceKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDynamicFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-virtual {v0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    instance-of v0, p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_3

    check-cast p2, Landroidx/preference/SwitchPreferenceCompat;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$1;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "mSettingsDBObserver newValue : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eq p1, v0, :cond_3

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
