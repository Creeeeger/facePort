.class public final Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/draw/BuildDrawCacheParams;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

.field public static final density:Landroidx/compose/ui/unit/DensityImpl;

.field public static final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public static final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

    invoke-direct {v0}, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;-><init>()V

    sput-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->INSTANCE:Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;

    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/geometry/Size;->Unspecified:J

    sput-wide v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->size:J

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    sput-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    sput-object v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->density:Landroidx/compose/ui/unit/DensityImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    sget-object p0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->density:Landroidx/compose/ui/unit/DensityImpl;

    return-object p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    sget-object p0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getSize-NH-jbRc()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/draw/EmptyBuildDrawCacheParams;->size:J

    return-wide v0
.end method
