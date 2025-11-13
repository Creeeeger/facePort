.class Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "VibPickerListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, v0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fputmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;I)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->mRadioTextView:Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getCategory()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Custom"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmListener(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$ViewHolder;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->-$$Nest$fgetmSelectedItemPosition(Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;)I

    move-result p0

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getPattern()I

    move-result v0

    invoke-interface {v1, p1, p0, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;->onItemSelected(Landroid/view/View;II)V

    :cond_1
    return-void
.end method
