.class Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse$1;
.super Ljava/lang/Object;
.source "SmartClipDataExtractionResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
    .locals 3

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;-><init>(IILcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse$1;->newArray(I)[Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    move-result-object p1

    return-object p1
.end method
