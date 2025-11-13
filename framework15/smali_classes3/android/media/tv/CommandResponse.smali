.class public final Landroid/media/tv/CommandResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "CommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/CommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x7

.field public static final whitelist RESPONSE_TYPE_JSON:Ljava/lang/String; = "json"

.field public static final whitelist RESPONSE_TYPE_XML:Ljava/lang/String; = "xml"


# instance fields
.field private final blacklist mResponse:Ljava/lang/String;

.field private final blacklist mResponseType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/CommandResponse$1;

    invoke-direct {v0}, Landroid/media/tv/CommandResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/CommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput-object p4, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandResponse;
    .locals 1

    new-instance v0, Landroid/media/tv/CommandResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/CommandResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResponseType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
