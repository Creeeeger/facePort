.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 p1, v1, 0x2

    rem-int/lit8 p1, p1, 0x4

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    iget v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotation:I

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotation:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string p1, "requireContext(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object v3

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v4, 0x7f0a0f61

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p1, 0x7f0a0e69

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, p0

    check-cast v5, Landroid/widget/Button;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->configLayout(Landroid/content/Context;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->updateProgress$2(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->updateTitleAndDescription$2()V

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->remaining:I

    sub-int p1, v0, p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/16 v0, 0x64

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f142a5f

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->sendAccessibilityEvent(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object p0

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    iget-boolean v0, p1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object p0

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    iget-boolean v0, p1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v1, p1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;->mSkipDraw:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    return-void

    :pswitch_3
    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "helpMessageObserver("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onEnrollmentHelp$2(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;)V

    :cond_6
    return-void

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canceledSignalObserver("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onEnrollmentCanceled enrolling:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", canceled:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    if-ne v0, p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCanceledSignalLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->clearProgressLiveData()V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mOnBackPressed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mOnBackPressed:Z

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mOnSkipPressed:Z

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mOnSkipPressed:Z

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    return-void

    :pswitch_5
    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorMessageObserver("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->cancelEnrollment$2(Z)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onEnrollmentError$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onEnrollmentError$1;-><init>(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_9
    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object p0

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mRemainingSteps:I

    const/4 v0, 0x2

    if-gt p1, v0, :cond_a

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    :goto_3
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
