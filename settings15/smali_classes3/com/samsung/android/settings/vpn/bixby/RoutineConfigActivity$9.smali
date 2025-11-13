.class public final Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

.field public final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic val$vpnProfiles:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;Landroidx/appcompat/app/AlertDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;->val$vpnProfiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;->this$0:Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity$9;->val$vpnProfiles:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/net/VpnProfile;

    iget-object p0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/settings/vpn/bixby/RoutineConfigActivity;->mSelectedProfileKey:Ljava/lang/String;

    return-void
.end method
