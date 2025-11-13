.class public Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
.super Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
.source "SemSmartClipExtendedMetaTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TAG:Ljava/lang/String; = "SemSmartClipExtendedMetaTag"


# instance fields
.field protected blacklist mExtraData:[B

.field protected blacklist mParcelableData:Landroid/os/Parcelable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtraData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    return-object v0
.end method

.method public whitelist getParcelableData()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    new-array v4, v2, [B

    iput-object v4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    goto :goto_2

    :cond_2
    iput-object v3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    :goto_2
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
