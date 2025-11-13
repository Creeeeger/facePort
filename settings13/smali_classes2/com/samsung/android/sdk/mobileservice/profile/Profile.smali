.class public Lcom/samsung/android/sdk/mobileservice/profile/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$EventData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$PlaceData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddressData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddressData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumberData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccountData;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;,
        Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/mobileservice/profile/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static sConnectedProfileVersion:I = 0x5


# instance fields
.field private mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

.field private mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

.field private mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

.field private mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

.field private mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

.field private mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

.field private mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

.field private mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

.field private mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

.field private mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

.field private mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

.field private mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

.field private mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

.field private mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

.field private mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

.field private mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2967
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    .line 2968
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    .line 2969
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    .line 2970
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    .line 2971
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    .line 2972
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    .line 2973
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    .line 2974
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    .line 2975
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    .line 2976
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    .line 2977
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    .line 2978
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    .line 2979
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    .line 2980
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    .line 2981
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    .line 2982
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    invoke-direct {v0}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 11
    sget v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    return v0
.end method

.method private readDeprecatedPlaceData(Landroid/os/Parcel;)V
    .locals 1

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 170
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PlaceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method private writeDeprecatedPlaceData(Landroid/os/Parcel;)V
    .locals 0

    const/4 p0, 0x0

    .line 174
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    .line 101
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    .line 102
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    .line 103
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    .line 104
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    .line 105
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    .line 106
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    .line 107
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    .line 108
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    .line 109
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    .line 110
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    .line 111
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    .line 112
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    .line 113
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    .line 114
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    .line 115
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    .line 116
    new-instance v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    .line 118
    sget v0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->readDeprecatedPlaceData(Landroid/os/Parcel;)V

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, 0x5

    .line 141
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Name;->putParcelData(Landroid/os/Parcel;)V

    .line 145
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountName:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountName;->putParcelData(Landroid/os/Parcel;)V

    .line 146
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Birthday;->putParcelData(Landroid/os/Parcel;)V

    .line 147
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mAccountBirthday:Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$AccountBirthday;->putParcelData(Landroid/os/Parcel;)V

    .line 148
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNickname:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Nickname;->putParcelData(Landroid/os/Parcel;)V

    .line 149
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoto:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Photo;->putParcelData(Landroid/os/Parcel;)V

    .line 150
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mOrganization:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Organization;->putParcelData(Landroid/os/Parcel;)V

    .line 151
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mGender:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Gender;->putParcelData(Landroid/os/Parcel;)V

    .line 152
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mStatusMessage:Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$StatusMessage;->putParcelData(Landroid/os/Parcel;)V

    .line 153
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mNote:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Note;->putParcelData(Landroid/os/Parcel;)V

    .line 154
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mMessengerAccount:Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$MessengerAccount;->putParcelData(Landroid/os/Parcel;)V

    .line 155
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mPhoneNumber:Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$PhoneNumber;->putParcelData(Landroid/os/Parcel;)V

    .line 156
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEmailAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$EmailAddress;->putParcelData(Landroid/os/Parcel;)V

    .line 157
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mWebAddress:Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$WebAddress;->putParcelData(Landroid/os/Parcel;)V

    .line 158
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mEvent:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Event;->putParcelData(Landroid/os/Parcel;)V

    .line 159
    iget-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->mHealth:Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile$Health;->putParcelData(Landroid/os/Parcel;)V

    .line 161
    sget p2, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->sConnectedProfileVersion:I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Profile;->writeDeprecatedPlaceData(Landroid/os/Parcel;)V

    :cond_0
    return-void
.end method
