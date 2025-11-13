.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result v0

    if-eq v0, p2, :cond_5

    .line 553
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    .line 555
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmAllAppsChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V

    .line 560
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 561
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 562
    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eq v2, p2, :cond_1

    .line 563
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2, v1, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$msetContinuityModePackage(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 569
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    :cond_4
    iput-boolean v0, p1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirst:Z

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "All apps button clicked = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , mStateMap is empty = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    iget-boolean p2, p2, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirst:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FrontScreenAppsFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$6;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI()V

    :cond_5
    return-void
.end method
