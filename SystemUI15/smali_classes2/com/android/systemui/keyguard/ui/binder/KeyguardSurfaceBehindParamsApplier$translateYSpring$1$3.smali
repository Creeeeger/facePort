.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$translateYSpring$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$translateYSpring$1$3;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier$translateYSpring$1$3;->this$0:Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;

    sget p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardSurfaceBehindParamsApplier;->updateIsAnimatingSurface()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method
