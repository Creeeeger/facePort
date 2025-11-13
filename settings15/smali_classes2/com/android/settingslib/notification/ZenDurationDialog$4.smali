.class public final Lcom/android/settingslib/notification/ZenDurationDialog$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

.field public final synthetic val$row:Landroid/view/View;

.field public final synthetic val$rowIndex:I

.field public final synthetic val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/notification/ZenDurationDialog;Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;II)V
    .locals 0

    iput p5, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iput-object p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$row:Landroid/view/View;

    iput-object p3, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    iput p4, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$rowIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$row:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    iget v2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$rowIndex:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/settingslib/notification/ZenDurationDialog;->onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;ZI)V

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$row:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$rowIndex:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/settingslib/notification/ZenDurationDialog;->onClickTimeButton(Landroid/view/View;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;ZI)V

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$4;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    iget-object p0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->lines:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
