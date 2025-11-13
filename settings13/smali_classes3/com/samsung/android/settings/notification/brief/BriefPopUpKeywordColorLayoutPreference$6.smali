.class Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;
.super Ljava/lang/Object;
.source "BriefPopUpKeywordColorLayoutPreference.java"

# interfaces
.implements Landroidx/picker3/app/SeslColorPickerDialog$OnColorSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSet(I)V
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetTAG(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text Color set Listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->setRecentlyUsedColor(Landroid/content/Context;I)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmSelectTextColorButton(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmSelectTextColorButton(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$mupdateAppCustomColorIcon(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Landroid/widget/Button;I)V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmCustomTextFilterList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmSelectTextColorButton(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpUtils;->saveCustomTextColor(Landroid/content/Context;Ljava/lang/String;I)V

    .line 594
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmMainText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmMainText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmCustomTextFilterList(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmSelectTextColorButton(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->customViewHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->resetCustomView:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    sget-object p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->customViewHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$6;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->resetCustomView:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
