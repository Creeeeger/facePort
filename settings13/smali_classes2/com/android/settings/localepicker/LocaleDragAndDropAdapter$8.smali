.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 686
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmFeedItemList(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 687
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->-$$Nest$fgetmFeedItemList(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 688
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$8;->val$li:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p1, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateSelectBoxState(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    :cond_0
    return-void
.end method
