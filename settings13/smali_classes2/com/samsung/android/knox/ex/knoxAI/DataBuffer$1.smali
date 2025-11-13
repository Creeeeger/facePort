.class Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;
.super Ljava/lang/Object;
.source "DataBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;
    .locals 0

    .line 398
    new-instance p0, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;
    .locals 0

    .line 402
    new-array p0, p1, [Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/DataBuffer$1;->newArray(I)[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;

    move-result-object p0

    return-object p0
.end method
