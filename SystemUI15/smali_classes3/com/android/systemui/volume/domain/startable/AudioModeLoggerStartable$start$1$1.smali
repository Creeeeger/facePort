.class public final Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable$start$1$1;->this$0:Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable$start$1$1;->this$0:Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable;

    iget-object p0, p0, Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_CALLING:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_AUDIO_MODE_CHANGE_TO_NORMAL:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
