.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchOnPreferenceChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

.field final synthetic this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 722
    iput-object p2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    .line 727
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$msetContinuityModePackage(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 729
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    iput v0, v1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mType:I

    goto :goto_0

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    const/4 v2, 0x2

    iput v2, v1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mType:I

    .line 733
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    iget-object v2, v2, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 736
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Z

    move-result p1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_6

    const-string p1, "all_apps"

    if-eqz p2, :cond_5

    .line 739
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 740
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 741
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 744
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-nez v3, :cond_1

    :cond_4
    if-eqz v3, :cond_6

    .line 749
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmValidItemCount(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 750
    iget-object v2, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    .line 751
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    goto :goto_3

    .line 755
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fputmAllAppsUiChecked(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Z)V

    .line 756
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmStateMap(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    .line 761
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    iget-object p1, p1, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mFamilyAppsName:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v0, ","

    .line 762
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 763
    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_8

    aget-object v2, p1, v1

    if-eqz v2, :cond_7

    .line 765
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 767
    iget-object v3, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v3, v2, p2}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$msetContinuityModePackage(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;Ljava/lang/String;Z)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    .line 775
    iget-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->getMetricsCategory()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1d05

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$SwitchOnPreferenceChangeListener;->mRow:Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;

    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
