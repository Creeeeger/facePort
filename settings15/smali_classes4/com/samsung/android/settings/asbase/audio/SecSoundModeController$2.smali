.class public final Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPreferenceChange mIsInUpdateProgress: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$2;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$fgetmIsInUpdateProgress(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecSoundModeController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$fgetmIsInUpdateProgress(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$fgetmMuteIntervalOn(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    if-nez p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x150

    const/16 v3, 0x1c26

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "CallBack, Select "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "hour by DropDownPreference"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;

    move-result-object p2

    mul-int/lit8 p1, p1, 0x3c

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->setMuteInterval(I)V

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$mupdateUIByUser(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    return v1

    :cond_3
    const-string p1, "CallBack, Select Custom menu by DropDownPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$fgetmSoundSettings(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result p1

    new-instance p2, Landroidx/picker/app/SeslTimePickerDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    div-int/lit8 v5, p1, 0x3c

    rem-int/lit8 v6, p1, 0x3c

    const/4 v7, 0x1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroidx/picker/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    const p2, 0x7f1427a4

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    new-instance p2, Lcom/samsung/android/settings/asbase/audio/SoundSettings$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/asbase/audio/SoundSettings$1;-><init>(Lcom/samsung/android/settings/asbase/audio/SoundSettings;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mTimePickerDialog:Landroidx/picker/app/SeslTimePickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
