.class public Lcom/samsung/android/knox/accounts/EmailAccount;
.super Ljava/lang/Object;
.source "EmailAccount.java"

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

    .line 194
    new-instance v0, Lcom/samsung/android/knox/accounts/EmailAccount$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/EmailAccount$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/accounts/EmailAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/EmailAccount;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 138
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerLogin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingProtocol:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerLogin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseSSL:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerUseTLS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->outgoingServerAcceptAllCertificates:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseSSL:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerUseTLS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->incomingServerAcceptAllCertificates:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean p0, p0, Lcom/samsung/android/knox/accounts/EmailAccount;->isNotify:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
