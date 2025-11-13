.class Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$11;
.super Ljava/lang/Object;
.source "RoutineConfigActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->showChooseVpnProfileDialog(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$11;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$11;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$11;->val$dialog:Landroid/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
