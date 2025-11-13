.class public Lcom/android/systemui/qs/SideLabelTileLayout;
.super Lcom/android/systemui/qs/TileLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isSmallLandscapeLockscreenEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/flags/RefactorFlag;->Companion:Lcom/android/systemui/flags/RefactorFlag$Companion;

    sget-object p2, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_ENABLE_LANDSCAPE:Lcom/android/systemui/flags/UnreleasedFlag;

    invoke-static {p1, p2}, Lcom/android/systemui/flags/RefactorFlag$Companion;->forView$default(Lcom/android/systemui/flags/RefactorFlag$Companion;Lcom/android/systemui/flags/UnreleasedFlag;)Lcom/android/systemui/flags/RefactorFlag;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/flags/RefactorFlag;->isEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/SideLabelTileLayout;->isSmallLandscapeLockscreenEnabled:Z

    return-void
.end method


# virtual methods
.method public final updateMaxRows(II)Z
    .locals 3

    iget p1, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v0, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    iput v0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    iget v1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    add-int/2addr p2, v1

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    div-int/2addr p2, v1

    if-le v0, p2, :cond_0

    iput p2, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final updateResources()Z
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/SideLabelTileLayout;->isSmallLandscapeLockscreenEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    return v0
.end method
