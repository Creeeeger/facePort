.class public abstract Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x401ccccd    # 2.45f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e8f5c29    # 0.28f

    const v2, 0x3f7c28f6    # 0.985f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3fce147b    # 1.61f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImplKt;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method
