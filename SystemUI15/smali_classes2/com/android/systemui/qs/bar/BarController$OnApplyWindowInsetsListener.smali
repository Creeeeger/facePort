.class public final Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/bar/BarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/qs/bar/BarController;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNavBarHeight(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget v1, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    if-eq v0, v1, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController;->mDisplayCutoutTopInset:I

    iput v0, p0, Lcom/android/systemui/qs/bar/BarController;->mNavBarHeight:I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-object p2
.end method
