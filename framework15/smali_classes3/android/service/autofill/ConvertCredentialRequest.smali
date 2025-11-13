.class public final Landroid/service/autofill/ConvertCredentialRequest;
.super Ljava/lang/Object;
.source "ConvertCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/ConvertCredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientState:Landroid/os/Bundle;

.field private final blacklist mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/ConvertCredentialRequest$1;

    invoke-direct {v0}, Landroid/service/autofill/ConvertCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/service/autofill/ConvertCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/credentials/GetCredentialResponse;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/ConvertCredentialRequest;->mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialRequest;->mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/service/autofill/ConvertCredentialRequest;->mClientState:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialRequest;->mClientState:Landroid/os/Bundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/credentials/GetCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v0, p0, Landroid/service/autofill/ConvertCredentialRequest;->mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;

    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/service/autofill/ConvertCredentialRequest;->mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/service/autofill/ConvertCredentialRequest;->mClientState:Landroid/os/Bundle;

    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/service/autofill/ConvertCredentialRequest;->mClientState:Landroid/os/Bundle;

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getClientState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialRequest;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getGetCredentialResponse()Landroid/credentials/GetCredentialResponse;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialRequest;->mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertCredentialRequest { getCredentialResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialRequest;->mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialRequest;->mGetCredentialResponse:Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
