.class public final Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final NULL_ACTIVITY_TRANSITION:Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor$NULL_ACTIVITY_TRANSITION$1;

.field public final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ClipboardTransitionExec"

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;->TAG:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor$NULL_ACTIVITY_TRANSITION$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor$NULL_ACTIVITY_TRANSITION$1;-><init>(Lcom/android/systemui/clipboardoverlay/ClipboardTransitionExecutor;)V

    return-void
.end method
