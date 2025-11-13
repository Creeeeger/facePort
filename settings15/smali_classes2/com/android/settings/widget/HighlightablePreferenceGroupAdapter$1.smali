.class public final Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

.field public final synthetic val$holder:Landroidx/preference/PreferenceViewHolder;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;Landroid/view/View;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iput-object p2, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->this$0:Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;

    iget v0, v0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter$1;->val$holder:Landroidx/preference/PreferenceViewHolder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    return-void
.end method
