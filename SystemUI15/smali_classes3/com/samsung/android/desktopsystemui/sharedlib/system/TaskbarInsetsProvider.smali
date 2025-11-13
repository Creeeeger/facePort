.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;


# instance fields
.field private final mInsetsSourceOwner:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    return-void
.end method

.method private getInsetsFrameProvider(I)[Landroid/view/InsetsFrameProvider;
    .locals 6

    new-instance v0, Landroid/view/InsetsFrameProvider;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 p0, 0x1

    new-array v1, p0, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    new-instance v3, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v4, 0x7db

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-static {v2, v2, v2, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_0
    new-array p0, p0, [Landroid/view/InsetsFrameProvider;

    aput-object v0, p0, v2

    return-object p0
.end method

.method private getInsetsFrameProviderWithGesture(I)[Landroid/view/InsetsFrameProvider;
    .locals 7

    new-instance v0, Landroid/view/InsetsFrameProvider;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    new-instance v4, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v5, 0x7db

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-static {v3, v3, v3, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_0
    new-instance p1, Landroid/view/InsetsFrameProvider;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v2

    invoke-direct {p1, p0, v3, v2}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/view/InsetsFrameProvider;

    aput-object v0, p0, v3

    aput-object p1, p0, v1

    return-object p0
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;

    return-object v0
.end method


# virtual methods
.method public setProvidedInsets(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->getInsetsFrameProvider(I)[Landroid/view/InsetsFrameProvider;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    return-void
.end method

.method public setProvidedInsetsWithGesture(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskbarInsetsProvider;->getInsetsFrameProviderWithGesture(I)[Landroid/view/InsetsFrameProvider;

    move-result-object p0

    iput-object p0, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    return-void
.end method
