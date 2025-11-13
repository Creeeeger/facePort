.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/screen/ScreenStatusProvider$ScreenListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenTurnedOn()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurnedOn$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurnedOn$1;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$executeInProgressThread$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$executeInProgressThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onScreenTurningOff()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurningOff$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurningOff$1;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$executeInProgressThread$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$executeInProgressThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onScreenTurningOn()V
    .locals 2

    new-instance v0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurningOn$1;

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurningOn$1;-><init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->progressHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$executeInProgressThread$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$executeInProgressThread$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
