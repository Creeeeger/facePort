.class public Lcom/samsung/android/settings/bixby/target/FontAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "FontAction.java"


# instance fields
.field private final BASE_ENTRY:I

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTaskId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 20
    const-class v0, Lcom/samsung/android/settings/bixby/target/FontAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->BASE_ENTRY:I

    .line 28
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mTaskId:Ljava/lang/Integer;

    return-void
.end method

.method private createFailResult()Landroid/os/Bundle;
    .locals 3

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const-string v2, "fail"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createSuccessResult()Landroid/os/Bundle;
    .locals 3

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "result"

    const-string v2, "success"

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private setSize(I)I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    const/16 v0, 0x68

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->changeFontSize(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public doChangeAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 36
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, -0x1

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bixby/target/FontAction;->setSize(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/FontAction;->createSuccessResult()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/FontAction;->createFailResult()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/target/FontAction;->createFailResult()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGetAction()Landroid/os/Bundle;
    .locals 4

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 75
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string v0, "not_supported_device"

    .line 77
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doGetEntryListAction()Landroid/os/Bundle;
    .locals 5

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getMaxFontSize(Landroid/content/Context;)I

    move-result p0

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-gt v2, p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "entryList"

    .line 92
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public doGotoAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 99
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const v0, 0x10008000

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.display.SecFontSizeActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mTaskId:Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/FontAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    .line 111
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
