.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

.field public final synthetic f$1:Landroidx/preference/PreferenceScreen;

.field public final synthetic f$2:Landroidx/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceCategory;I)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$2:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$2:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarPref"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v1, "pref_key_simplified_gesture_inline_cue_disabled"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$1:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda2;->f$2:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mContext:Landroid/content/Context;

    const-string v1, "NavigationBarPref"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v1, "pref_key_assistant_inline_cue_disabled"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
