.class public final Landroid/telephony/ims/RcsContactTerminatedReason;
.super Ljava/lang/Object;
.source "RcsContactTerminatedReason.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContactUri:Landroid/net/Uri;

.field private final blacklist mReason:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/RcsContactTerminatedReason$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactTerminatedReason$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactTerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mContactUri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mReason:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mReason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactTerminatedReason-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactTerminatedReason;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getContactUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/ims/RcsContactTerminatedReason;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
