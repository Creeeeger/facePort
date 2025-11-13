.class public final Lcom/google/android/gms/safetynet/zzj;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v3, v0

    move-wide v4, v1

    move-object v1, v3

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, p0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    invoke-static {v6, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v6, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createByteArray(ILandroid/os/Parcel;)[B

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v6, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(ILandroid/os/Parcel;)J

    move-result-wide v4

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    goto :goto_0

    :cond_4
    invoke-static {v6, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzb:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzc:Lcom/google/android/gms/common/data/DataHolder;

    iput-object v2, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzd:Landroid/os/ParcelFileDescriptor;

    iput-wide v4, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zze:J

    iput-object v3, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzf:[B

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/safetynet/SafeBrowsingData;

    return-object p0
.end method
