.class public final synthetic Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;

    iget v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mFontStyleListView:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/samsung/android/settings/display/SecFontStylePreferenceFragment;->mCurrentFontIndex:I

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    sub-int/2addr p0, v2

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, p0, v2}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(III)V

    :cond_0
    return-void
.end method
