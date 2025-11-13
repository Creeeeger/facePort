.class public final Lcom/android/settings/notification/modes/ZenModeDisplayLinkPreferenceController;
.super Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 1

    const-string v0, "mode_display_settings"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    new-instance v0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;-><init>(Landroid/content/Context;Lcom/android/settings/notification/modes/ZenModesBackend;)V

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModeDisplayLinkPreferenceController;->mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    return-void
.end method


# virtual methods
.method public final getSummary(Lcom/android/settings/notification/modes/ZenMode;)Ljava/lang/CharSequence;
    .locals 6

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeDisplayLinkPreferenceController;->mSummaryHelper:Lcom/android/settings/notification/modes/ZenModeSummaryHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->getBlockedEffectsSummary(Lcom/android/settings/notification/modes/ZenMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object p1, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f141832

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f141833

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v2

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f141828

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f141829

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v1, v2

    :cond_4
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f141836

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f141837

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v1, v2

    :cond_6
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f14182b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f14182c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v1, Landroid/icu/text/MessageFormat;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModeSummaryHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f14182f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {p0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lt p1, v3, :cond_9

    const-string v4, "effect_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    if-lt p1, v2, :cond_9

    const-string v4, "effect_2"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_9

    const-string p1, "effect_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v1, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    const-string v1, "MODE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/modes/ZenModeDisplayFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method
