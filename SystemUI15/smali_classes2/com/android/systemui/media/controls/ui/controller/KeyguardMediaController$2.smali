.class public final Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController$2;->this$0:Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->splitShadeStateController:Lcom/android/systemui/statusbar/policy/SplitShadeStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/SplitShadeStateControllerImpl;->shouldUseSplitNotificationShade()V

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->useSplitShade:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/KeyguardMediaController;->useSplitShade:Z

    :goto_0
    return-void
.end method
