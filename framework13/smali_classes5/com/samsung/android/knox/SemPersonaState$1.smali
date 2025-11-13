.class Lcom/samsung/android/knox/SemPersonaState$1;
.super Ljava/lang/Object;
.source "SemPersonaState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemPersonaState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/SemPersonaState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor greylist <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/SemPersonaState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object p1

    return-object p1
.end method

.method public greylist newArray(I)[Lcom/samsung/android/knox/SemPersonaState;
    .locals 1
    .param p1, "size"    # I

    .line 105
    new-array v0, p1, [Lcom/samsung/android/knox/SemPersonaState;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaState$1;->newArray(I)[Lcom/samsung/android/knox/SemPersonaState;

    move-result-object p1

    return-object p1
.end method
