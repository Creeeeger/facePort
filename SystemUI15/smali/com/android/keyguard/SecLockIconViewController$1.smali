.class public final Lcom/android/keyguard/SecLockIconViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangedLockStarData(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$1;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsLockStarEnabled:Z

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method
