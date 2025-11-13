.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 0

    sget-object p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateDisplayParameters()V

    return-void
.end method
