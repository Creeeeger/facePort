.class public Lcom/android/ims/internal/uce/presence/PresTupleInfo;
.super Ljava/lang/Object;
.source "PresTupleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresTupleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mContactUri:Ljava/lang/String;

.field private greylist-max-o mFeatureTag:Ljava/lang/String;

.field private greylist-max-o mTimestamp:Ljava/lang/String;

.field private blacklist mVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresTupleInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getContactUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getFeatureTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setContactUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setFeatureTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-r setTimestamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
