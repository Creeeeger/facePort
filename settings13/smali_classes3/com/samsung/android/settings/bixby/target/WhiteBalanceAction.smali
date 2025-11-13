.class public Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "WhiteBalanceAction.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setWhiteColorBalance(Landroid/content/Context;I)Z

    move-result p1

    const-string v1, "result"

    if-eqz p1, :cond_0

    const-string p1, "success"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getWhiteColorBalance(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "fail"

    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public doGetAction()Landroid/os/Bundle;
    .locals 4

    .line 54
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "whiteBalance_disabled_by_not_support_screen_mode"

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doGetAction: adaptiveValue = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WhiteBalanceAction"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getWhiteColorBalance(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/WhiteBalanceAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "screen_mode_setting"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetAction: curScreenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "whiteBalance_can_not_be_changed_by_natural_screen_selection"

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "not_supported_device"

    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public doGetEntryListAction()Landroid/os/Bundle;
    .locals 2

    .line 72
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "entryList"

    .line 80
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method
