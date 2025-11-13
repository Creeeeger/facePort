.class public final Landroid/hardware/usb/ParcelableUsbPort;
.super Ljava/lang/Object;
.source "ParcelableUsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/ParcelableUsbPort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSupportedAltModesMask:I

.field private final blacklist mSupportedContaminantProtectionModes:I

.field private final blacklist mSupportedModes:I

.field private final blacklist mSupportsComplianceWarnings:Z

.field private final blacklist mSupportsEnableContaminantPresenceDetection:Z

.field private final blacklist mSupportsEnableContaminantPresenceProtection:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/ParcelableUsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/ParcelableUsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/ParcelableUsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIZZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    iput p3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    iput-boolean p4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    iput-boolean p5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    iput-boolean p6, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsComplianceWarnings:Z

    iput p7, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedAltModesMask:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIZZZILandroid/hardware/usb/ParcelableUsbPort-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZZI)V

    return-void
.end method

.method public static blacklist of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;
    .locals 9

    new-instance v8, Landroid/hardware/usb/ParcelableUsbPort;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedContaminantProtectionModes()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v4

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v5

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    move-result v6

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedAltModesMask()I

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZZI)V

    return-object v8
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;
    .locals 10

    new-instance v9, Landroid/hardware/usb/UsbPort;

    iget-object v2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    iget v4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    iget-boolean v5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    iget-boolean v6, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    iget-boolean v7, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsComplianceWarnings:Z

    iget v8, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedAltModesMask:I

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V

    return-object v9
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsComplianceWarnings:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedAltModesMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
