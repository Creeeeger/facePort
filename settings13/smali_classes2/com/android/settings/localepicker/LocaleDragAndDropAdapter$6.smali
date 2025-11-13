.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 703
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fputmTempAddLocaleId(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/lang/String;)V

    .line 704
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fputmShowingAddDialog(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Z)V

    .line 705
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 706
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$6;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method
