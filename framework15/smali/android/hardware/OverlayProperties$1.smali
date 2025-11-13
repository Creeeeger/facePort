.class Landroid/hardware/OverlayProperties$1;
.super Ljava/lang/Object;
.source "OverlayProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/OverlayProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/OverlayProperties;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/OverlayProperties;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/OverlayProperties;

    invoke-static {p1}, Landroid/hardware/OverlayProperties;->-$$Nest$smnReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroid/hardware/OverlayProperties;-><init>(JLandroid/hardware/OverlayProperties-IA;)V

    return-object v0

    :cond_0
    return-object v1
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

    invoke-virtual {p0, p1}, Landroid/hardware/OverlayProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/OverlayProperties;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/OverlayProperties;
    .locals 1

    new-array v0, p1, [Landroid/hardware/OverlayProperties;

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

    invoke-virtual {p0, p1}, Landroid/hardware/OverlayProperties$1;->newArray(I)[Landroid/hardware/OverlayProperties;

    move-result-object p1

    return-object p1
.end method
