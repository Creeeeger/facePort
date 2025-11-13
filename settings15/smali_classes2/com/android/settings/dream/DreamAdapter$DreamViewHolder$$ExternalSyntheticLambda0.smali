.class public final synthetic Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;

.field public final synthetic f$1:Lcom/android/settings/dream/DreamPickerController$DreamItem;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;Lcom/android/settings/dream/DreamPickerController$DreamItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;

    iput-object p2, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/dream/DreamPickerController$DreamItem;

    iput p3, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;

    iget-object v0, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/dream/DreamPickerController$DreamItem;

    iget p0, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->this$0:Lcom/android/settings/dream/DreamPickerController;

    iget-object v0, v0, Lcom/android/settings/dream/DreamPickerController$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-static {v1, v0}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fputmActiveDream(Lcom/android/settings/dream/DreamPickerController;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    invoke-static {v1}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fgetmBackend(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    invoke-static {v1}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fgetmCallbacks(Lcom/android/settings/dream/DreamPickerController;)Ljava/util/HashSet;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dream/DreamPickerController$DreamItem$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v1}, Lcom/android/settings/dream/DreamPickerController;->-$$Nest$fgetmMetricsFeatureProvider(Lcom/android/settings/dream/DreamPickerController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v4

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    const/16 v6, 0x6fc

    const/16 v7, 0x2f

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    iget-object p1, p1, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->this$0:Lcom/android/settings/dream/DreamAdapter;

    iget v0, p1, Lcom/android/settings/dream/DreamAdapter;->mLastSelectedPos:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
