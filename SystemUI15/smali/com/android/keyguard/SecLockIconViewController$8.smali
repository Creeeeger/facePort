.class public final Lcom/android/keyguard/SecLockIconViewController$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$8;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget v0, Lcom/android/keyguard/SecLockIconViewController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$8;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1300bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mDisplayType:I

    iget v2, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, v2, :cond_2

    iput v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mDisplayType:I

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v0, v0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    iget-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iput-boolean v0, v2, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    :cond_2
    iget v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/SecLockIconView;->updateLockIconViewLayoutParams(I)V

    :cond_3
    return-void
.end method
