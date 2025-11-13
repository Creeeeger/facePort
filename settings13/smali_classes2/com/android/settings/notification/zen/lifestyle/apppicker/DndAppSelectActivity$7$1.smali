.class Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;
.super Ljava/lang/Object;
.source "DndAppSelectActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;Ljava/lang/String;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;->this$1:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;

    iput-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 531
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;->this$1:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;

    iget-object p1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$fgetmViewModel(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectDataViewModel;->putChecked(Ljava/lang/String;Z)V

    .line 532
    iget-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;->this$1:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;

    iget-object p1, p1, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$7$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$maddAppOnSelectList(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Ljava/lang/String;Z)V

    return-void
.end method
