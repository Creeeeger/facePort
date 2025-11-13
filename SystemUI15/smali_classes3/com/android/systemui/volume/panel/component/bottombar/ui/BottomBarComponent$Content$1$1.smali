.class final synthetic Lcom/android/systemui/volume/panel/component/bottombar/ui/BottomBarComponent$Content$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "onSettingsClicked()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;

    const-string v4, "onSettingsClicked"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;

    iget-object v0, p0, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;->VOLUME_PANEL_SOUND_SETTINGS_CLICKED:Lcom/android/systemui/volume/panel/ui/VolumePanelUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel$onSettingsClicked$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel$onSettingsClicked$1;-><init>(Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/bottombar/ui/viewmodel/BottomBarViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v8, 0x20000

    invoke-interface/range {v2 .. v10}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/os/UserHandle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
