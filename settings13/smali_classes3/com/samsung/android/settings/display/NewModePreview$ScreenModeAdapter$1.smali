.class Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 592
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result p1

    .line 593
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->getPositionFromValue(J)I

    move-result v0

    .line 594
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 596
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getAccessibilityVisionMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 597
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->blue_light_disable_reason:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    sget p1, Lcom/android/settings/R$string;->sec_screen_mode_setting:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 598
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v5, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->setChecked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 602
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "blue_light_filter"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v4, "ModePreview"

    if-eqz v1, :cond_3

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isBlueLightFilterOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " currentValue: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    if-eq p1, v0, :cond_2

    .line 606
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$mshowBluelightfilterToast(Lcom/samsung/android/settings/display/NewModePreview;I)V

    :cond_2
    return-void

    .line 610
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->getValue()I

    move-result p1

    const-string v0, "screen_mode_setting"

    const-string v1, "screen_mode_automatic_setting"

    const/4 v5, 0x4

    if-ne p1, v5, :cond_5

    .line 612
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportColorBalance()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 613
    iget-object v6, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v6, v6, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v6}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmVividContainer(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 614
    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setWhiteBalanceEnable(Z)V

    .line 616
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 619
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$fgetmVividContainer(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setWhiteBalanceEnable(Z)V

    .line 621
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x107a

    iget v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick setScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/NewModePreview;->-$$Nest$msetScreenMode(Lcom/samsung/android/settings/display/NewModePreview;I)V

    return-void
.end method
