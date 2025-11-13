.class public final synthetic Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardVisibilityHelper;Landroid/view/View;Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper$$ExternalSyntheticLambda0;I)V
    .locals 0

    iput p4, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/IntConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/IntConsumer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_0
    sget-boolean p0, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/IntConsumer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_2
    sget-boolean p0, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
