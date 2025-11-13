.class public Landroid/credentials/selection/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredManIntentHelper"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createCancelUiIntent(Landroid/content/Context;Landroid/os/IBinder;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v0, v1}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;)V

    new-instance v2, Landroid/credentials/selection/CancelSelectionRequest;

    new-instance v3, Landroid/credentials/selection/RequestToken;

    invoke-direct {v3, p1}, Landroid/credentials/selection/RequestToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {v2, v3, p2, p3}, Landroid/credentials/selection/CancelSelectionRequest;-><init>(Landroid/credentials/selection/RequestToken;ZLjava/lang/String;)V

    const-string v3, "android.credentials.selection.extra.CANCEL_UI_REQUEST"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntent(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createCredentialSelectorIntentForCredMan(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/ProviderData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    invoke-static {p0, p1, p3, p4}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method

.method private static blacklist createCredentialSelectorIntentInternal(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/selection/RequestInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/credentials/selection/DisabledProviderData;",
            ">;",
            "Landroid/os/ResultReceiver;",
            ")",
            "Landroid/credentials/selection/IntentCreationResult;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-direct {v1, v0}, Landroid/credentials/selection/IntentCreationResult$Builder;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v0, v1}, Landroid/credentials/selection/IntentFactory;->setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;)V

    const-string v2, "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "android.credentials.selection.extra.REQUEST_INFO"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    nop

    invoke-static {p3}, Landroid/credentials/selection/IntentFactory;->toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    const-string v3, "android.credentials.selection.extra.RESULT_RECEIVER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/credentials/selection/IntentCreationResult$Builder;->build()Landroid/credentials/selection/IntentCreationResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;)Landroid/content/ComponentName;
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "CredManIntentHelper"

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse OEM component name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-wide/32 v5, 0x100000

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-boolean v5, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const/4 v5, 0x0

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    iget-boolean v7, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v7, :cond_2

    sget-object v7, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->SUCCESS:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v7}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found enabled oem CredMan UI component."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_2

    :cond_2
    sget-object v7, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_FOUND_BUT_NOT_ENABLED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v7}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    const-string v7, "Found enabled oem CredMan UI component but it was not enabled."

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v4

    sget-object v5, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v5}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find oem CredMan UI component: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_SPECIFIED_BUT_NOT_FOUND:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v4}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    const-string v4, "Invalid OEM ComponentName format."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_4

    :cond_4
    sget-object v2, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->OEM_UI_CONFIG_NOT_SPECIFIED:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    invoke-virtual {p1, v2}, Landroid/credentials/selection/IntentCreationResult$Builder;->setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;

    const-string v2, "Invalid empty OEM component name."

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object v0
.end method

.method private static blacklist setCredentialSelectorUiComponentName(Landroid/content/Context;Landroid/content/Intent;Landroid/credentials/selection/IntentCreationResult$Builder;)V
    .locals 5

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->configurableSelectorUiEnabled()Z

    move-result v0

    const v1, 0x1040357

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Landroid/credentials/selection/IntentFactory;->getOemOverrideComponentName(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult$Builder;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v2, v1

    nop

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/credentials/selection/IntentCreationResult$Builder;->setFallbackUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fallback CredMan IU not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CredManIntentHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method private static blacklist toIpcFriendlyResultReceiver(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/ResultReceiver;",
            ">(TT;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
