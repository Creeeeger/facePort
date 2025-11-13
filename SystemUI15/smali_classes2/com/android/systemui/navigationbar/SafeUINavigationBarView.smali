.class public final Lcom/android/systemui/navigationbar/SafeUINavigationBarView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInsetsSourceOwner:Landroid/os/Binder;

.field public mView:Landroid/view/View;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final getBarLayoutParamsForRotation()Landroid/view/WindowManager$LayoutParams;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/16 v5, 0x7e3

    const v6, 0x20840068

    const/4 v7, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/view/InsetsFrameProvider;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    new-instance v7, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v8, 0x7db

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    move-result-object v3

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    invoke-static {v6, v6, v6, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x11101e9

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v3, v0, v4}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    new-instance v0, Landroid/view/InsetsFrameProvider;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v7

    invoke-direct {v0, v5, v6, v7}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11101eb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v2}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_1
    new-instance v2, Landroid/view/InsetsFrameProvider;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v7

    invoke-direct {v2, v5, v6, v7}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/InsetsFrameProvider;

    aput-object v3, v5, v6

    aput-object v0, v5, v4

    const/4 v0, 0x2

    aput-object v2, v5, v0

    new-instance v0, Landroid/view/InsetsFrameProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    invoke-direct {v0, v2, v6, v3}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v6}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v5, v2

    new-instance v0, Landroid/view/InsetsFrameProvider;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mInsetsSourceOwner:Landroid/os/Binder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v7

    invoke-direct {v0, v3, v4, v7}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v0, v6}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/InsetsFrameProvider;->setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v5, v3

    iput-object v5, v1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f130cdb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x1001000

    or-int/2addr v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SafeUINavigationBar"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    return-object v1
.end method
