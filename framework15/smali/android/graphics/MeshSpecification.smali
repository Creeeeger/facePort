.class public Landroid/graphics/MeshSpecification;
.super Ljava/lang/Object;
.source "MeshSpecification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/MeshSpecification$Attribute;,
        Landroid/graphics/MeshSpecification$Varying;,
        Landroid/graphics/MeshSpecification$MeshSpecificationHolder;,
        Landroid/graphics/MeshSpecification$Type;,
        Landroid/graphics/MeshSpecification$AlphaType;
    }
.end annotation


# static fields
.field public static final whitelist ALPHA_TYPE_OPAQUE:I = 0x1

.field public static final whitelist ALPHA_TYPE_PREMULTIPLIED:I = 0x2

.field public static final whitelist ALPHA_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist ALPHA_TYPE_UNPREMULTIPLIED:I = 0x3

.field public static final whitelist TYPE_FLOAT:I = 0x0

.field public static final whitelist TYPE_FLOAT2:I = 0x1

.field public static final whitelist TYPE_FLOAT3:I = 0x2

.field public static final whitelist TYPE_FLOAT4:I = 0x3

.field public static final whitelist TYPE_UBYTE4:I = 0x4


# instance fields
.field blacklist mNativeMeshSpec:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/MeshSpecification;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/MeshSpecification;->mNativeMeshSpec:J

    sget-object v0, Landroid/graphics/MeshSpecification$MeshSpecificationHolder;->MESH_SPECIFICATION_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method public static whitelist make([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/MeshSpecification;
    .locals 4

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/MeshSpecification;->nativeMake([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/MeshSpecification;

    invoke-direct {v2, v0, v1}, Landroid/graphics/MeshSpecification;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MeshSpecification construction failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist make([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;)Landroid/graphics/MeshSpecification;
    .locals 7

    nop

    invoke-virtual {p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/MeshSpecification;->nativeMakeWithCS([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/MeshSpecification;

    invoke-direct {v2, v0, v1}, Landroid/graphics/MeshSpecification;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MeshSpecification construction failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist make([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorSpace;I)Landroid/graphics/MeshSpecification;
    .locals 8

    nop

    invoke-virtual {p5}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/MeshSpecification;->nativeMakeWithAlpha([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/MeshSpecification;

    invoke-direct {v2, v0, v1}, Landroid/graphics/MeshSpecification;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "MeshSpecification construction failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static native blacklist nativeGetFinalizer()J
.end method

.method private static native blacklist nativeMake([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native blacklist nativeMakeWithAlpha([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;JI)J
.end method

.method private static native blacklist nativeMakeWithCS([Landroid/graphics/MeshSpecification$Attribute;I[Landroid/graphics/MeshSpecification$Varying;Ljava/lang/String;Ljava/lang/String;J)J
.end method
