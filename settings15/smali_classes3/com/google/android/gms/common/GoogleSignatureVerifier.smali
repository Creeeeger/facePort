.class public final Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# direct methods
.method public static final zzb(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/common/zzl;->zza:[Lcom/google/android/gms/common/zzi;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string v0, "Package has more than one signature."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/zzj;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/zzj;-><init>([B)V

    :goto_0
    array-length p0, v0

    if-ge v3, p0, :cond_3

    aget-object p0, v0, v3

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/zzi;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object v2, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
