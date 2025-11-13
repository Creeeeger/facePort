.class public Lcom/samsung/android/knox/util/SemCertByte;
.super Ljava/lang/Object;
.source "SemCertByte.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/util/SemCertByte;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation
.end field


# instance fields
.field public whitelist caCertBytes:[B

.field public whitelist caSize:I

.field public whitelist certBytes:[B

.field public whitelist certsize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/util/SemCertByte$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/util/SemCertByte$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/util/SemCertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/util/SemCertByte;->readByteArray(Landroid/os/Parcel;[B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/util/SemCertByte;->readByteArray(Landroid/os/Parcel;[B)V

    return-void
.end method

.method private final blacklist readByteArray(Landroid/os/Parcel;[B)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p2

    if-ne v1, v2, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "16.0"
    .end annotation

    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certsize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->certBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/util/SemCertByte;->caCertBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
