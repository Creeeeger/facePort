.class Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;
.super Ljava/lang/Object;
.source "SecSoundModeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecSoundModeController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreferenceChange mIsInUpdateProgress: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$fgetmIsInUpdateProgress(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecSoundModeController"

    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$fgetmIsInUpdateProgress(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$fgetmMuteIntervalOn(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 174
    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x150

    const/16 v1, 0x1c26

    const/4 v2, 0x3

    if-nez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p1, -0x1

    .line 180
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 178
    invoke-static {p2, v1, v3, v4, v5}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IILjava/lang/String;J)V

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallBack, Select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "hour by DropDownPreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    .line 197
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$mupdateUIByUser(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    return p2

    :cond_3
    const-string p1, "CallBack, Select Custom menu by DropDownPreference"

    .line 185
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$fgetmSoundSettings(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Lcom/samsung/android/settings/as/audio/SoundSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->showIntervalDialog()V

    return p2

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
