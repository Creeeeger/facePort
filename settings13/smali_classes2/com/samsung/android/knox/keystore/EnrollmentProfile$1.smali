.class Lcom/samsung/android/knox/keystore/EnrollmentProfile$1;
.super Ljava/lang/Object;
.source "EnrollmentProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/EnrollmentProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/keystore/EnrollmentProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/keystore/EnrollmentProfile;
    .locals 1

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 174
    const-class v0, Lcom/samsung/android/knox/keystore/SCEPProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance p0, Lcom/samsung/android/knox/keystore/SCEPProfile;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/SCEPProfile;-><init>(Landroid/os/Parcel;)V

    return-object p0

    .line 176
    :cond_0
    const-class v0, Lcom/samsung/android/knox/keystore/CMCProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    new-instance p0, Lcom/samsung/android/knox/keystore/CMCProfile;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CMCProfile;-><init>(Landroid/os/Parcel;)V

    return-object p0

    .line 178
    :cond_1
    const-class v0, Lcom/samsung/android/knox/keystore/CMPProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 179
    new-instance p0, Lcom/samsung/android/knox/keystore/CMPProfile;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CMPProfile;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/EnrollmentProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/keystore/EnrollmentProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/keystore/EnrollmentProfile;
    .locals 0

    .line 186
    new-array p0, p1, [Lcom/samsung/android/knox/keystore/EnrollmentProfile;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/EnrollmentProfile$1;->newArray(I)[Lcom/samsung/android/knox/keystore/EnrollmentProfile;

    move-result-object p0

    return-object p0
.end method
