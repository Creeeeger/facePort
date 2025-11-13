.class public final Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;
.super Landroid/hardware/input/VirtualInputDeviceConfig$Builder;
.source "VirtualNavigationTouchpadConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualNavigationTouchpadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/input/VirtualInputDeviceConfig$Builder<",
        "Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mHeight:I

.field private final blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;)I
    .locals 0

    iget p0, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mWidth:I

    return p0
.end method

.method public constructor whitelist <init>(II)V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/input/VirtualInputDeviceConfig$Builder;-><init>()V

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iput p2, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mHeight:I

    iput p1, p0, Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;->mWidth:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a virtual navigation touchpad, touchpad dimensions must be positive. Got: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .locals 2

    new-instance v0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;-><init>(Landroid/hardware/input/VirtualNavigationTouchpadConfig$Builder;Landroid/hardware/input/VirtualNavigationTouchpadConfig-IA;)V

    return-object v0
.end method
