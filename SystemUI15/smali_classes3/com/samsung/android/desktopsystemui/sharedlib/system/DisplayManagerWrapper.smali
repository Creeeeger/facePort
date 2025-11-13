.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public setBrightness(IF)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    return-void
.end method

.method public setTempBrightness(IF)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/DisplayManagerWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    return-void
.end method
