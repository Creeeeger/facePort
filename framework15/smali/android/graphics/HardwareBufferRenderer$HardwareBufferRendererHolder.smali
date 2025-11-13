.class Landroid/graphics/HardwareBufferRenderer$HardwareBufferRendererHolder;
.super Ljava/lang/Object;
.source "HardwareBufferRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareBufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HardwareBufferRendererHolder"
.end annotation


# static fields
.field public static final blacklist REGISTRY:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/graphics/HardwareBufferRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/HardwareBufferRenderer;->-$$Nest$smnGetFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/HardwareBufferRenderer$HardwareBufferRendererHolder;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
