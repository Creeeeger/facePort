.class public final Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $sendEvent:Lkotlin/jvm/functions/Function1;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/VideoCallEffect;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/bar/VideoCallEffect;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "VideoCallEffect"

    const-string v0, "onClicked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->this$0:Lcom/android/systemui/qs/bar/VideoCallEffect;

    sget-object v0, Lcom/android/systemui/qs/bar/VideoCallEffect;->URI_VSET_APP_STATUS_DATA:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intentfilter.samsung.vtcamerasetting.openmenu"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.vtcamerasettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/systemui/qs/bar/VideoCallEffect;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    iget-object p1, p1, Lcom/android/systemui/qs/bar/VideoCallEffect;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/VideoCallEffect$setClickListener$1;->$sendEvent:Lkotlin/jvm/functions/Function1;

    const-string p1, "QPPE1030"

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
