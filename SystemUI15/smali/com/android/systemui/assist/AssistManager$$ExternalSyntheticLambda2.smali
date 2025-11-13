.class public final synthetic Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/widget/ArrayAdapter;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/assist/AssistManager;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ArrayAdapter;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/assist/AssistManager;->mAssistPopupPositiveClicked:Z

    iget-object v0, p1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    const-string v1, "AssistanceAppSettingAlreadySelected"

    invoke-static {v0, v1, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    check-cast p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    :goto_0
    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, ""

    iget v1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    if-eqz v1, :cond_4

    if-eq v1, p2, :cond_3

    const/4 p2, 0x2

    if-eq v1, p2, :cond_2

    move-object p0, v0

    move-object p2, p0

    move-object v8, p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v9, v0

    move-object v0, p2

    move-object p2, v9

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    move-object p0, p2

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistManager;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object p0

    const-string p2, "None"

    move-object v8, p0

    move-object p0, v0

    move-object v0, p2

    move-object p2, p0

    :goto_1
    new-instance v7, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda8;

    invoke-direct {v7, v0}, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/SemRoleManager;

    iget-object v2, p1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/SemRoleManager;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object p1, p1, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    const-string v2, "android.app.role.ASSISTANT"

    const/4 v4, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/app/SemRoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/SettingsHelper;->setAssistant(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p2}, Lcom/android/systemui/util/SettingsHelper;->setVoiceInteractionServiceAssistant(Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v8}, Lcom/android/systemui/util/SettingsHelper;->setVoiceRecognitionService(Ljava/lang/String;)V

    const-string p0, "980"

    const-string p1, "9801"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ArrayAdapter;

    monitor-enter p1

    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;

    iput p2, v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
