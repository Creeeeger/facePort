.class public final Landroidx/preference/PreferenceFragmentCompat$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceFragmentCompat;

.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$5;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$5;->val$preference:Landroidx/preference/Preference;

    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$5;->val$key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$5;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceGroupAdapter;

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Adapter must implement PreferencePositionCallback"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$5;->val$preference:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceGroupAdapter;

    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$5;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$5;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$5;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v2, v2, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat$5;->val$preference:Landroidx/preference/Preference;

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$5;->val$key:Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v1, v4, v2, v3, p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :goto_1
    return-void
.end method
