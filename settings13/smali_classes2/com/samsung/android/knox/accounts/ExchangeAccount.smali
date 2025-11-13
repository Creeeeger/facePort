.class public Lcom/samsung/android/knox/accounts/ExchangeAccount;
.super Ljava/lang/Object;
.source "ExchangeAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/accounts/ExchangeAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public acceptAllCertificates:Z

.field public certificateAlias:Ljava/lang/String;

.field public certificateData:[B

.field public certificatePassword:Ljava/lang/String;

.field public certificateStorageName:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public easDomain:Ljava/lang/String;

.field public easUser:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public emailNotificationVibrateAlways:Z

.field public emailNotificationVibrateWhenSilent:Z

.field public isDefault:Z

.field public isNotify:Z

.field public offPeak:I

.field public peakDays:I

.field public peakEndTime:I

.field public peakStartTime:I

.field public periodCalendar:I

.field public protocolVersion:Ljava/lang/String;

.field public retrivalSize:I

.field public roamingSchedule:I

.field public senderName:Ljava/lang/String;

.field public serverAddress:Ljava/lang/String;

.field public serverPassword:Ljava/lang/String;

.field public serverPathPrefix:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public smimeCertificareMode:I

.field public smimeCertificateMode:I

.field public smimeCertificatePassword:Ljava/lang/String;

.field public smimeCertificatePath:Ljava/lang/String;

.field public syncCalendar:I

.field public syncContacts:I

.field public syncInterval:I

.field public syncLookback:I

.field public useSSL:Z

.field public useTLS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/samsung/android/knox/accounts/ExchangeAccount$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/ExchangeAccount$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/accounts/ExchangeAccount;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    .line 159
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
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateWhenSilent:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 91
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easUser:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->easDomain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->senderName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->protocolVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->signature:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->serverPathPrefix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificatePassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 103
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->certificateStorageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncLookback:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakStartTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakEndTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->peakDays:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->offPeak:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->roamingSchedule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->retrivalSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->periodCalendar:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncContacts:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->syncCalendar:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateAlways:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->emailNotificationVibrateWhenSilent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useSSL:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->useTLS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->acceptAllCertificates:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-boolean p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->isNotify:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificareMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificateMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object p2, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/ExchangeAccount;->smimeCertificatePassword:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
