.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alpha:F

.field public visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->alpha:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->visibility:I

    return-void
.end method


# virtual methods
.method public final printStatusLog()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->visibility:I

    sget v1, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewExt;->alpha:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.2f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "v:"

    const-string v3, ", a:"

    const-string v4, ", "

    invoke-static {v0, v2, v3, p0, v4}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "KeyguardStatusBarViewExt"

    invoke-static {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
