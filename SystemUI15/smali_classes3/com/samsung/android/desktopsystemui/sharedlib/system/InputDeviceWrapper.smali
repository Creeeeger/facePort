.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputDeviceWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final PRODUCT_ID_POGO_KEYBOARD:I = 0xa035

.field private static final VENDOR_ID_SAMSUNG:I = 0x4e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPogoKeyboardConnected(Landroid/view/InputDevice;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result p0

    const/16 v1, 0x4e8

    if-ne v0, v1, :cond_0

    const v0, 0xa035

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
