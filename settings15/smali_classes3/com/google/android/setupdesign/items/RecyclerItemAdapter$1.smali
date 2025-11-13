.class public final Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

.field public final synthetic val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/ItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    iput-object p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/google/android/setupdesign/items/ItemViewHolder;

    iget-object p1, p1, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;->this$0:Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-void
.end method
