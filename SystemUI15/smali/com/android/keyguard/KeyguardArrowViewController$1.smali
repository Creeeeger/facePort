.class public final Lcom/android/keyguard/KeyguardArrowViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$1;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$1;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mIsFolderOpened:Z

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    move-result p1

    iget v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mCurrentPosition:I

    :cond_0
    return-void
.end method
