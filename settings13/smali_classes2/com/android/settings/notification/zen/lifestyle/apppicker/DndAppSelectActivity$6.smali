.class Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$6;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$6;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$6;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmSelectAllCheckBox(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 306
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$6;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
