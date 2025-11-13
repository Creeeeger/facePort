.class public final Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final discoveredDeviceUiStates:Ljava/util/List;

.field public final enrollmentUiState:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

.field public final errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;Ljava/lang/String;)V
    .locals 1

    const-string v0, "discoveredDeviceUiStates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enrollmentUiState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->discoveredDeviceUiStates:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->enrollmentUiState:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    iput-object p3, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static copy$default(Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;Ljava/util/List;Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;I)Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->discoveredDeviceUiStates:Ljava/util/List;

    :cond_0
    iget-object p3, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->errorMsg:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "discoveredDeviceUiStates"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;-><init>(Ljava/util/List;Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;

    iget-object v1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->discoveredDeviceUiStates:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->discoveredDeviceUiStates:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->enrollmentUiState:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    iget-object v3, p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->enrollmentUiState:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->errorMsg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->errorMsg:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->discoveredDeviceUiStates:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->enrollmentUiState:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->errorMsg:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->discoveredDeviceUiStates:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteAuthEnrollEnrollingUiState(discoveredDeviceUiStates="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enrollmentUiState="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->enrollmentUiState:Lcom/android/settings/remoteauth/enrolling/EnrollmentUiState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", errorMsg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/remoteauth/enrolling/RemoteAuthEnrollEnrollingUiState;->errorMsg:Ljava/lang/String;

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
