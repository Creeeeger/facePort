.class Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$mremoveAppOnSelectArea(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 287
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$4;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
