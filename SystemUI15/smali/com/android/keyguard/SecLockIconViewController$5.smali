.class public final Lcom/android/keyguard/SecLockIconViewController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/SecLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/SecLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconViewController$5;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$5;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mIsDozing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController$5;->this$0:Lcom/android/keyguard/SecLockIconViewController;

    iput p1, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mStatusBarState:I

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility$1()V

    return-void
.end method
