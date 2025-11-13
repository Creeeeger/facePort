.class Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;
.super Ljava/lang/Object;
.source "SwitchForIndividualAppsSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

.field final synthetic val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 439
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    iget v0, v0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwitchForIndividualAppsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    iget v1, v1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->-$$Nest$misChecked(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;I)Z

    move-result p1

    if-eq p1, p2, :cond_1

    const-string p1, "onCheckedChanged changed"

    .line 441
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 443
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$fgetmSwitchEnabledUidList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    iget p2, p2, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 444
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$fgetmSwitchEnabledUidList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    iget p2, p2, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$msendListChangedBroadcast(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$fgetmSwitchEnabledUidList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    iget p2, p2, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$fgetmSwitchEnabledUidList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$fgetmSwitchEnabledUidList(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    iget v0, v0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 450
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$2;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;->this$0:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;->-$$Nest$msendListChangedBroadcast(Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings;)V

    :cond_1
    :goto_0
    return-void
.end method
