.class public Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;
.super Ljava/lang/Object;
.source "EmergencyCallActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field private blacklist mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final blacklist mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field private final blacklist mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

.field private final blacklist mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/SystemController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "globalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;
    .param p3, "samsungGlobalActionsAnalytics"    # Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;
    .param p4, "systemController"    # Lcom/samsung/android/globalactions/util/SystemController;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 34
    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 36
    const-string/jumbo v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public blacklist onPress()V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14800000

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    .line 59
    const-string v2, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "emergencyDialIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 64
    .local v1, "options":Landroid/app/ActivityOptions;
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 65
    .local v2, "displayId":I
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 67
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    .line 68
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 67
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 70
    .end local v0    # "emergencyDialIntent":Landroid/content/Intent;
    .end local v1    # "options":Landroid/app/ActivityOptions;
    .end local v2    # "displayId":I
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    .line 71
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-wide/16 v6, 0x9

    const-string v3, "611"

    const-string v4, "6111"

    const-string v5, "Emergency SOS"

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 73
    return-void
.end method

.method public blacklist setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 47
    return-void
.end method
