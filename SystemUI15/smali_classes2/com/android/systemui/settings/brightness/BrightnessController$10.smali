.class public final Lcom/android/systemui/settings/brightness/BrightnessController$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    const-string v2, "no_config_brightness"

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v3, v3, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$10;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    invoke-interface {p0, v1}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
