.class public final Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const-string v0, ""

    iput-object v0, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method
