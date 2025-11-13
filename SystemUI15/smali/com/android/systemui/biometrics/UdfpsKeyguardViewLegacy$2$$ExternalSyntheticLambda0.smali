.class public final synthetic Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/value/SimpleLottieValueCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mTextColorPrimary:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method
