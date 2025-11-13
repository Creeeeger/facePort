.class public final Landroid/hardware/camera2/CameraExtensionCharacteristics;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;,
        Landroid/hardware/camera2/CameraExtensionCharacteristics$Extension;
    }
.end annotation


# static fields
.field public static final blacklist EFV_PADDING_ZOOM_FACTOR_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation runtime Landroid/hardware/camera2/impl/ExtensionKey;
    .end annotation

    .annotation runtime Landroid/hardware/camera2/impl/PublicKey;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final whitelist EXTENSION_AUTOMATIC:I = 0x0

.field public static final whitelist EXTENSION_BEAUTY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTENSION_BOKEH:I = 0x2

.field public static final blacklist EXTENSION_EYES_FREE_VIDEOGRAPHY:I = 0x5

.field public static final whitelist EXTENSION_FACE_RETOUCH:I = 0x1

.field public static final whitelist EXTENSION_HDR:I = 0x3

.field private static final blacklist EXTENSION_LIST:[I

.field public static final whitelist EXTENSION_NIGHT:I = 0x4

.field public static final blacklist NON_PROCESSING_INPUT_FORMAT:I = 0x22

.field public static final blacklist PROCESSING_INPUT_FORMAT:I = 0x23

.field private static final blacklist SUPPORTED_SYNTHETIC_CAMERA_CHARACTERISTICS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionCharacteristics"


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mCharacteristicsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCharacteristicsMapNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEXTENSION_LIST()[I
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    new-array v0, v4, [Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_DYNAMIC_RANGE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_COLOR_SPACE_PROFILES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->SUPPORTED_SYNTHETIC_CAMERA_CHARACTERISTICS:Ljava/util/List;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->EFV_PADDING_ZOOM_FACTOR_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EFV_PADDING_ZOOM_FACTOR_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    nop

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getCharacteristicsMapNative(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    return-void
.end method

.method public static blacklist areAdvancedExtensionsSupported(I)Z
    .locals 1

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->areAdvancedExtensionsSupported(I)Z

    move-result v0

    return v0
.end method

.method private static blacklist generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v0, v2

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method private static blacklist generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private static blacklist getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/SizeList;

    iget v3, v2, Landroid/hardware/camera2/extension/SizeList;->format:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    new-instance v4, Landroid/util/Size;

    iget v5, v3, Landroid/hardware/camera2/extension/Size;->width:I

    iget v6, v3, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static blacklist initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist initializeExtension(I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/extension/IPreviewExtenderImpl;",
            "Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v0

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;I)V

    return-void
.end method

.method public static blacklist isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v0

    const-string v1, "Failed to query extension availability! Extension service does not respond!"

    const-string v2, "CameraExtensionCharacteristics"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    nop

    :try_start_2
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v3

    :catch_1
    move-exception v4

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_2
    move-exception v0

    return v3
.end method

.method private static blacklist isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Landroid/graphics/SurfaceTexture;

    if-eq p0, v0, :cond_1

    const-class v0, Landroid/view/SurfaceView;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/impl/CameraMetadataNative;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static blacklist releaseSession(I)V
    .locals 1

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseSession(I)V

    return-void
.end method

.method public static blacklist unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    .locals 1

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-void
.end method


# virtual methods
.method public whitelist get(ILandroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#get:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getKeys(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    nop

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v2

    :cond_0
    :try_start_1
    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v4}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v5, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension for the specified key! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    return-object v2

    :goto_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAvailableCaptureRequestKeys(I)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getAvailableCaptureRequestKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    :cond_0
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v0, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit(Landroid/os/IBinder;)V

    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_1

    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const-class v6, Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    const-class v8, Landroid/hardware/camera2/CaptureRequest;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v7, v4, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableRequestKeys must be non-null in the characteristics"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_2
    :goto_1
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture request keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v3

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAvailableCaptureResultKeys(I)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getAvailableCaptureResultKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    :cond_0
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v0, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Landroid/os/IBinder;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit(Landroid/os/IBinder;)V

    :goto_0
    if-eqz v3, :cond_4

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_3

    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const-class v6, Landroid/hardware/camera2/CaptureResult$Key;

    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    const-class v8, Landroid/hardware/camera2/CaptureResult;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v7, v4, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableResultKeys must be non-null in the characteristics"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture result keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v3

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getEstimatedCaptureLatencyRangeMillis(ILandroid/util/Size;I)Landroid/util/Range;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sparse-switch p3, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    nop

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getEstimatedCaptureLatencyRangeMillis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v3}, Landroid/hardware/camera2/extension/Size;-><init>()V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->width:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5, v3, p3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v6

    :cond_0
    goto :goto_0

    :cond_1
    nop

    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/16 v5, 0x23

    if-ne p3, v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    nop

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v2

    :cond_2
    const/16 v5, 0x100

    if-ne p3, v5, :cond_3

    :try_start_2
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    nop

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v2

    :cond_3
    const/16 v5, 0x1005

    if-eq p3, v5, :cond_6

    const/16 v5, 0x36

    if-ne p3, v5, :cond_4

    goto :goto_1

    :cond_4
    :try_start_3
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v6

    :cond_5
    :goto_0
    goto :goto_2

    :cond_6
    :goto_1
    nop

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v2

    :cond_7
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_5
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension capture latency! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :goto_2
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    return-object v2

    :goto_3
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x36 -> :sswitch_0
        0x100 -> :sswitch_0
        0x1005 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getExtensionSupportedSizes(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getExtensionSupportedSizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_8

    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Unsupported format: "

    if-eqz v3, :cond_0

    sparse-switch p2, :sswitch_data_0

    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :sswitch_0
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :goto_0
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/16 v3, 0x23

    if-ne p2, v3, :cond_2

    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v4

    :cond_1
    :try_start_6
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    return-object v4

    :cond_2
    const/16 v3, 0x100

    if-ne p2, v3, :cond_4

    nop

    :try_start_8
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    return-object v4

    :cond_3
    :try_start_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    return-object v4

    :cond_4
    const/16 v3, 0x1005

    if-eq p2, v3, :cond_6

    const/16 v3, 0x36

    if-ne p2, v3, :cond_5

    goto :goto_1

    :cond_5
    :try_start_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    return-object v3

    :cond_7
    :try_start_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_f
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    throw v2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CameraExtensionCharacteristics"

    const-string v2, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x36 -> :sswitch_0
        0x100 -> :sswitch_0
        0x1005 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getExtensionSupportedSizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3

    const/16 v4, 0x22

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v4

    :cond_1
    nop

    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v4

    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v3

    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getKeys(I)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getKeys:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCharacteristicsKeyValues(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v5

    :cond_0
    :try_start_1
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CHARACTERISTICS_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    if-eqz v5, :cond_2

    new-instance v6, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v6, v4}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const-class v7, Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object v8, v7

    check-cast v8, Ljava/lang/Class;

    const-class v9, Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v8, v5, v10}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v9, Landroid/hardware/camera2/CameraExtensionCharacteristics;->SUPPORTED_SYNTHETIC_CAMERA_CHARACTERISTICS:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "android.request.availableCharacteristicsKeys must be non-null in the characteristics"

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_3
    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension for all available keys! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :goto_1
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    :goto_2
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v3

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getPostviewSupportedSizes(ILandroid/util/Size;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#getPostviewSupportedSizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/Size;-><init>()V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->width:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->height:I

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMap:Ljava/util/Map;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Unsupported format: "

    if-eqz v4, :cond_0

    sparse-switch p3, :sswitch_data_0

    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :sswitch_0
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v4, v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v5

    :goto_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v9, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v6, v7, v8}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isPostviewAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x23

    if-ne p3, v6, :cond_1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v5

    :cond_1
    const/16 v6, 0x100

    if-ne p3, v6, :cond_2

    :try_start_3
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedPostviewResolutions(Landroid/hardware/camera2/extension/Size;)Ljava/util/List;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v5

    :cond_2
    const/16 v6, 0x1005

    if-eq p3, v6, :cond_4

    const/16 v6, 0x36

    if-ne p3, v6, :cond_3

    goto :goto_1

    :cond_3
    :try_start_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v5

    :cond_5
    :try_start_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Extension does not support postview feature"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_6
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension postview supported sizes! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return-object v3

    :goto_2
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v2

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x36 -> :sswitch_0
        0x100 -> :sswitch_0
        0x1005 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getSupportedExtensions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Binder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraExtensionCharacteristics#getSupportedExtensions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/util/IntArray;

    sget-object v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    array-length v3, v3

    invoke-direct {v2, v3}, Landroid/util/IntArray;-><init>(I)V

    sget-object v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->addAll([I)V

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->concertModeApi()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    :cond_0
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    :try_start_0
    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v7, v1, v6, v8, v9}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v9, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v8, v6, v9}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v7, v1, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v6}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v3

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public whitelist isCaptureProcessProgressAvailable(I)Z
    .locals 7

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#isCaptureProcessProgressAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isCaptureProcessProgressAvailable()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return v3

    :cond_0
    nop

    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isCaptureProcessProgressAvailable()Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return v3

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension progress callbacks! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    const/4 v2, 0x0

    return v2

    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist isPostviewAvailable(I)Z
    .locals 7

    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraExtensionCharacteristics#isPostviewAvailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v1, v0, p1, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILjava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isPostviewAvailable()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return v3

    :cond_0
    nop

    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCharacteristicsMapNative:Ljava/util/Map;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-interface {v3, v4, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isPostviewAvailable()Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    return v3

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension for postview availability! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    nop

    const/4 v2, 0x0

    return v2

    :goto_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(Landroid/content/Context;Landroid/os/IBinder;I)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
