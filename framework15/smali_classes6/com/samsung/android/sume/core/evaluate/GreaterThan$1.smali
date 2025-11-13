.class Lcom/samsung/android/sume/core/evaluate/GreaterThan$1;
.super Ljava/lang/Object;
.source "GreaterThan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/evaluate/GreaterThan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sume/core/evaluate/GreaterThan<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/core/evaluate/GreaterThan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/samsung/android/sume/core/evaluate/GreaterThan<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sume/core/evaluate/GreaterThan;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/evaluate/GreaterThan;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GreaterThan$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/core/evaluate/GreaterThan;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/sume/core/evaluate/GreaterThan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/samsung/android/sume/core/evaluate/GreaterThan<",
            "*>;"
        }
    .end annotation

    new-array v0, p1, [Lcom/samsung/android/sume/core/evaluate/GreaterThan;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/GreaterThan$1;->newArray(I)[Lcom/samsung/android/sume/core/evaluate/GreaterThan;

    move-result-object p1

    return-object p1
.end method
