.class Lcom/samsung/android/knox/integrity/EnhancedAttestationResult$1;
.super Ljava/lang/Object;
.source "EnhancedAttestationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;
    .locals 0

    .line 64
    new-instance p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;
    .locals 0

    .line 68
    new-array p0, p1, [Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult$1;->newArray(I)[Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;

    move-result-object p0

    return-object p0
.end method
