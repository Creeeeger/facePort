.class Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;
.super Ljava/lang/Object;
.source "SecZenScheduleRepeatButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->inflateRepeatBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

.field final synthetic val$buttonNumber:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;I)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iput p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 247
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const-string v0, ","

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, "ZenScheduleRepeatButton"

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRepeatBtn[buttonNumber].isChecked() - true, buttonNumber = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatAnimatingView(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$DrawRepeatCircleView;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v2, v4}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    add-int/2addr v5, v4

    invoke-static {v3, v5, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getDayOfWeekString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->nfc_radiobtn_select:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRepeatBtn[buttonNumber].isChecked() - false, buttonNumber = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    iget v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->setSelectionMarkAnimator(IZ)V

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmRepeatBtn(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)[Landroid/widget/ToggleButton;

    move-result-object p1

    iget v2, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    aget-object p1, p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->val$buttonNumber:I

    add-int/2addr v5, v4

    invoke-static {v3, v5, v1}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->getDayOfWeekString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->nfc_radiobtn_not_select:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 260
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton$2;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;->-$$Nest$mclickRepeatButton(Lcom/samsung/android/settings/notification/zen/SecZenScheduleRepeatButton;)V

    return-void
.end method
