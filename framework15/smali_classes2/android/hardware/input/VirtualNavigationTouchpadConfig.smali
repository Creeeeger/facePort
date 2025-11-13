.class public final Landroid/hardware/input/VirtualNavigationTouchpadConfig;
.super Landroid/hardware/input/VirtualInputDeviceConfig;
.source "VirtualNavigationTouchpadConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualNavigationTouchpadConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualNavigationTouchpadConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/hardware/input/VirtualInputDeviceConfig$Builder;)V

    invoke-static {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->-$$Nest$fgetmHeight(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mHeight:I

    invoke-static {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->-$$Nest$fgetmWidth(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mWidth:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;Landroid/hardware/input/VirtualNavigationTouchpadConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;-><init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualInputDeviceConfig;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mWidth:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualNavigationTouchpadConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method blacklist additionalFieldsToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mHeight:I

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mWidth:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/hardware/input/VirtualInputDeviceConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
