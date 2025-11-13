.class public final Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCaller:Ljava/lang/String;

.field public final mContactPattern:Ljava/lang/String;

.field public final mContactSound:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public final mHasDefaultItem:Z

.field public final mIsFromContact:Z

.field public final mIsSecondSim:Z

.field public final mSoundPickerUri:Ljava/lang/String;

.field public final mType:I

.field public final mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "vibration_type"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mType:I

    const-string v2, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsFromContact:Z

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mIsSecondSim:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "picked_ringtone_uri_2"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mSoundPickerUri:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "picked_ringtone_uri"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mSoundPickerUri:Ljava/lang/String;

    :goto_1
    const-string/jumbo p1, "show_default"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mHasDefaultItem:Z

    const-string p1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContactSound:Landroid/net/Uri;

    const-string p1, "android.intent.extra.pattern.EXISTING_URI"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mContactPattern:Ljava/lang/String;

    const-string p1, "from"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "current_sec_active_themepackage"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v4

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mCaller:Ljava/lang/String;

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerRingtoneType;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerNotificationType;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :goto_3
    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerHelper;->mVibType:Lcom/samsung/android/settings/asbase/vibration/IVibPickerType;

    return-void
.end method
