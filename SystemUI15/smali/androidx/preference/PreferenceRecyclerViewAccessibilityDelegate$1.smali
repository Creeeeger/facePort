.class public final Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    iget-object p0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object p0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    instance-of p2, p0, Landroidx/preference/PreferenceGroupAdapter;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object p0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
