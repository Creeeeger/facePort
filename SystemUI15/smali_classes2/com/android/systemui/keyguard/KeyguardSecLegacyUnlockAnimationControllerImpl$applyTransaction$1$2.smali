.class public final Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_run:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;->$this_run:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;->$this_run:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeash:Landroid/view/SurfaceControl;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$applyTransaction$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->surfaceBehindMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->tmpFloat9:[F

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
