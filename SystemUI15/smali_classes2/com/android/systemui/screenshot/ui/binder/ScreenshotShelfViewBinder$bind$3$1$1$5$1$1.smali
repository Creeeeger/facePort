.class public final Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$3$1$1$5$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $action:Lcom/android/systemui/screenshot/ui/viewmodel/PreviewAction;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/viewmodel/PreviewAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$3$1$1$5$1$1;->$action:Lcom/android/systemui/screenshot/ui/viewmodel/PreviewAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/binder/ScreenshotShelfViewBinder$bind$3$1$1$5$1$1;->$action:Lcom/android/systemui/screenshot/ui/viewmodel/PreviewAction;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/PreviewAction;->onClick:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
