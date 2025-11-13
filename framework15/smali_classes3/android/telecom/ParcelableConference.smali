.class public final Landroid/telecom/ParcelableConference;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableConference$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableConference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAddress:Landroid/net/Uri;

.field private final blacklist mAddressPresentation:I

.field private final blacklist mCallDirection:I

.field private final blacklist mCallerDisplayName:Ljava/lang/String;

.field private final blacklist mCallerDisplayNamePresentation:I

.field private final greylist-max-o mConnectElapsedTimeMillis:J

.field private final greylist-max-o mConnectTimeMillis:J

.field private final greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectionProperties:I

.field private final blacklist mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final blacklist mRingbackRequested:Z

.field private final greylist-max-o mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final greylist-max-o mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableConference$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConference$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IJJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/os/Bundle;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "ZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    move/from16 v2, p2

    iput v2, v0, Landroid/telecom/ParcelableConference;->mState:I

    move/from16 v3, p3

    iput v3, v0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    move/from16 v4, p4

    iput v4, v0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    move/from16 v7, p7

    iput v7, v0, Landroid/telecom/ParcelableConference;->mVideoState:I

    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    move-object/from16 v10, p12

    iput-object v10, v0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    move-object/from16 v11, p13

    iput-object v11, v0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    move-wide/from16 v12, p10

    iput-wide v12, v0, Landroid/telecom/ParcelableConference;->mConnectElapsedTimeMillis:J

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/telecom/ParcelableConference;->mAddress:Landroid/net/Uri;

    move/from16 v15, p15

    iput v15, v0, Landroid/telecom/ParcelableConference;->mAddressPresentation:I

    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/telecom/ParcelableConference;->mCallerDisplayName:Ljava/lang/String;

    move/from16 v1, p17

    iput v1, v0, Landroid/telecom/ParcelableConference;->mCallerDisplayNamePresentation:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    move/from16 v1, p20

    iput v1, v0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZILandroid/telecom/ParcelableConference-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallDirection()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    return v0
.end method

.method public blacklist getCallerDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallerDisplayNamePresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public greylist-max-o getConnectElapsedTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getConnectTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-o getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    return v0
.end method

.method public greylist-max-o getConnectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getConnectionProperties()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    return v0
.end method

.method public final blacklist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public greylist-max-o getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getHandle()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getHandlePresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mAddressPresentation:I

    return v0
.end method

.method public greylist-max-o getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public greylist-max-o getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mState:I

    return v0
.end method

.method public greylist-max-o getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public greylist-max-o getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public greylist-max-o getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    return v0
.end method

.method public blacklist isRingbackRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    invoke-static {v1}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", connectTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", VideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", VideoProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isRingbackRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", disconnectCause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", callDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-wide v2, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    nop

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/telecom/ParcelableConference;->mConnectElapsedTimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mAddressPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/telecom/ParcelableConference;->mRingbackRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mCallDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
