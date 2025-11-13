.class final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurningOff$1;
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
.field final synthetic this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurningOff$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$ScreenStatusListener$onScreenTurningOff$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->assertInProgressThread$2()V

    iget-boolean v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isScreenOn:Z

    iget-object v1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->hingeAngleProvider:Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->isFolded:Z

    if-nez p0, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->start()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/unfold/updates/hinge/HingeAngleProvider;->stop()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
