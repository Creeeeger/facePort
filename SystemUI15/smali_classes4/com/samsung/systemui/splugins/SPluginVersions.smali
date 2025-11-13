.class public Lcom/samsung/systemui/splugins/SPluginVersions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final MODULE_SLIMINDICATOR:Ljava/lang/String; = "slimindicator"

.field public static PLATFORM_VERSION_MULTISTAR:I = 0x0

.field public static PLATFORM_VERSION_NAVILLERA:I = 0x0

.field public static PLATFORM_VERSION_NOTISTAR:I = 0x0

.field public static PLATFORM_VERSION_PLUGIN_LOCK:I = 0x0

.field public static PLATFORM_VERSION_SLIMINDICATOR:I = 0x0

.field public static PLATFORM_VERSION_VOLUME_STAR:I = 0x0

.field private static final VERSION_MULTISTAR:I = 0x2328

.field private static final VERSION_NAVILLERA:I = 0x2710

.field private static final VERSION_NOTISTAR:I = 0x1f41

.field private static final VERSION_PLUGIN_LOCK:I = 0xfa3

.field private static final VERSION_SLIMINDICATOR:I = 0x1f40

.field private static final VERSION_SPLUGINMANAGER:I = 0x44d

.field private static final VERSION_VOLUME_STAR:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initVersion()V
    .locals 1

    const/16 v0, 0x1f40

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    const/16 v0, 0x2710

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NAVILLERA:I

    const/16 v0, 0xfa3

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_PLUGIN_LOCK:I

    const/16 v0, 0x1f41

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    const/16 v0, 0xbb8

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_VOLUME_STAR:I

    const/16 v0, 0x2328

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTISTAR:I

    return-void
.end method
