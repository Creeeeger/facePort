.class Lcom/android/settings/datausage/AppDataUsage$1;
.super Landroid/database/ContentObserver;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPcoSettingObserver onChange(selfChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppDataUsage"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    .line 225
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "background_data_by_pco"

    const/4 v2, 0x1

    .line 224
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 228
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPcoSettingObserver restrictBackgroundByPco: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    .line 230
    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$sfgetmRestrictBackground()Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$sfgetmRestrictBackground()Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 234
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const/4 p1, 0x0

    .line 236
    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$sfputmRestrictBackground(Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)V

    .line 237
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)V

    goto :goto_1

    .line 239
    :cond_4
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmAppItem(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object p1

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmAppItem(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object p1

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmRestrictBackgroundPco(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$sfputmRestrictBackground(Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)V

    .line 245
    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$sfgetmRestrictBackground()Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$sfgetmRestrictBackground()Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 248
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmUnrestrictedDataPco(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmUnrestrictedData(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 252
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    :goto_1
    return-void

    .line 240
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning due to invalid app item key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmAppItem(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object p0

    iget p0, p0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_3
    const-string p0, "Invalid context or content-resolver"

    .line 220
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
