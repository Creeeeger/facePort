.class public final Landroid/hardware/display/BrightnessInfo;
.super Ljava/lang/Object;
.source "BrightnessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessInfo$BrightnessMaxReason;,
        Landroid/hardware/display/BrightnessInfo$HighBrightnessMode;
    }
.end annotation


# static fields
.field public static final blacklist BRIGHTNESS_MAX_REASON_NONE:I = 0x0

.field public static final blacklist BRIGHTNESS_MAX_REASON_POWER_IC:I = 0x2

.field public static final blacklist BRIGHTNESS_MAX_REASON_THERMAL:I = 0x1

.field public static final blacklist BRIGHTNESS_MAX_REASON_WEAR_BEDTIME_MODE:I = 0x3

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIGH_BRIGHTNESS_MODE_HDR:I = 0x2

.field public static final blacklist HIGH_BRIGHTNESS_MODE_OFF:I = 0x0

.field public static final blacklist HIGH_BRIGHTNESS_MODE_SUNLIGHT:I = 0x1


# instance fields
.field public final blacklist adjustedBrightness:F

.field public final blacklist brightness:F

.field public final blacklist brightnessMaxReason:I

.field public final blacklist brightnessMaximum:F

.field public final blacklist brightnessMinimum:F

.field public final blacklist highBrightnessMode:I

.field public final blacklist highBrightnessTransitionPoint:F

.field public blacklist isAnimating:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/BrightnessInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    iput p2, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    iput p3, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iput p4, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    iput p5, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    iput p6, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    iput p7, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    return-void
.end method

.method public constructor blacklist <init>(FFFFIFIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    iput p2, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    iput p3, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iput p4, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    iput p5, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    iput p6, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    iput p7, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    iput-boolean p8, p0, Landroid/hardware/display/BrightnessInfo;->isAnimating:Z

    return-void
.end method

.method public constructor blacklist <init>(FFFIFI)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/BrightnessInfo;->isAnimating:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/BrightnessInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/BrightnessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist briMaxReasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "invalid"

    return-object v0

    :pswitch_0
    const-string v0, "power IC"

    return-object v0

    :pswitch_1
    const-string v0, "thermal"

    return-object v0

    :pswitch_2
    const-string v0, "none"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist hbmToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "invalid"

    return-object v0

    :pswitch_0
    const-string v0, "hdr"

    return-object v0

    :pswitch_1
    const-string v0, "sunlight"

    return-object v0

    :pswitch_2
    const-string v0, "off"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessInfo;->brightnessMaxReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessInfo;->isAnimating:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
