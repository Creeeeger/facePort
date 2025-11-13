.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

.field public final synthetic val$accessibilityServiceUri:Landroid/net/Uri;

.field public final synthetic val$cr:Landroid/content/ContentResolver;

.field public final synthetic val$deviceProvisionedUri:Landroid/net/Uri;

.field public final synthetic val$navigationModeUri:Landroid/net/Uri;

.field public final synthetic val$splitGestureUri:Landroid/net/Uri;

.field public final synthetic val$testFlagsUri:Landroid/net/Uri;

.field public final synthetic val$testTouchSlopUri:Landroid/net/Uri;

.field public final synthetic val$userSetupCompleteUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$splitGestureUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testTouchSlopUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testFlagsUri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$navigationModeUri:Landroid/net/Uri;

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$deviceProvisionedUri:Landroid/net/Uri;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$userSetupCompleteUri:Landroid/net/Uri;

    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$accessibilityServiceUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    sget-boolean p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$splitGestureUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    const-string v0, "open_in_split_screen_view"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    if-eq v0, v1, :cond_e

    iput-boolean v1, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testTouchSlopUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    const-string v0, "MultiWindow_twoFingerSplitGesture_TestTouchSlop"

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/TwoFingerSwipeGestureDetector;->setTouchSlopForTest(F)V

    if-eqz p1, :cond_e

    sget-object p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "test touch slop=%f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$testFlagsUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    const-string v0, "MultiWindow_twoFingerSplitGesture_TestFlag"

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->setDebug(Z)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    move v4, v2

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/TwoFingerSwipeGestureDetector;->setDebugNoise(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    if-eqz p1, :cond_e

    sget-object p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "test flags=%x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$navigationModeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    const-string v0, "navigation_mode"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget v1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    if-eq v1, p1, :cond_e

    iput p1, v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$deviceProvisionedUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    const-string v0, "device_provisioned"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    if-eq v0, v1, :cond_e

    iput-boolean v1, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$userSetupCompleteUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    if-eq v0, v1, :cond_e

    iput-boolean v1, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    :goto_6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "changed "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->updateEnableState(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->val$accessibilityServiceUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->getTalkbackComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_7

    :cond_d
    move v1, v2

    :goto_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;->this$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    if-eq p1, v1, :cond_e

    iput-boolean v1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsTalkbackEnabled:Z

    :cond_e
    :goto_8
    return-void
.end method
