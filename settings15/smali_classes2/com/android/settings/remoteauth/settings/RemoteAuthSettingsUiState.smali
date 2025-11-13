.class public final Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final errorMsg:Ljava/lang/String;

.field public final registeredAuthenticatorUiStates:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const-string v1, "registeredAuthenticatorUiStates"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->registeredAuthenticatorUiStates:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;

    iget-object v1, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->registeredAuthenticatorUiStates:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->registeredAuthenticatorUiStates:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->errorMsg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->errorMsg:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->registeredAuthenticatorUiStates:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->errorMsg:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->registeredAuthenticatorUiStates:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteAuthSettingsUiState(registeredAuthenticatorUiStates="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", errorMsg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/remoteauth/settings/RemoteAuthSettingsUiState;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
