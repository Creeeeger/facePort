.class public Lcom/android/settings/RingtonePreference;
.super Landroidx/preference/Preference;
.source "RingtonePreference.java"


# instance fields
.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field protected mUserContext:Landroid/content/Context;

.field protected mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    sget-object v0, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 73
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    .line 75
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    const/4 v0, 0x2

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    .line 79
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/RingtonePreference;->setUserId(I)V

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private convertType(II)I
    .locals 3

    const/4 p0, 0x2

    const/16 v0, 0x100

    const/16 v1, 0x80

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    return p1

    :cond_2
    if-ne p1, v1, :cond_3

    return v2

    :cond_3
    if-ne p1, v0, :cond_4

    return p0

    :cond_4
    return p1
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4

    const/4 p1, 0x1

    if-eqz p3, :cond_9

    const/4 p2, -0x1

    const-string v0, "android.samsung.intent.extra.ringtone.CALL_BACKGROUND_SOUND"

    .line 241
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string/jumbo v0, "use_video_sound_for_ringtone_sim2"

    const-string/jumbo v1, "use_video_sound_for_ringtone"

    const/16 v2, 0x80

    if-ne p2, p1, :cond_1

    .line 244
    iget p2, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    if-ne p2, p1, :cond_0

    .line 245
    iget-object p2, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_3

    .line 248
    iget-object p2, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    .line 252
    iget p2, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    const/4 v3, 0x0

    if-ne p2, p1, :cond_2

    .line 253
    iget-object p2, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    .line 256
    iget-object p2, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    const-string p2, "android.intent.extra.ringtone.PICKED_URI"

    .line 262
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 263
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const-string v1, ""

    if-eqz v0, :cond_7

    .line 264
    iget v0, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    const/16 v2, 0x200

    if-ne v0, v2, :cond_5

    const-string p2, "android.samsung.intent.extra.ringtone.PICKED_SOUND_THEME"

    .line 265
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    move-object v1, p2

    .line 266
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/settings/RingtonePreference;->onSaveSystemSound(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 270
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 271
    invoke-virtual {p0, p2}, Lcom/android/settings/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 275
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 276
    invoke-virtual {p0, p2}, Lcom/android/settings/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    :cond_9
    :goto_1
    return p1
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    .line 165
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowDefault:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getRingtoneType()I

    move-result v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/RingtonePreference;->mShowSilent:Z

    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    iget v0, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 206
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method protected onSaveSystemSound(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 332
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 231
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    .line 315
    invoke-static {p0, p1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    return-void
.end method

.method public setRingtoneType(II)V
    .locals 0

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;->convertType(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    return-void
.end method

.method public setUserId(I)V
    .locals 1

    .line 85
    iput p1, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    .line 86
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    return-void
.end method
