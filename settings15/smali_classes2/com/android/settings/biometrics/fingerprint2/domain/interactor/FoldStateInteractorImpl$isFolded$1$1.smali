.class final Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $foldStateListener:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1$foldStateListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1$1;->$foldStateListener:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl;->screenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FoldStateInteractorImpl$isFolded$1$1;->$foldStateListener:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "callback"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
