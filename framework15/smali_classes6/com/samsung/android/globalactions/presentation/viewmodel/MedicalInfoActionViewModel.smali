.class public Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;
.super Ljava/lang/Object;
.source "MedicalInfoActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# static fields
.field public static final blacklist DISPLAY_CATEGORY_BUILTIN:Ljava/lang/String; = "com.samsung.android.hardware.display.category.BUILTIN"


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method


# virtual methods
.method public blacklist getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public blacklist onPress()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    array-length v4, v1

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_2

    aget-object v7, v1, v5

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-ne v8, v6, :cond_1

    move-object v3, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    const-string v7, "com.samsung.android.app.telephonyui.action.OPEN_EMERGENCY_DIALER_COVER_SCREEN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "launchMedicalInfo"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string v7, "com.samsung.android.app.telephonyui.action.OPEN_MEDICAL_INFO"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const v7, 0x10008000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "from_global_action"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v4, v8, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v0, v6}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v10, "Emergency SOS"

    const-wide/16 v11, 0x9

    const-string v8, "611"

    const-string v9, "6111"

    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public blacklist setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/MedicalInfoActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method
