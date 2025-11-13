.class public final Landroid/hardware/camera2/ExtensionCaptureResult;
.super Ljava/lang/Object;
.source "ExtensionCaptureResult.java"


# static fields
.field public static final blacklist EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_AUTO_ZOOM_PADDING_REGION:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_PADDING_REGION:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_TARGET_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
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

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_PADDING_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_PADDING_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_AUTO_ZOOM_PADDING_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_AUTO_ZOOM_PADDING_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_TARGET_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_TARGET_COORDINATES:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_AUTO_ZOOM:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_ROTATE_VIEWPORT:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_TRANSLATE_VIEWPORT:Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v0, Landroid/hardware/camera2/ExtensionCaptureResult;->EFV_MAX_PADDING_ZOOM_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
