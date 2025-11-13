.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1$onSystemStatusAnimationTransitionToPersistentDot$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1$onSystemStatusAnimationTransitionToPersistentDot$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1$onSystemStatusAnimationTransitionToPersistentDot$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->createListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/ScreenDecorations$3;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mIsDotViewVisible:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const-string v3, "onCreatePrivacyIndicatorOverlay, already created="

    invoke-static {v3, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "ScreenDecorationsLog"

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsDotViewVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    :cond_0
    return-void
.end method
