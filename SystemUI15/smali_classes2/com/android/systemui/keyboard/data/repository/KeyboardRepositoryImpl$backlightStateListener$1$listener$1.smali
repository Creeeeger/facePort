.class public final Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$backlightStateListener$1$listener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/input/InputManager$KeyboardBacklightListener;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$backlightStateListener$1$listener$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$backlightStateListener$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyboardBacklightChanged(ILandroid/hardware/input/KeyboardBacklightState;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$backlightStateListener$1$listener$1;->this$0:Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$backlightStateListener$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->access$sendWithLogging(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
