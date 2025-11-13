.class final Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

.field final synthetic this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$1;->$callback:Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$1;->this$0:Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object p0, p0, Lcom/android/systemui/security/data/repository/SecurityRepositoryImpl$security$1$1;->$callback:Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->removeCallback(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
