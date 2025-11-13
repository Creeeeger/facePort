.class public final synthetic Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/darkmode/DarkModePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/darkmode/DarkModePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/darkmode/DarkModePreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/darkmode/DarkModePreference;

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    const v0, 0x7f140b51

    goto :goto_1

    :cond_1
    const v0, 0x7f140b50

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_3

    const v1, 0x7f140b57

    goto :goto_2

    :cond_3
    const v1, 0x7f140b53

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightModeCustomType()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_5

    const v1, 0x7f140b59

    goto :goto_3

    :cond_5
    const v1, 0x7f140b55

    :goto_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_6
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v0

    :goto_4
    iget-object v2, p0, Lcom/android/settings/display/darkmode/DarkModePreference;->mFormat:Lcom/android/settings/display/darkmode/TimeFormatter;

    invoke-virtual {v2, v0}, Lcom/android/settings/display/darkmode/TimeFormatter;->of(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_8

    const v1, 0x7f140b58

    goto :goto_5

    :cond_8
    const v1, 0x7f140b54

    :goto_5
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_a

    const v1, 0x7f140b5a

    goto :goto_6

    :cond_a
    const v1, 0x7f140b56

    :goto_6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_8
    return-void
.end method
