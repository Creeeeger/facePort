.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $event:Landroid/view/KeyEvent;

.field public final synthetic $ret:[Z

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;


# direct methods
.method public constructor <init>([ZLandroid/view/KeyEvent;Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;->$ret:[Z

    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;->$event:Landroid/view/KeyEvent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;->$ret:[Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;->$event:Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_KEYBOARD:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    const-string p1, "CentralSurfaces"

    const-string v0, "interceptRestKey call dismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor$interceptRestKey$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardKeyEventInteractor;->dispatchMenuKeyEvent()Z

    :goto_0
    return-void
.end method
