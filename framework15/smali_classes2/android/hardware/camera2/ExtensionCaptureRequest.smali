.class public final Landroid/hardware/camera2/ExtensionCaptureRequest;
.super Ljava/lang/Object;
.source "ExtensionCaptureRequest.java"


# static fields
.field public static final blacklist EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_STABILIZATION_MODE_GIMBAL:I = 0x1

.field public static final blacklist EFV_STABILIZATION_MODE_LOCKED:I = 0x2

.field public static final blacklist EFV_STABILIZATION_MODE_OFF:I

.field public static final blacklist EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureRequest;->EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureRequest$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureRequest;->EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureRequest;->EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureRequest;->EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureRequest;->EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureRequest;->EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
