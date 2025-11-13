.class final Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;
.super Landroid/os/Handler;
.source "SecSoundSettingPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;

    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;

    iget-object v1, v0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->-$$Nest$fgetmKey(Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController$H;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->mPreference:Landroidx/preference/Preference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
