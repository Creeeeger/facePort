.class Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$1;
.super Ljava/lang/Object;
.source "SwitchForIndividualAppsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 397
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$1;->this$1:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$1;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$SwitchableAppsAdapter$1;->val$viewHolder:Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/SwitchForIndividualAppsSettings$AppViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
