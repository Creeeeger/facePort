.class public Lcom/samsung/android/settings/bixby/target/MusicShareAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "MusicShareAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 24
    const-class v0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mTaskId:Ljava/lang/Integer;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doChangeAction() :: newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_cast_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_cast_range"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v4, "true"

    .line 94
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "success"

    if-eqz v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string v3, "false"

    .line 101
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    goto :goto_0

    .line 105
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string v5, "fail"

    .line 110
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "result"

    .line 111
    invoke-virtual {p0, p1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public doGetAction()Landroid/os/Bundle;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_cast_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    .line 54
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->gotoMusicShareSettings()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetAction() :: newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_cast_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v3, "true"

    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "success"

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    const-string v4, "already_on"

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string v3, "false"

    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    const-string v4, "already_off"

    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v4, "fail"

    .line 79
    :goto_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSupportAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 118
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "true"

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "false"

    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public gotoMusicShareSettings()Landroid/os/Bundle;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->TAG:Ljava/lang/String;

    const-string v1, "gotoMusicShareSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$BluetoothCastSettingsActivity"

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mTaskId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->TAG:Ljava/lang/String;

    const-string v2, "gotoBluetoothSettings() :: TargetTask is existed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mTaskId:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v0, "success"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/MusicShareAction;->TAG:Ljava/lang/String;

    const-string v1, "ActivityNotFoundException :: Can not found BluetoothSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "not_supported_device"

    .line 151
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
