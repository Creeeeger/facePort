.class public final Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic $action:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;->$action:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;->$action:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->getSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getOneHandModeRunningInfo()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
