.class public final Landroid/telecom/ParcelableConference$Builder;
.super Ljava/lang/Object;
.source "ParcelableConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mAddressPresentation:I

.field private blacklist mCallDirection:I

.field private blacklist mCallerDisplayName:Ljava/lang/String;

.field private blacklist mCallerDisplayNamePresentation:I

.field private blacklist mConnectElapsedTimeMillis:J

.field private blacklist mConnectTimeMillis:J

.field private blacklist mConnectionCapabilities:I

.field private blacklist mConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectionProperties:I

.field private blacklist mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mRingbackRequested:Z

.field private final blacklist mState:I

.field private blacklist mStatusHints:Landroid/telecom/StatusHints;

.field private blacklist mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private blacklist mVideoState:I


# direct methods
.method public constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionIds:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectTimeMillis:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/telecom/ParcelableConference$Builder;->mVideoState:I

    iput-wide v0, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectElapsedTimeMillis:J

    const/4 v0, 0x3

    iput v0, p0, Landroid/telecom/ParcelableConference$Builder;->mAddressPresentation:I

    iput v0, p0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayNamePresentation:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/ParcelableConference$Builder;->mCallDirection:I

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mState:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telecom/ParcelableConference;
    .locals 25

    move-object/from16 v0, p0

    new-instance v23, Landroid/telecom/ParcelableConference;

    move-object/from16 v1, v23

    iget-object v2, v0, Landroid/telecom/ParcelableConference$Builder;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget v3, v0, Landroid/telecom/ParcelableConference$Builder;->mState:I

    iget v4, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectionCapabilities:I

    iget v5, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectionProperties:I

    iget-object v6, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectionIds:Ljava/util/List;

    iget-object v7, v0, Landroid/telecom/ParcelableConference$Builder;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget v8, v0, Landroid/telecom/ParcelableConference$Builder;->mVideoState:I

    iget-wide v9, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectTimeMillis:J

    iget-wide v11, v0, Landroid/telecom/ParcelableConference$Builder;->mConnectElapsedTimeMillis:J

    iget-object v13, v0, Landroid/telecom/ParcelableConference$Builder;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v14, v0, Landroid/telecom/ParcelableConference$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v15, v0, Landroid/telecom/ParcelableConference$Builder;->mAddress:Landroid/net/Uri;

    move-object/from16 v24, v1

    iget v1, v0, Landroid/telecom/ParcelableConference$Builder;->mAddressPresentation:I

    move/from16 v16, v1

    iget-object v1, v0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayName:Ljava/lang/String;

    move-object/from16 v17, v1

    iget v1, v0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayNamePresentation:I

    move/from16 v18, v1

    iget-object v1, v0, Landroid/telecom/ParcelableConference$Builder;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/telecom/ParcelableConference$Builder;->mRingbackRequested:Z

    move/from16 v20, v1

    iget v1, v0, Landroid/telecom/ParcelableConference$Builder;->mCallDirection:I

    move/from16 v21, v1

    const/16 v22, 0x0

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZILandroid/telecom/ParcelableConference-IA;)V

    return-object v23
.end method

.method public blacklist setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mAddress:Landroid/net/Uri;

    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mAddressPresentation:I

    return-object p0
.end method

.method public blacklist setCallDirection(I)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/ParcelableConference$Builder;->mCallDirection:I

    return-object p0
.end method

.method public blacklist setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayName:Ljava/lang/String;

    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mCallerDisplayNamePresentation:I

    return-object p0
.end method

.method public blacklist setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectTimeMillis:J

    iput-wide p3, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectElapsedTimeMillis:J

    return-object p0
.end method

.method public blacklist setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionCapabilities:I

    return-object p0
.end method

.method public blacklist setConnectionIds(Ljava/util/List;)Landroid/telecom/ParcelableConference$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telecom/ParcelableConference$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionIds:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput p1, p0, Landroid/telecom/ParcelableConference$Builder;->mConnectionProperties:I

    return-object p0
.end method

.method public blacklist setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object p0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/ParcelableConference$Builder;->mRingbackRequested:Z

    return-object p0
.end method

.method public blacklist setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mStatusHints:Landroid/telecom/StatusHints;

    return-object p0
.end method

.method public blacklist setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telecom/ParcelableConference$Builder;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iput p2, p0, Landroid/telecom/ParcelableConference$Builder;->mVideoState:I

    return-object p0
.end method
