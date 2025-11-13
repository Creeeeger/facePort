.class public final Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1;->this$0:Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1;->this$0:Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1$onApplyCameraProtection$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1$onApplyCameraProtection$1;-><init>(Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onHideCameraProtection()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1;->this$0:Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1$onHideCameraProtection$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController$setCameraListener$1$onHideCameraProtection$1;-><init>(Lcom/android/systemui/statusbar/events/CoverPrivacyDotViewController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
