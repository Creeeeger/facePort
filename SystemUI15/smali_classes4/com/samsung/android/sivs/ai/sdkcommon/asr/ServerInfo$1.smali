.class Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;
    .locals 0

    new-instance p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo$1;->newArray(I)[Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    move-result-object p0

    return-object p0
.end method
