.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final mUiModeManager:Landroid/app/UiModeManager;

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public setNightModeActivated(Z)V
    .locals 0

    sget-object p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/UiModeManagerWrapper;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    return-void
.end method
