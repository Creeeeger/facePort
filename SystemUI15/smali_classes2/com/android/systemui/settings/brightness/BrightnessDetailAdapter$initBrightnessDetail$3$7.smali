.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$3$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$3$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$3$7;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DetailView.admin = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BrightnessDetailAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showAdminSupportDetails.admin = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->activityStarter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    const/4 p2, 0x1

    :cond_0
    return p2
.end method
