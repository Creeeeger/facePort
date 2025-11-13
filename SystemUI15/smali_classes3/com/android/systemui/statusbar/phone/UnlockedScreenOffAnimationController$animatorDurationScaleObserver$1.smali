.class public final Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController$animatorDurationScaleObserver$1;->this$0:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Landroid/view/WindowManager;->fixScale(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->animatorDurationScale:F

    return-void
.end method
