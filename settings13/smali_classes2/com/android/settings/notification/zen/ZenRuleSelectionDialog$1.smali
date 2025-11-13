.class Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->bindType(Lcom/android/settings/notification/zen/ZenRuleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;

.field final synthetic val$ri:Lcom/android/settings/notification/zen/ZenRuleInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;Lcom/android/settings/notification/zen/ZenRuleInfo;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 142
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;->val$ri:Lcom/android/settings/notification/zen/ZenRuleInfo;

    iget-boolean p1, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->isSystem:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 143
    sget p1, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    throw v0

    .line 145
    :cond_0
    sget p1, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$1;->this$0:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    throw v0
.end method
