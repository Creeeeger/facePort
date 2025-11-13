.class public final Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

.field public final synthetic val$buttonNumber:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const-string v0, ","

    const/4 v1, 0x0

    const-string v2, "ZenScheduleRepeatButton"

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "mRepeatBtn[buttonNumber].isChecked() - true, buttonNumber = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatAnimatingView:[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v2, v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getDayOfWeekString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const v2, 0x7f1419d2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "mRepeatBtn[buttonNumber].isChecked() - false, buttonNumber = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mRepeatBtn:[Landroid/widget/ToggleButton;

    iget v1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v2, v2, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getDayOfWeekString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->mContext:Landroid/content/Context;

    const v2, 0x7f1419d1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->clickRepeatButton()V

    return-void
.end method
