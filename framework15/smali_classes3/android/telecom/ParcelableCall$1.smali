.class Landroid/telecom/ParcelableCall$1;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;
    .locals 37

    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const-class v4, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/DisconnectCause;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-class v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v6}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    const-class v14, Landroid/telecom/GatewayInfo;

    invoke-virtual {v0, v1, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/GatewayInfo;

    const-class v15, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v16, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v15

    const/16 v17, 0x0

    move-object/from16 v18, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_0

    move v15, v14

    goto :goto_0

    :cond_0
    move/from16 v15, v17

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v14

    move-object/from16 v19, v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    move-object/from16 v21, v14

    const-class v14, Ljava/lang/String;

    move/from16 v23, v15

    move-object/from16 v15, v22

    invoke-virtual {v0, v15, v1, v14}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    const-class v14, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/StatusHints;

    move-object/from16 v22, v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v24

    move/from16 v24, v14

    const-class v14, Ljava/lang/String;

    move-object/from16 v26, v15

    move-object/from16 v15, v25

    invoke-virtual {v0, v15, v1, v14}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v25, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v14

    move-object/from16 v27, v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v28, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v15

    move/from16 v29, v13

    const/4 v13, 0x1

    if-ne v15, v13, :cond_1

    move/from16 v17, v13

    :cond_1
    move/from16 v13, v17

    const-class v15, Landroid/telecom/ParcelableRttCall;

    invoke-virtual {v0, v1, v15}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/ParcelableRttCall;

    move-object/from16 v17, v12

    move/from16 v20, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    move-wide/from16 v30, v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move/from16 v32, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v33, v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v34, v13

    const-class v13, Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    new-instance v0, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;-><init>()V

    invoke-virtual {v0, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCannedSmsResponses(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCapabilities(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setProperties(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setSupportedAudioRoutes(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setConnectTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setHandle(Landroid/net/Uri;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setHandlePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v35, v1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerDisplayNamePresentation(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setGatewayInfo(Landroid/telecom/GatewayInfo;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIsVideoCallProviderChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setVideoCallProvider(Lcom/android/internal/telecom/IVideoProvider;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIsRttCallChanged(Z)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setRttCall(Landroid/telecom/ParcelableRttCall;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setParentCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setChildCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setVideoState(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setConferenceableCallIds(Ljava/util/List;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setIntentExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v36, v1

    move-object/from16 v27, v2

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCreationTimeMillis(J)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallDirection(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setCallerNumberVerificationStatus(I)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v2, v33

    invoke-virtual {v0, v2}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setContactDisplayName(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setActiveChildCallId(Ljava/lang/String;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->setContactPhotoUri(Landroid/net/Uri;)Landroid/telecom/ParcelableCall$ParcelableCallBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ParcelableCall$ParcelableCallBuilder;->createParcelableCall()Landroid/telecom/ParcelableCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableCall;
    .locals 1

    new-array v0, p1, [Landroid/telecom/ParcelableCall;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->newArray(I)[Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method
