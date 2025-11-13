.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

.field public final synthetic this$1:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$1:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const-string p1, "blurRadius"

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iput p2, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    sget p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$springAnimation$1;->this$1:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
