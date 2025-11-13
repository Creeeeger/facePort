.class public Lcom/samsung/android/vr/HmtDevice;
.super Ljava/lang/Object;
.source "HmtDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/HmtDevice$Builder;,
        Lcom/samsung/android/vr/HmtDevice$HmtDeviceComarator;
    }
.end annotation


# static fields
.field public static final blacklist CATEGORY_CONNECTION_NAME_DROP_IN:Ljava/lang/String; = "DropIn"

.field public static final blacklist CATEGORY_CONNECTION_NAME_STANDALONE:Ljava/lang/String; = "Standalone"

.field public static final blacklist CATEGORY_CONNECTION_NAME_TETHERED:Ljava/lang/String; = "Tethered"

.field public static final blacklist CATEGORY_CONNECTION_NAME_WIRELESS:Ljava/lang/String; = "Wireless"

.field public static final blacklist CATEGORY_CONNECTION_TYPE_DROP_IN:I = 0x1

.field public static final blacklist CATEGORY_CONNECTION_TYPE_STANDALONE:I = 0x8

.field public static final blacklist CATEGORY_CONNECTION_TYPE_TETHERED:I = 0x2

.field public static final blacklist CATEGORY_CONNECTION_TYPE_WIRELESS:I = 0x4

.field public static final blacklist CATEGORY_DEVICE_NAME_AR:Ljava/lang/String; = "AR"

.field public static final blacklist CATEGORY_DEVICE_NAME_VR:Ljava/lang/String; = "VR"

.field public static final blacklist CATEGORY_DEVICE_NAME_XR:Ljava/lang/String; = "XR"

.field public static final blacklist CATEGORY_DEVICE_TYPE_AR:I = 0x20

.field public static final blacklist CATEGORY_DEVICE_TYPE_VR:I = 0x10

.field public static final blacklist CATEGORY_DEVICE_TYPE_XR:I = 0x30

.field public static final blacklist CATEGORY_PLATFORM_OCULUS:I = 0x100

.field public static final blacklist CATEGORY_PLATFORM_SXR:I = 0x200

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/vr/HmtDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "HmtDevice"


# instance fields
.field final blacklist mCategory:I

.field final blacklist mDeviceFOV:I

.field final blacklist mDeviceIPD:F

.field final blacklist mDeviceId:I

.field final blacklist mDeviceNameFilter:Ljava/lang/String;

.field final blacklist mDeviceRevisionFilter:Ljava/lang/String;

.field final blacklist mDisplayCount:I

.field final blacklist mDisplayDensityDpi:I

.field final blacklist mDisplayFrequency:I

.field final blacklist mDisplayHeight:I

.field final blacklist mDisplayPPI:I

.field final blacklist mDisplayRotation:I

.field final blacklist mDisplaySequenceLeft:Ljava/lang/String;

.field final blacklist mDisplaySequenceRight:Ljava/lang/String;

.field final blacklist mDisplayWidth:I

.field final blacklist mEnabled:Z

.field final blacklist mEyeBufferHeight:I

.field final blacklist mEyeBufferWidth:I

.field final blacklist mName:Ljava/lang/String;

.field final blacklist mProductId:I

.field final blacklist mRenderDirection:Ljava/lang/String;

.field final blacklist mSwappedLR:Ljava/lang/String;

.field final blacklist mVendorId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 725
    new-instance v0, Lcom/samsung/android/vr/HmtDevice$1;

    invoke-direct {v0}, Lcom/samsung/android/vr/HmtDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/android/vr/HmtDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceNameFilter:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceRevisionFilter:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/vr/HmtDevice;->mEnabled:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayWidth:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayHeight:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayFrequency:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayCount:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayPPI:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayDensityDpi:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayRotation:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplaySequenceLeft:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplaySequenceRight:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mRenderDirection:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mSwappedLR:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceFOV:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceIPD:F

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEyeBufferHeight:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEyeBufferWidth:I

    .line 133
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/vr/HmtDevice$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/vr/HmtDevice$Builder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetvendorId(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    .line 77
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetproductId(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    .line 78
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetname(Lcom/samsung/android/vr/HmtDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetcategory(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    .line 80
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdeviceId(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    .line 81
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdeviceNameFilter(Lcom/samsung/android/vr/HmtDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceNameFilter:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdeviceRevisionFilter(Lcom/samsung/android/vr/HmtDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceRevisionFilter:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetenabled(Lcom/samsung/android/vr/HmtDevice$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEnabled:Z

    .line 86
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplayWidth(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayWidth:I

    .line 87
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplayHeight(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayHeight:I

    .line 88
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplayFrequency(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayFrequency:I

    .line 89
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplayCount(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayCount:I

    .line 91
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplayPPI(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayPPI:I

    .line 92
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplayDensityDpi(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayDensityDpi:I

    .line 93
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplayRotation(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayRotation:I

    .line 94
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplaySequenceLeft(Lcom/samsung/android/vr/HmtDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplaySequenceLeft:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdisplaySequenceRight(Lcom/samsung/android/vr/HmtDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplaySequenceRight:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetrenderDirection(Lcom/samsung/android/vr/HmtDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mRenderDirection:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetswappedLR(Lcom/samsung/android/vr/HmtDevice$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mSwappedLR:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdeviceFOV(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceFOV:I

    .line 100
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgetdeviceIPD(Lcom/samsung/android/vr/HmtDevice$Builder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceIPD:F

    .line 101
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgeteyeBufferHeight(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEyeBufferHeight:I

    .line 102
    invoke-static {p1}, Lcom/samsung/android/vr/HmtDevice$Builder;->-$$Nest$fgeteyeBufferWidth(Lcom/samsung/android/vr/HmtDevice$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEyeBufferWidth:I

    .line 103
    return-void
.end method

.method private static blacklist categoryToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "category"    # I

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v0, "result":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    .line 431
    const-string v1, ", VR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_0
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_1

    .line 434
    const-string v1, ", AR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_1
    and-int/lit8 v1, p0, 0x30

    if-eqz v1, :cond_2

    .line 437
    const-string v1, ", XR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_2
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_3

    .line 440
    const-string v1, ", DropIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_3
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    .line 443
    const-string v1, ", Tethered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_4
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    .line 446
    const-string v1, ", Wireless"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_5
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_6

    .line 449
    const-string v1, ", Standalone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createFromParcelBody(Landroid/os/Parcel;)Lcom/samsung/android/vr/HmtDevice;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 741
    new-instance v0, Lcom/samsung/android/vr/HmtDevice;

    invoke-direct {v0, p0}, Lcom/samsung/android/vr/HmtDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static blacklist parseIntValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "intValue":I
    const/16 v1, 0xa

    .line 221
    .local v1, "radix":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_1

    .line 222
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x58

    if-ne v2, v4, :cond_1

    .line 224
    :cond_0
    const/16 v1, 0x10

    .line 225
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 228
    :cond_1
    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid number for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HmtDevice"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public static blacklist readDevices(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/vr/HmtDevice;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/samsung/android/vr/HmtDevice$Builder;

    invoke-direct {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;-><init>()V

    .line 138
    .local v0, "builder":Lcom/samsung/android/vr/HmtDevice$Builder;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 139
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_21

    .line 140
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "value":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setName(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 145
    :cond_0
    const-string v5, "category"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 146
    const/4 v5, 0x0

    .line 147
    .local v5, "flags":I
    const-string v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "categoryConfigArrays":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    .line 149
    .local v9, "config":Ljava/lang/String;
    const-string v10, "VR"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 150
    or-int/lit8 v5, v5, 0x10

    goto :goto_2

    .line 151
    :cond_1
    const-string v10, "AR"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 152
    or-int/lit8 v5, v5, 0x20

    goto :goto_2

    .line 153
    :cond_2
    const-string v10, "XR"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 154
    or-int/lit8 v5, v5, 0x30

    .line 156
    :cond_3
    :goto_2
    const-string v10, "DropIn"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 157
    or-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 158
    :cond_4
    const-string v10, "Tethered"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 159
    or-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 160
    :cond_5
    const-string v10, "Wireless"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 161
    or-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 162
    :cond_6
    const-string v10, "Standalone"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 163
    or-int/lit8 v5, v5, 0x8

    .line 148
    .end local v9    # "config":Ljava/lang/String;
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 166
    :cond_8
    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setCategory(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    .line 167
    .end local v5    # "flags":I
    .end local v6    # "categoryConfigArrays":[Ljava/lang/String;
    goto/16 :goto_4

    :cond_9
    const-string v5, "enabled"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 168
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setEnabled(Z)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 169
    :cond_a
    const-string v5, "display-sequence-left"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 170
    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplaySequenceLeft(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 171
    :cond_b
    const-string v5, "display-sequence-right"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 172
    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplaySequenceRight(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 173
    :cond_c
    const-string v5, "display-resolution-width"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 174
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplayWidth(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 175
    :cond_d
    const-string v5, "display-resolution-height"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplayHeight(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 177
    :cond_e
    const-string v5, "display-frequency"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplayFrequency(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 179
    :cond_f
    const-string v5, "display-swapped-lr"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 180
    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setSwappedLR(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 181
    :cond_10
    const-string v5, "display-count"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplayCount(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 183
    :cond_11
    const-string/jumbo v5, "render-direction"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 184
    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setRenderDirection(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 185
    :cond_12
    const-string v5, "device-fov"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 186
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDeviceFOV(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 187
    :cond_13
    const-string v5, "device-ipd"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 188
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDeviceIPD(F)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 189
    :cond_14
    const-string v5, "display-ppi"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplayPPI(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 191
    :cond_15
    const-string v5, "eye-buffer-height"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setEyeBufferHeight(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 193
    :cond_16
    const-string v5, "eye-buffer-width"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setEyeBufferWidth(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 195
    :cond_17
    const-string v5, "display-density-dpi"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 196
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplayDensityDpi(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto/16 :goto_4

    .line 197
    :cond_18
    const-string v5, "display-rotation"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDisplayRotation(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto :goto_4

    .line 199
    :cond_19
    const-string v5, "device-name-filter"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 200
    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDeviceNameFilter(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto :goto_4

    .line 201
    :cond_1a
    const-string v5, "device-revision-filter"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 202
    invoke-virtual {v0, v4}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDeviceRevisionFilter(Ljava/lang/String;)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto :goto_4

    .line 203
    :cond_1b
    const-string/jumbo v5, "vendor-id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 204
    invoke-static {v3, v4}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setVendorId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto :goto_4

    .line 205
    :cond_1c
    const-string/jumbo v5, "product-id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 206
    invoke-static {v3, v4}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setProductId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto :goto_4

    .line 207
    :cond_1d
    const-string v5, "device-id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 208
    invoke-static {v3, v4}, Lcom/samsung/android/vr/HmtDevice;->parseIntValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/vr/HmtDevice$Builder;->setDeviceId(I)Lcom/samsung/android/vr/HmtDevice$Builder;

    goto :goto_4

    .line 209
    :cond_1e
    const-string v5, "device-type"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_4

    .line 210
    :cond_1f
    const-string v5, "display-name-filter"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 139
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 212
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_20
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown attribute! key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_21
    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtDevice$Builder;->build()Lcom/samsung/android/vr/HmtDevice;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 295
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    iget v3, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    if-eq v3, v1, :cond_17

    iget v4, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    if-ne v4, v1, :cond_0

    goto/16 :goto_3

    .line 298
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/vr/HmtDevice;

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    .line 299
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/vr/HmtDevice;

    .line 301
    .local v1, "filter":Lcom/samsung/android/vr/HmtDevice;
    iget v6, v1, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    if-ne v6, v0, :cond_6

    iget v0, v1, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    if-ne v0, v3, :cond_6

    iget v0, v1, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    if-eqz v3, :cond_3

    :cond_2
    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 310
    :cond_3
    return v2

    .line 312
    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 315
    return v2

    .line 317
    :cond_5
    return v5

    .line 304
    :cond_6
    :goto_0
    return v2

    .line 319
    .end local v1    # "filter":Lcom/samsung/android/vr/HmtDevice;
    :cond_7
    instance-of v0, p1, Landroid/view/InputDevice;

    if-eqz v0, :cond_a

    .line 320
    move-object v0, p1

    check-cast v0, Landroid/view/InputDevice;

    .line 321
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVendorId()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    if-ne v1, v3, :cond_9

    .line 322
    invoke-virtual {v0}, Landroid/view/InputDevice;->getProductId()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    if-eq v1, v3, :cond_8

    goto :goto_1

    .line 325
    :cond_8
    return v5

    .line 323
    :cond_9
    :goto_1
    return v2

    .line 327
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_a
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 328
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 329
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/HmtDevice;->matchesUsbIds(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 330
    return v5

    .line 332
    :cond_b
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/HmtDevice;->matchesName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 333
    return v5

    .line 335
    :cond_c
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 336
    return v5

    .line 338
    :cond_d
    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/HmtDevice;->matchesId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 339
    return v5

    .line 341
    :cond_e
    return v2

    .line 343
    .end local v0    # "value":Ljava/lang/String;
    :cond_f
    instance-of v0, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_16

    .line 344
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 345
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    if-ne v1, v3, :cond_15

    .line 346
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    iget v3, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    if-eq v1, v3, :cond_10

    goto :goto_2

    .line 349
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 350
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 352
    :cond_12
    return v2

    .line 354
    :cond_13
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 355
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 356
    return v2

    .line 358
    :cond_14
    return v5

    .line 347
    :cond_15
    :goto_2
    return v2

    .line 360
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_16
    return v2

    .line 296
    :cond_17
    :goto_3
    return v2
.end method

.method public blacklist getDeviceId()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    return v0
.end method

.method public blacklist getDisplayDensityDpi()I
    .locals 1

    .line 553
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayDensityDpi:I

    return v0
.end method

.method public blacklist getDisplayHeight()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayHeight:I

    return v0
.end method

.method public blacklist getDisplayWidth()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayWidth:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProductId()I
    .locals 1

    .line 489
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    return v0
.end method

.method public blacklist getVendorId()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 237
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isAR()Z
    .locals 1

    .line 521
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isCurrentDevice()Z
    .locals 1

    .line 497
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/HmtDevice;->matchesNameFilter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isDropIn()Z
    .locals 2

    .line 505
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEnabled:Z

    return v0
.end method

.method public blacklist isOculusPlatform()Z
    .locals 1

    .line 529
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSXRPlatform()Z
    .locals 1

    .line 533
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isStandalone()Z
    .locals 1

    .line 513
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isTethered()Z
    .locals 1

    .line 509
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isVR()Z
    .locals 1

    .line 517
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isWireless()Z
    .locals 1

    .line 501
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isXR()Z
    .locals 1

    .line 525
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist matchesId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/NumberFormatException;
    return v0
.end method

.method public blacklist matchesName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist matchesNameFilter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceNameFilter:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matchesRevisionFilter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "revision"    # Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceRevisionFilter:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 276
    return v1

    .line 277
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    return v1

    .line 280
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matchesUsbIds(Ljava/lang/String;)Z
    .locals 6
    .param p1, "ids"    # Ljava/lang/String;

    .line 242
    const-string v0, "0x"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 243
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "splits":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 246
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 247
    .local v3, "vendorId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 248
    .local v0, "productId":I
    iget v5, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    if-ne v3, v5, :cond_1

    iget v5, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    return v4

    .line 250
    :cond_1
    :goto_0
    return v1

    .line 253
    .end local v0    # "productId":I
    .end local v3    # "vendorId":I
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1

    .line 258
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "splits":[Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public blacklist toIdsString()Ljava/lang/String;
    .locals 3

    .line 481
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%04x:%04x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "HmtDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    :cond_0
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    const/4 v2, -0x1

    const-string v3, "("

    if-eq v1, v2, :cond_1

    .line 375
    const-string v1, ",mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "),"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    const-string v4, ")"

    if-eq v1, v2, :cond_2

    .line 382
    const-string v1, "mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    const-string v1, ",mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceNameFilter:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 391
    const-string v1, ",mDeviceNameFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceNameFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceRevisionFilter:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 395
    const-string v1, ",mDeviceRevisionFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceRevisionFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_4
    const-string v1, ",Category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayWidth:I

    if-eqz v1, :cond_5

    .line 404
    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    :cond_5
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayHeight:I

    if-eqz v1, :cond_6

    .line 408
    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    :cond_6
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayDensityDpi:I

    if-eqz v1, :cond_7

    .line 412
    const-string v1, ", mDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    :cond_7
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayFrequency:I

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_8

    .line 416
    const-string v1, ", mFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    :cond_8
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayRotation:I

    if-eqz v1, :cond_9

    .line 420
    const-string v1, ", mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    :cond_9
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toSummary()Ljava/lang/String;
    .locals 3

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "XRDevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, "mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    const-string v1, ",mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget v2, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, "),"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v2, "mProductId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget v2, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, ",mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v1, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget v1, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    invoke-static {v1}, Lcom/samsung/android/vr/HmtDevice;->categoryToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 746
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceNameFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceRevisionFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 754
    iget-boolean v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayPPI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplaySequenceLeft:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDisplaySequenceRight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mRenderDirection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/samsung/android/vr/HmtDevice;->mSwappedLR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceFOV:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mDeviceIPD:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 771
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEyeBufferHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget v0, p0, Lcom/samsung/android/vr/HmtDevice;->mEyeBufferWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    return-void
.end method
