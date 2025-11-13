.class public final Lcom/android/systemui/volume/util/SystemServiceExtension;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/util/SystemServiceExtension;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/SystemServiceExtension;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;
    .locals 1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/hardware/display/DisplayManager;

    return-object p0
.end method
