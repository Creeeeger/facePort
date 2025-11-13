.class public Lcom/samsung/android/knox/accounts/EmailAccount;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/accounts/EmailAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public emailAddress:Ljava/lang/String;

.field public incomingProtocol:Ljava/lang/String;

.field public incomingServerAcceptAllCertificates:Z

.field public incomingServerAddress:Ljava/lang/String;

.field public incomingServerLogin:Ljava/lang/String;

.field public incomingServerPassword:Ljava/lang/String;

.field public incomingServerPort:I

.field public incomingServerUseSSL:Z

.field public incomingServerUseTLS:Z

.field public isNotify:Z

.field public outgoingProtocol:Ljava/lang/String;

.field public outgoingServerAcceptAllCertificates:Z

.field public outgoingServerAddress:Ljava/lang/String;

.field public outgoingServerLogin:Ljava/lang/String;

.field public outgoingServerPassword:Ljava/lang/String;

.field public outgoingServerPort:I

.field public outgoingServerUseSSL:Z

.field public outgoingServerUseTLS:Z

.field public signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/accounts/EmailAccount$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/EmailAccount$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/accounts/EmailAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/EmailAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    const-string p1, "Send from SamsungMobile"

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    iput p9, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    iput-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
