.class public Lcom/android/systemui/screenshot/appclips/AppClipsService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAreTaskAndTimeIndependentPrerequisitesMet:Z

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mOptionalBubbles:Ljava/util/Optional;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/appclips/AppClipsService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Ljava/util/Optional;Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mOptionalBubbles:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    sget-object p4, Lcom/android/systemui/flags/Flags;->SCREENSHOT_APP_CLIPS:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast p2, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p2, p4}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result p2

    const/4 p4, 0x0

    const-string v0, "AppClipsService"

    if-nez p2, :cond_0

    const-string p1, "Feature flag disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/util/Optional;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "Bubbles not available"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const p2, 0x7f1303ff

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    const-string p1, "AppClips component name not defined"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "AppClips component package name is empty"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "AppClips component class name is empty"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "isComponentValid returned true"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "checkIndependentVariables returned true"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    goto :goto_1

    :catch_0
    const-string p1, "AppClips activity component resource not defined"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "checkIndependentVariables returned false"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-boolean p4, p0, Lcom/android/systemui/screenshot/appclips/AppClipsService;->mAreTaskAndTimeIndependentPrerequisitesMet:Z

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/appclips/AppClipsService$1;-><init>(Lcom/android/systemui/screenshot/appclips/AppClipsService;)V

    return-object p1
.end method
