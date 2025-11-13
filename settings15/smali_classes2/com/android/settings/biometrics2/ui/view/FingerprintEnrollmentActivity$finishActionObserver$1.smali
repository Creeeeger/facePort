.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 12

    const-string v0, "skip-setup-dialog"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    iget p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startEnrollingFragment()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog;

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/view/SkipSetupFindFpsDialog;-><init>()V

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, v1, v2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v4, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v1, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto/16 :goto_2

    :cond_5
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, v2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v4, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    goto/16 :goto_2

    :cond_6
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, v1, v2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v4, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    goto/16 :goto_2

    :cond_7
    new-instance p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingIconTouchDialog;

    invoke-direct {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingIconTouchDialog;-><init>()V

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object p0

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isNewFingerprintAdded:Z

    if-nez v0, :cond_9

    iput-boolean v3, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->isNewFingerprintAdded:Z

    :cond_9
    iget-object p0, v4, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->finishViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFinishViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, v4, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->finishActionObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$finishActionObserver$1;

    invoke-virtual {p0, v4, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean p0, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSkipFindSensor:Z

    const v0, 0x7f0a06ab

    const v1, 0x7f0100d0

    const v5, 0x7f0100cf

    const v6, 0x7f0100d3

    const v7, 0x7f0100d2

    const-string v8, "finish"

    if-eqz p0, :cond_a

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-static {p0, p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object p0

    iput-boolean v3, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iput v7, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    iput v6, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    iput v5, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    iput v1, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    const-class v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;

    invoke-virtual {p0, v0, v1, v2, v8}, Landroidx/fragment/app/BackStackRecord;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    const/4 v9, -0x1

    if-eqz p0, :cond_b

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    invoke-direct {v10, p0, v8, v9, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v10, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    :cond_b
    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object p0

    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object v10

    iget-object v10, v10, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget v10, v10, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v11

    if-eqz v11, :cond_c

    iget v11, v11, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    goto :goto_1

    :cond_c
    move v11, p1

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getNumOfEnrolledFingerprintsSize(I)I

    move-result p0

    if-gt v11, p0, :cond_d

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v10, "find-sensor"

    invoke-virtual {p0, v10}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    invoke-direct {v11, p0, v10, v9, v3}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {p0, v11, p1}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    :cond_d
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-static {p0, p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object p0

    iput-boolean v3, p0, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    iput v7, p0, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    iput v6, p0, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    iput v5, p0, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    iput v1, p0, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    const-class v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFinishFragment;

    invoke-virtual {p0, v0, v1, v2, v8}, Landroidx/fragment/app/BackStackRecord;->replace(ILjava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_e
    :goto_2
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    if-eqz p0, :cond_11

    if-eq p0, v3, :cond_f

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_f
    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->request:Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;

    iget-boolean p0, p0, Lcom/android/settings/biometrics2/ui/model/EnrollmentRequest;->isSuw:Z

    if-eqz p0, :cond_10

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;

    move-result-object p0

    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->getAutoCredentialViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/AutoCredentialViewModel;->credentialModel:Lcom/android/settings/biometrics2/ui/model/CredentialModel;

    iget p1, p1, Lcom/android/settings/biometrics2/ui/model/CredentialModel;->userId:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollmentViewModel;->fingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getNumOfEnrolledFingerprintsSize(I)I

    move-result p0

    const-string p1, "fingerprint_enrolled_count"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_10
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, v3, v2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v4, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    goto :goto_3

    :cond_11
    invoke-virtual {v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startEnrollingFragment()V

    :cond_12
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
