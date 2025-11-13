.class public final synthetic Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/notification/app/ImportancePreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ImportancePreference;Landroidx/preference/PreferenceViewHolder;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ImportancePreference;

    iput-object p2, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ImportancePreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p1, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p1, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/app/ImportancePreference;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ImportancePreference;

    iget-object p0, p0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/settings/notification/app/ImportancePreference;->mAlertButton:Landroid/view/View;

    iget-object v2, p1, Lcom/android/settings/notification/app/ImportancePreference;->unselectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/settings/notification/app/ImportancePreference;->mSilenceButton:Landroid/view/View;

    iget-object v2, p1, Lcom/android/settings/notification/app/ImportancePreference;->selectedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/settings/notification/app/ImportancePreference;->setImportanceSummary(Landroid/view/ViewGroup;IZ)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/notification/app/ImportancePreference$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/app/ImportancePreference;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
