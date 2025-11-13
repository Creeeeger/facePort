.class public final Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment$1;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    sget v1, Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment$1;->this$0:Lcom/samsung/android/settings/actions/development/SettingsBixbyFragment;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v1, "bixby_action_list"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
