.class public final Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;->this$0:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onZenChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController$2;->this$0:Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    iget-object p1, p0, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget p1, p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f130df1

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;->showIcon(IIZ)V

    return-void
.end method
