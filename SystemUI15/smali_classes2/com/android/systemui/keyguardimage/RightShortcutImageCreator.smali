.class public final Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;
.super Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0179

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a040f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getShortcutManager()Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->hasShortcut(I)Z

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->getShortcutManager()Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isMonotoneIcon(I)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutSideMargin()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Point;->x:I

    iget p1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isNowBarVisible:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getShortcutBottomMargin(Z)I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v0
.end method
