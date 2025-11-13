.class Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;
.super Ljava/lang/Object;
.source "MobileDataOnlySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

.field final synthetic val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;->this$0:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;->val$viewHolder:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
