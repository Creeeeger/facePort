.class public interface abstract Lcom/samsung/android/settings/cube/Controllable;
.super Ljava/lang/Object;
.source "Controllable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    }
.end annotation


# virtual methods
.method public getBackupKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    .line 35
    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
