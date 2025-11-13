.class Lsamsung/uwb/AppConfigParameters$1;
.super Ljava/lang/Object;
.source "AppConfigParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/AppConfigParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lsamsung/uwb/AppConfigParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1524
    invoke-virtual {p0, p1}, Lsamsung/uwb/AppConfigParameters$1;->createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/AppConfigParameters;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsamsung/uwb/AppConfigParameters;
    .locals 0

    .line 1527
    new-instance p0, Lsamsung/uwb/AppConfigParameters;

    invoke-direct {p0, p1}, Lsamsung/uwb/AppConfigParameters;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1524
    invoke-virtual {p0, p1}, Lsamsung/uwb/AppConfigParameters$1;->newArray(I)[Lsamsung/uwb/AppConfigParameters;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lsamsung/uwb/AppConfigParameters;
    .locals 0

    .line 1532
    new-array p0, p1, [Lsamsung/uwb/AppConfigParameters;

    return-object p0
.end method
