.class public final Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/back/domain/interactor/BackActionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;->this$0:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/back/domain/interactor/BackActionInteractor$callback$2;->this$0:Lcom/android/systemui/back/domain/interactor/BackActionInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/back/domain/interactor/BackActionInteractor;->onBackRequested()Z

    return-void
.end method
