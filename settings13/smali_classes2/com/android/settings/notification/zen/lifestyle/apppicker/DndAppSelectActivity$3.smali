.class Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$3;
.super Ljava/lang/Object;
.source "DndAppSelectActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$3;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity$3;->this$0:Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;->-$$Nest$mselectEditMenuItem(Lcom/android/settings/notification/zen/lifestyle/apppicker/DndAppSelectActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
