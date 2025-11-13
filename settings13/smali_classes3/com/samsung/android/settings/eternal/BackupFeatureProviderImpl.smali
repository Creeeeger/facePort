.class public Lcom/samsung/android/settings/eternal/BackupFeatureProviderImpl;
.super Ljava/lang/Object;
.source "BackupFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/BackupFeatureProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupFeatureProviderImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFeatureGroup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "/"

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    array-length p1, p0

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    .line 74
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 19
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/eternal/BackupFeatureProviderImpl;->getFeatureGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 22
    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object p0

    .line 23
    invoke-static {}, Lcom/samsung/android/settings/cube/ControlValue;->buildEmptySourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object v0

    .line 22
    invoke-interface {p0, p1, p2, v0}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p0

    if-nez p0, :cond_0

    .line 29
    sget-object p0, Lcom/samsung/android/settings/eternal/BackupFeatureProviderImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getValue() failed to build a scene for : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/Scene;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlValue;)Z
    .locals 3

    .line 42
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/eternal/BackupFeatureProviderImpl;->getFeatureGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 45
    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p3}, Lcom/samsung/android/settings/cube/ControlValue;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/samsung/android/settings/cube/ControlValue;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return v1

    .line 50
    :cond_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setBundle(Landroid/os/Bundle;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v0

    if-nez v0, :cond_2

    .line 54
    sget-object p0, Lcom/samsung/android/settings/eternal/BackupFeatureProviderImpl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setValue() failed to build a scene for : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 58
    :cond_2
    invoke-static {p1, p0}, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    move-result-object p0

    .line 59
    invoke-virtual {p3}, Lcom/samsung/android/settings/cube/ControlValue;->getSourceInfo()Lcom/samsung/android/lib/episode/SourceInfo;

    move-result-object p3

    .line 58
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;->setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/SceneResult;->getResultType()Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method
