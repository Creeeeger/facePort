.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onViewInflated$com$android$keyguard$KeyguardSecurityContainerController$1$$ExternalSyntheticLambda0(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    return-void

    :pswitch_1
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityView;->onStartingToHide()V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->startAppearAnimation()V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
