.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Landroidx/apppickerview/widget/AppPickerView$OnBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
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

    .line 577
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 7

    .line 581
    iget-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/List;

    move-result-object p2

    monitor-enter p2

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    .line 583
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSwitch()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    .line 584
    new-instance v2, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;-><init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;)V

    .line 586
    instance-of v3, p1, Landroidx/apppickerview/widget/AppPickerView$HeaderViewHolder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 587
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getAppLabel()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/content/Context;

    move-result-object v3

    .line 588
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settings/R$string;->full_screen_apps_show_type_all:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 587
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 591
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsCheckedChangeListener(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 593
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_2
    if-eqz v0, :cond_c

    .line 597
    iget v0, v0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mType:I

    const/16 v2, 0x8

    if-ne v0, v4, :cond_7

    .line 598
    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 599
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    iget-boolean v0, p1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirst:Z

    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 602
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result p3

    add-int/2addr p3, v4

    invoke-static {p1, p3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V

    goto :goto_5

    .line 605
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move p1, v5

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v4

    .line 606
    :goto_4
    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 609
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result p3

    add-int/2addr p3, v4

    invoke-static {p1, p3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;I)V

    .line 613
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmValidItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result p1

    iget-object p3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEnabledCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result p3

    if-ne p1, p3, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 614
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1, v4}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    .line 615
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    const-string p3, "all_apps"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    goto/16 :goto_7

    :cond_7
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 619
    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 620
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    iget-boolean v0, p1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->mIsFirst:Z

    if-eqz v0, :cond_8

    .line 622
    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 623
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1, v5}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    .line 625
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    const-string p3, "all_apps"

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    goto :goto_7

    .line 628
    :cond_8
    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    move v4, v5

    .line 629
    :cond_a
    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 630
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$7;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 633
    :cond_b
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 634
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 635
    invoke-virtual {p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;->getSummary()Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->full_screen_apps_doesnt_support_resizing:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 638
    :cond_c
    :goto_7
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
