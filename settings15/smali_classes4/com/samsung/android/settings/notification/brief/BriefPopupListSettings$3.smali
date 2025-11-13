.class public final Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->packageName:Ljava/lang/String;

    const-string v1, "AllAppsBtn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings$3;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsToggledByAllSwitch:Z

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iput-boolean p2, v0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->isSelected:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "app: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isChecked :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BriefPopupListSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsDirty:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo p1, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "off"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NSTE0030"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x8cac

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsToggledByAllSwitch:Z

    if-eqz p1, :cond_3

    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mItemPrefList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, v0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iput-boolean p2, v0, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->isSelected:Z

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mIsToggledByAllSwitch:Z

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAppTempList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    iget-boolean p2, p2, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->isSelected:Z

    if-nez p2, :cond_4

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllSwitchPreference:Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->mAllAppsEnabled:Z

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopupListSettings;->updateEdgeLightingList()V

    return v1
.end method
