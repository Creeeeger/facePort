.class public abstract Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;
.super Lcom/android/settings/core/SecCustomPreferenceController;
.source "SecSoundSettingPrefController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SoundSettings"

.field protected static final UPDATE_NOTIFICATION_RINGTONE:I = 0x4

.field protected static final UPDATE_NOTIFICATION_RINGTONE_MULTI_SIM:I = 0x5

.field protected static final UPDATE_PHONE_RINGTONE:I = 0x1

.field protected static final UPDATE_PHONE_RINGTONE_MULTI_SIM:I = 0x3

.field protected static final UPDATE_SYSTEM_SOUND:I = 0x6


# instance fields
.field private final mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

.field private final mKey:Ljava/lang/String;

.field protected mPreference:Landroidx/preference/Preference;

.field private final mRingtoneNames:Ljava/lang/Runnable;

.field private mUpdateRingtoneType:I


# direct methods
.method public static synthetic $r8$lambda$2OK3gMNQ6RezEJ2ei-etAdbyD5c(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mUpdateRingtoneType:I

    .line 50
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    .line 132
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mRingtoneNames:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 68
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecCustomPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mUpdateRingtoneType:I

    .line 50
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    .line 132
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mRingtoneNames:Ljava/lang/Runnable;

    .line 60
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mKey:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 9

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/WorkUtils;->isWorkSoundSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->work_sound_same_as_personal_for_samsung:I

    .line 137
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {v5}, Lcom/samsung/android/settings/as/utils/WorkUtils;->getPersonalProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 136
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 141
    :goto_0
    iget v4, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mUpdateRingtoneType:I

    if-eq v4, v2, :cond_9

    const-string v5, "\n"

    const/4 v6, 0x3

    const-string v7, " : "

    if-eq v4, v6, :cond_7

    const/4 v6, 0x2

    const/4 v8, 0x4

    if-eq v4, v8, :cond_5

    const/4 v8, 0x5

    if-eq v4, v8, :cond_3

    const/4 v0, 0x6

    if-eq v4, v0, :cond_1

    goto/16 :goto_2

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Open_theme"

    .line 183
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x1040c2b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/audio/SoundTheme;->getCurrentThemeTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {v1, v6}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x100

    .line 173
    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    invoke-virtual {p0, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_b

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    invoke-virtual {p0, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x80

    .line 155
    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    invoke-virtual {p0, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    .line 144
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_a
    if-eqz v3, :cond_b

    .line 147
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mHandler:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    :goto_2
    return-void
.end method

.method protected static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "SoundSettings"

    const-string p1, "Unable to update ringtone name, no context provided"

    .line 198
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 203
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 204
    invoke-static {p0, v0, v3, v2}, Landroid/media/Ringtone;->getTitleWithSoundTheme(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {p0, v0, v3, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-ne p1, v2, :cond_3

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "use_video_sound_for_ringtone"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_3
    const/16 v1, 0x80

    if-ne p1, v1, :cond_4

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "use_video_sound_for_ringtone_sim2"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 219
    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->checkCallBackgroundUri(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_ringtone_call_bg_sound:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x1040bca

    .line 225
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isRTL(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u200f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private updateRingtoneNameAsync()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mRingtoneNames:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getViewIdForLogging()I
    .locals 0

    const/16 p0, 0x150

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneNameAsync()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setActualRingtoneUri(Ljava/lang/String;I)V
    .locals 4

    .line 239
    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v0, p2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 241
    invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, -0x1

    .line 242
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 243
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 244
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 251
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method protected setUpdateRingtoneType(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mUpdateRingtoneType:I

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateSystemSoundNameAsync()V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneNameAsync()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
