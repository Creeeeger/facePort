.class public Lcom/google/android/gms/safetynet/SafeBrowsingData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-safetynet@@17.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/safetynet/SafeBrowsingData;",
            ">;"
        }
    .end annotation
.end field

.field private static final zza:Ljava/lang/String;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/common/data/DataHolder;

.field private zzd:Landroid/os/ParcelFileDescriptor;

.field private zze:J

.field private zzf:[B

.field private zzg:[B

.field private zzh:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/safetynet/SafeBrowsingData;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/safetynet/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/safetynet/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/safetynet/SafeBrowsingData;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Landroid/os/ParcelFileDescriptor;J[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Landroid/os/ParcelFileDescriptor;J[B)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzc:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p3, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzd:Landroid/os/ParcelFileDescriptor;

    iput-wide p4, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zze:J

    iput-object p6, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzf:[B

    return-void
.end method

.method private static final zza(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public getLastUpdateTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zze:J

    return-wide v0
.end method

.method public getListsDataHolder()Lcom/google/android/gms/common/data/DataHolder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzc:Lcom/google/android/gms/common/data/DataHolder;

    return-object p0
.end method

.method public getMetadata()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public getState()[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzf:[B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzd:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzg:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzh:Ljava/io/File;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, v1

    goto :goto_2

    :cond_1
    :try_start_0
    const-string/jumbo v2, "xlb"

    const-string v3, ".tmp"

    .line 1
    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 2
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v3, 0x10000000

    .line 3
    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzd:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 5
    :cond_2
    throw p0

    :catch_0
    move-object v0, v1

    :catch_1
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 6
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 7
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzg:[B

    .line 8
    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzg:[B

    .line 9
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zza(Ljava/io/Closeable;)V

    or-int/lit8 p2, p2, 0x1

    .line 13
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/safetynet/zzj;->zza(Lcom/google/android/gms/safetynet/SafeBrowsingData;Landroid/os/Parcel;I)V

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zza(Ljava/io/Closeable;)V

    .line 11
    throw p0

    .line 10
    :catch_2
    invoke-static {v2}, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zza(Ljava/io/Closeable;)V

    .line 12
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/safetynet/zzj;->zza(Lcom/google/android/gms/safetynet/SafeBrowsingData;Landroid/os/Parcel;I)V

    .line 13
    :goto_3
    iput-object v1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->zzd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
