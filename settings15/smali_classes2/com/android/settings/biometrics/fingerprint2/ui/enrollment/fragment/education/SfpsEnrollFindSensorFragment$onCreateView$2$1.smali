.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $view:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->$view:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "$footerBarMixin"

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->$view:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f142a5b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const v1, 0x7f15045d

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    const p1, 0x7f130023

    goto :goto_0

    :cond_0
    const p1, 0x7f130025

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f130021

    goto :goto_0

    :cond_2
    const p1, 0x7f130026

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const p1, 0x7f130020

    goto :goto_0

    :cond_4
    const p1, 0x7f130024

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    const p1, 0x7f130022

    goto :goto_0

    :cond_6
    const p1, 0x7f130027

    :goto_0
    const p2, 0x7f0a07c3

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$onCreateView$2$1;->$view:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_8
    if-eqz p0, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
