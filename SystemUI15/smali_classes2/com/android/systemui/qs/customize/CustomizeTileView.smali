.class public final Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public showAppLabel:Z

.field public showSideView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;-><init>(Landroid/content/Context;ZLcom/android/systemui/haptics/qs/QSLongPressEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showSideView:Z

    return-void
.end method


# virtual methods
.method public final animationsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showSideView:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    move-object v2, p0

    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final isLongClickable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
