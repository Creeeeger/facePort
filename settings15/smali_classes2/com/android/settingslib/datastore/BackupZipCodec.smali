.class public final Lcom/android/settingslib/datastore/BackupZipCodec;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/datastore/BackupCodec;


# static fields
.field public static final BEST_COMPRESSION:Lcom/android/settingslib/datastore/BackupZipCodec;


# instance fields
.field public final compressionLevel:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settingslib/datastore/BackupZipCodec;

    const/16 v1, 0x9

    const-string v2, "ZipBestCompression"

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/datastore/BackupZipCodec;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/datastore/BackupZipCodec;->BEST_COMPRESSION:Lcom/android/settingslib/datastore/BackupZipCodec;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/datastore/BackupZipCodec;->compressionLevel:I

    iput-object p2, p0, Lcom/android/settingslib/datastore/BackupZipCodec;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final decode(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    new-instance p0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public final encode(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    new-instance v1, Ljava/util/zip/Deflater;

    iget p0, p0, Lcom/android/settingslib/datastore/BackupZipCodec;->compressionLevel:I

    invoke-direct {v1, p0}, Ljava/util/zip/Deflater;-><init>(I)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    return-object v0
.end method

.method public final getId()B
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/datastore/BackupZipCodec;->name:Ljava/lang/String;

    return-object p0
.end method
