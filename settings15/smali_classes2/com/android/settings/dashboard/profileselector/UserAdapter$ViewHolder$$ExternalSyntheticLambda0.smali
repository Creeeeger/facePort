.class public final synthetic Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;

.field public final synthetic f$1:Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;

    iput-object p2, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;->onClick(I)V

    return-void
.end method
