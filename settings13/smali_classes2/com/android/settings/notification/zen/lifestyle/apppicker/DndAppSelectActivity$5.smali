.class Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;
.super Ljava/lang/Object;
.source "DndAppSelectActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->subscribeUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 293
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {v0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fputmSupportApps(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/util/List;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {v0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$msetAppListOnAppPickerView(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/util/List;)V

    .line 299
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmSearchQuery(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmSearchQuery(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$5;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmSearchQuery(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$mperformFiltering(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
