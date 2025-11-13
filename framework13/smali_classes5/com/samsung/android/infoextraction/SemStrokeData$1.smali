.class Lcom/samsung/android/infoextraction/SemStrokeData$1;
.super Ljava/lang/Object;
.source "SemStrokeData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/infoextraction/SemStrokeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/infoextraction/SemStrokeData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/SemStrokeData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 92
    new-instance v0, Lcom/samsung/android/infoextraction/SemStrokeData;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/SemStrokeData;-><init>()V

    .line 93
    .local v0, "semStrokeData":Lcom/samsung/android/infoextraction/SemStrokeData;
    invoke-virtual {v0, p1}, Lcom/samsung/android/infoextraction/SemStrokeData;->readFromParcel(Landroid/os/Parcel;)V

    .line 94
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/SemStrokeData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/infoextraction/SemStrokeData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/infoextraction/SemStrokeData;
    .locals 1
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Lcom/samsung/android/infoextraction/SemStrokeData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lcom/samsung/android/infoextraction/SemStrokeData$1;->newArray(I)[Lcom/samsung/android/infoextraction/SemStrokeData;

    move-result-object p1

    return-object p1
.end method
