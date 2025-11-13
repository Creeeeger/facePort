.class public final Landroid/service/autofill/ConvertCredentialResponse;
.super Ljava/lang/Object;
.source "ConvertCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/ConvertCredentialResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientState:Landroid/os/Bundle;

.field private final blacklist mDataset:Landroid/service/autofill/Dataset;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/ConvertCredentialResponse$1;

    invoke-direct {v0}, Landroid/service/autofill/ConvertCredentialResponse$1;-><init>()V

    sput-object v0, Landroid/service/autofill/ConvertCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget-object v1, Landroid/service/autofill/Dataset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    iput-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    const-class v4, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-static {v4, v3, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/autofill/Dataset;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

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

    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getDataset()Landroid/service/autofill/Dataset;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertCredentialResponse { dataset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

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
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mDataset:Landroid/service/autofill/Dataset;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/autofill/ConvertCredentialResponse;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
