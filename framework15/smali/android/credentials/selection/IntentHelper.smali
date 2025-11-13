.class public final Landroid/credentials/selection/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist extractCancelUiRequest(Landroid/content/Intent;)Landroid/credentials/selection/CancelSelectionRequest;
    .locals 2

    const-string v0, "android.credentials.selection.extra.CANCEL_UI_REQUEST"

    const-class v1, Landroid/credentials/selection/CancelSelectionRequest;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/CancelSelectionRequest;

    return-object v0
.end method

.method public static whitelist extractCreateCredentialProviderInfoList(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/credentials/selection/CreateCredentialProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    const-class v1, Landroid/credentials/selection/CreateCredentialProviderData;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    nop

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static whitelist extractDisabledProviderInfoList(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/credentials/selection/DisabledProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

    const-class v1, Landroid/credentials/selection/DisabledProviderData;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    nop

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static whitelist extractGetCredentialProviderInfoList(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/credentials/selection/GetCredentialProviderInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    const-class v1, Landroid/credentials/selection/GetCredentialProviderData;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    nop

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static whitelist extractRequestInfo(Landroid/content/Intent;)Landroid/credentials/selection/RequestInfo;
    .locals 2

    const-string v0, "android.credentials.selection.extra.REQUEST_INFO"

    const-class v1, Landroid/credentials/selection/RequestInfo;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/selection/RequestInfo;

    return-object v0
.end method

.method public static whitelist extractResultReceiver(Landroid/content/Intent;)Landroid/os/ResultReceiver;
    .locals 2

    const-string v0, "android.credentials.selection.extra.RESULT_RECEIVER"

    const-class v1, Landroid/os/ResultReceiver;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    return-object v0
.end method
