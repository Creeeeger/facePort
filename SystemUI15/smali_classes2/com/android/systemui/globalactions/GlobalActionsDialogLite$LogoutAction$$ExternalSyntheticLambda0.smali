.class public final synthetic Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LockDownAction;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LockDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    if-eq v4, v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->logoutUser()I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
