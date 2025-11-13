.class public final Landroid/credentials/CreateCredentialRequest;
.super Ljava/lang/Object;
.source "CreateCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/CreateCredentialRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/CreateCredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlwaysSendAppInfoToProvider:Z

.field private final blacklist mCandidateQueryData:Landroid/os/Bundle;

.field private final blacklist mCredentialData:Landroid/os/Bundle;

.field private final blacklist mIsSystemProviderRequired:Z

.field private final blacklist mOrigin:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/CreateCredentialRequest$1;

    invoke-direct {v0}, Landroid/credentials/CreateCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/credentials/CreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean v3, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    iput-boolean v4, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/CreateCredentialRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/CreateCredentialRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    const-string v0, "credentialData must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    const-string v0, "candidateQueryData must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    iput-boolean p4, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    iput-boolean p5, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    iput-object p6, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/lang/String;Landroid/credentials/CreateCredentialRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/credentials/CreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist alwaysSendAppInfoToProvider()Z
    .locals 1

    iget-boolean v0, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCandidateQueryData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCredentialData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isSystemProviderRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateCredentialRequest {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", credentialData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", candidateQueryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSystemProviderRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alwaysSendAppInfoToProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
