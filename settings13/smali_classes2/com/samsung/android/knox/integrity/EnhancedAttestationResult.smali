.class public Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;
.super Ljava/lang/Object;
.source "EnhancedAttestationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:Landroid/os/Bundle;

.field public errorCode:I

.field public reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->errorCode:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 80
    iget p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object p2, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/knox/integrity/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
