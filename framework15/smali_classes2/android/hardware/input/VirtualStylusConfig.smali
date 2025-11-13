.class public final Landroid/hardware/input/VirtualStylusConfig;
.super Landroid/hardware/input/VirtualTouchDeviceConfig;
.source "VirtualStylusConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualStylusConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualStylusConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/VirtualStylusConfig$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualStylusConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualStylusConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/VirtualStylusConfig$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchDeviceConfig;-><init>(Landroid/hardware/input/VirtualTouchDeviceConfig$Builder;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/VirtualStylusConfig$Builder;Landroid/hardware/input/VirtualStylusConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusConfig;-><init>(Landroid/hardware/input/VirtualStylusConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchDeviceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualStylusConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualStylusConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist getHeight()I
    .locals 1

    invoke-super {p0}, Landroid/hardware/input/VirtualTouchDeviceConfig;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist getWidth()I
    .locals 1

    invoke-super {p0}, Landroid/hardware/input/VirtualTouchDeviceConfig;->getWidth()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualTouchDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
