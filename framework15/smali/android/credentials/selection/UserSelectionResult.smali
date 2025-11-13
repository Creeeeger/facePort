.class public final Landroid/credentials/selection/UserSelectionResult;
.super Ljava/lang/Object;
.source "UserSelectionResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mEntryKey:Ljava/lang/String;

.field private final blacklist mEntrySubkey:Ljava/lang/String;

.field private final blacklist mProviderId:Ljava/lang/String;

.field private blacklist mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderId:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntryKey:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntrySubkey:Ljava/lang/String;

    iput-object p4, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    return-void
.end method

.method public static whitelist sendUserSelectionResult(Landroid/os/ResultReceiver;Landroid/credentials/selection/UserSelectionResult;)V
    .locals 3

    invoke-virtual {p1}, Landroid/credentials/selection/UserSelectionResult;->toUserSelectionDialogResult()Landroid/credentials/selection/UserSelectionDialogResult;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Landroid/credentials/selection/UserSelectionDialogResult;->addToBundle(Landroid/credentials/selection/UserSelectionDialogResult;Landroid/os/Bundle;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist getEntryKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntryKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEntrySubkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mEntrySubkey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    return-object v0
.end method

.method public whitelist getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method blacklist toUserSelectionDialogResult()Landroid/credentials/selection/UserSelectionDialogResult;
    .locals 7

    new-instance v6, Landroid/credentials/selection/UserSelectionDialogResult;

    iget-object v2, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderId:Ljava/lang/String;

    iget-object v3, p0, Landroid/credentials/selection/UserSelectionResult;->mEntryKey:Ljava/lang/String;

    iget-object v4, p0, Landroid/credentials/selection/UserSelectionResult;->mEntrySubkey:Ljava/lang/String;

    iget-object v5, p0, Landroid/credentials/selection/UserSelectionResult;->mProviderPendingIntentResponse:Landroid/credentials/selection/ProviderPendingIntentResponse;

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/UserSelectionDialogResult;-><init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    return-object v6
.end method
