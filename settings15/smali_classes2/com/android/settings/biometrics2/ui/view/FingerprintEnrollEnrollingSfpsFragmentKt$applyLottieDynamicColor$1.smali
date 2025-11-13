.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt$applyLottieDynamicColor$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $isError:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt$applyLottieDynamicColor$1;->$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt$applyLottieDynamicColor$1;->$isError:Z

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt$applyLottieDynamicColor$1;->$context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt$applyLottieDynamicColor$1;->$isError:Z

    if-eqz p0, :cond_0

    const p0, 0x7f060a58

    goto :goto_0

    :cond_0
    const p0, 0x7f060a57

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method
