.class public final Landroidx/preference/PreferenceFragmentCompat$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$4;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 9

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$4;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v1, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x140

    const/4 v5, 0x1

    if-gt v3, v4, :cond_0

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    const/16 v4, 0x19b

    if-ge v3, v4, :cond_2

    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    const v6, 0x3fa66666    # 1.3f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    instance-of v6, v1, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroidx/preference/PreferenceFragmentCompat$4;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    move-object v7, v1

    check-cast v7, Landroidx/preference/PreferenceGroupAdapter;

    iget v8, v6, Landroidx/preference/PreferenceFragmentCompat;->mIsLargeLayout:I

    if-ne v4, v8, :cond_3

    if-ne v4, v5, :cond_5

    iget v5, v6, Landroidx/preference/PreferenceFragmentCompat;->mScreenWidthDp:I

    if-ne v5, v3, :cond_3

    iget v3, v7, Landroidx/preference/PreferenceGroupAdapter;->mParentWidth:I

    if-nez v3, :cond_5

    :cond_3
    iput v4, v6, Landroidx/preference/PreferenceFragmentCompat;->mIsLargeLayout:I

    move v3, v2

    :goto_1
    iget-object v4, v7, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v7, v3}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Landroidx/preference/PreferenceGroupAdapter;->isSwitchLayout(Landroidx/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v4, v4, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$4;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, v1, Landroidx/preference/PreferenceFragmentCompat;->mScreenWidthDp:I

    iget-object v0, v1, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$4;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_6
    return v2
.end method
