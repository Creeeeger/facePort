.class public Lcom/android/systemui/util/RecoilEffectUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecoilLargeAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;
    .locals 1

    const v0, 0x7f02003c

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static getRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;
    .locals 1

    const v0, 0x7f020039

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static getSecRecoilSmallAnimator(Landroid/content/Context;)Landroid/animation/StateListAnimator;
    .locals 1

    const v0, 0x7f020037

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p0

    return-object p0
.end method
