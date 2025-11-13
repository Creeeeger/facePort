.class public final Landroid/credentials/PrepareGetCredentialResponse;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;,
        Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;
    }
.end annotation


# static fields
.field private static final blacklist OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

.field private static final blacklist TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final blacklist mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

.field private final blacklist mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/credentials/PrepareGetCredentialResponse;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/credentials/PrepareGetCredentialResponse;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/credentials/PrepareGetCredentialResponseInternal;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    new-instance v0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    invoke-virtual {p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;-><init>(Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    return-void
.end method


# virtual methods
.method public whitelist getPendingGetCredentialHandle()Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .locals 1

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mPendingGetCredentialHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    return-object v0
.end method

.method public whitelist hasAuthenticationResults()Z
    .locals 1

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasAuthenticationResults()Z

    move-result v0

    return v0
.end method

.method public whitelist hasCredentialResults(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0, p1}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasCredentialResults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasRemoteResults()Z
    .locals 1

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse;->mResponseInternal:Landroid/credentials/PrepareGetCredentialResponseInternal;

    invoke-virtual {v0}, Landroid/credentials/PrepareGetCredentialResponseInternal;->hasRemoteResults()Z

    move-result v0

    return v0
.end method
