.class public final Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->-$$Nest$msetProjection(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->-$$Nest$msetProjection(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method
