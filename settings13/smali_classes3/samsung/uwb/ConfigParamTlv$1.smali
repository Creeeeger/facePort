.class Lsamsung/uwb/ConfigParamTlv$1;
.super Ljava/lang/Object;
.source "ConfigParamTlv.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/ConfigParamTlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/ConfigParamTlv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lsamsung/uwb/ConfigParamTlv$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/ConfigParamTlv;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/ConfigParamTlv;
    .locals 0

    .line 67
    new-instance p0, Lsamsung/uwb/ConfigParamTlv;

    invoke-direct {p0, p1}, Lsamsung/uwb/ConfigParamTlv;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lsamsung/uwb/ConfigParamTlv$1;->newArray(I)[Lsamsung/uwb/ConfigParamTlv;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lsamsung/uwb/ConfigParamTlv;
    .locals 0

    .line 72
    new-array p0, p1, [Lsamsung/uwb/ConfigParamTlv;

    return-object p0
.end method
