.class public final Lcom/samsung/android/settings/bixby/control/commands/SetAndLaunchCommand;
.super Lcom/samsung/android/settings/bixby/control/commands/LaunchCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mSetCommand:Lcom/samsung/android/settings/bixby/control/commands/SetCommand;


# virtual methods
.method public final executeInternal(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/commands/SetAndLaunchCommand;->mSetCommand:Lcom/samsung/android/settings/bixby/control/commands/SetCommand;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->execute(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bixby/control/commands/LaunchCommand;->executeInternal(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
