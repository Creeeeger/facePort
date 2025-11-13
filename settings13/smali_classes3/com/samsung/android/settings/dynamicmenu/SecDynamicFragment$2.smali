.class Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$2;
.super Landroid/database/ContentObserver;
.source "SecDynamicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;Landroid/os/Handler;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$2;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URI : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecDynamicFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$2;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-virtual {p2, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 137
    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$2;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->-$$Nest$fgetmUriList(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment$2;->this$0:Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->-$$Nest$fgetmSecDynamicMenuFeatureProvider(Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;)Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;

    move-result-object p0

    .line 140
    invoke-interface {p0, v1, p1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicMenuFeatureProvider;->getBundleFromKey(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/settings/external/DynamicMenuData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicMenuData key "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,title : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,summary : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,isCheck : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isEnable : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isVisible : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getVisible()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getVisible()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 155
    instance-of p1, p2, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p1, :cond_0

    .line 156
    move-object p1, p2

    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    .line 157
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 161
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/external/DynamicMenuData;->getColorPrimaryDark()Z

    move-result p0

    .line 165
    invoke-static {p2, p0}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_1
    return-void
.end method
