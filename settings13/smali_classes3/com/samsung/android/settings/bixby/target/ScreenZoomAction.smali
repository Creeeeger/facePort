.class public Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "ScreenZoomAction.java"


# instance fields
.field private SUB_DISPLAY:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    const-string v0, "sub_display"

    .line 24
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->SUB_DISPLAY:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v1

    const-string v2, "result"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->SUB_DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setScreenZoom(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "success"

    .line 36
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "value"

    .line 37
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "fail"

    .line 39
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public doGetAction()Landroid/os/Bundle;
    .locals 6

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->SUB_DISPLAY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    .line 52
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 53
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenZoom(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const-string v0, "not_supported_device"

    .line 56
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGetEntryListAction()Landroid/os/Bundle;
    .locals 5

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/ScreenZoomAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getRangeOfScreenZoom(Landroid/content/Context;)I

    move-result p0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, p0, :cond_0

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "entryList"

    .line 71
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method
