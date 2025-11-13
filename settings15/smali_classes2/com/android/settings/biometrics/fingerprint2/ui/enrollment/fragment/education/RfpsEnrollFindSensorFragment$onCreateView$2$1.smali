.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $footerBarMixin:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->$footerBarMixin:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->$footerBarMixin:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const p2, 0x7f0a064b

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment;->animation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "$footerBarMixin"

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->$footerBarMixin:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$onCreateView$2$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f142a5b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$setupPrimaryButton$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment$setupPrimaryButton$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/RfpsEnrollFindSensorFragment;I)V

    new-instance p0, Lcom/google/android/setupcompat/template/FooterButton;

    const v1, 0x7f15045d

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {p2, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
