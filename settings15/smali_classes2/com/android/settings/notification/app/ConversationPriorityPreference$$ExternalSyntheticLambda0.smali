.class public final synthetic Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ConversationPriorityPreference;Landroidx/preference/PreferenceViewHolder;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

    iput-object p2, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1, v1}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(ILandroid/view/ViewGroup;ZZ)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(ILandroid/view/ViewGroup;ZZ)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ConversationPriorityPreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationPriorityPreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v0, v2}, Lcom/android/settings/notification/app/ConversationPriorityPreference;->updateToggles(ILandroid/view/ViewGroup;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
