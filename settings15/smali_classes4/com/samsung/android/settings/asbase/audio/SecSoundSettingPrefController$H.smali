.class public final Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController$H;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;->-$$Nest$fgetmKey(Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundSettingPrefController;->mPreference:Landroidx/preference/Preference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
