.class Lcom/sec/ims/IMSRegistrationInfo$1;
.super Ljava/lang/Object;
.source "IMSRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IMSRegistrationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/ims/IMSRegistrationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/IMSRegistrationInfo;
    .locals 0

    .line 255
    new-instance p0, Lcom/sec/ims/IMSRegistrationInfo;

    invoke-direct {p0, p1}, Lcom/sec/ims/IMSRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSRegistrationInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/ims/IMSRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/ims/IMSRegistrationInfo;
    .locals 0

    .line 260
    new-array p0, p1, [Lcom/sec/ims/IMSRegistrationInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 252
    invoke-virtual {p0, p1}, Lcom/sec/ims/IMSRegistrationInfo$1;->newArray(I)[Lcom/sec/ims/IMSRegistrationInfo;

    move-result-object p0

    return-object p0
.end method
