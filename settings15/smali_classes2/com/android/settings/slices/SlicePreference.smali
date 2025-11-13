.class public Lcom/android/settings/slices/SlicePreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mSliceView:Landroidx/slice/widget/SliceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0405b6

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicePreference;->init$18()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/settings/slices/SlicePreference;->init$18()V

    return-void
.end method


# virtual methods
.method public final init$18()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0e89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->setShowTitleItems()V

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceView;->setScrollable()V

    iget-object p0, p0, Lcom/android/settings/slices/SlicePreference;->mSliceView:Landroidx/slice/widget/SliceView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
