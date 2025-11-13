.class public final Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;
.super Lcom/android/systemui/qs/FullScreenDetailAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final soundAliveIntentFactory:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveIntentFactory;

.field public final viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveIntentFactory;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/FullScreenDetailAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->soundAliveIntentFactory:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveIntentFactory;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    const-string p0, "SoundCraft.QpDetailAdapter"

    const-string p2, "initialized"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl$LazyHolder;->a:Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;

    new-instance p2, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/condition/PlayingAudioConditionHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "setConditionHandler - tag=playing_audio, conditionHandler="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "RoutineSdkImpl"

    invoke-static {p3, p1}, Lcom/samsung/android/sdk/routines/v3/internal/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/internal/RoutineSdkImpl;->d:Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;

    const-string p1, "playing_audio"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/routines/v3/internal/HandlerProvider;->set(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    new-instance p0, Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createDetailView :cachedView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", parent="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SoundCraft.QpDetailAdapter"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->binding:Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/SoundCraftViewBinding;->root:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final dismissListPopupWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->dismissListPopupWindow()V

    const-string v0, "SoundCraft.QpDetailAdapter"

    const-string v1, "dismissListPopupWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->onDestroy()V

    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x13a6

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->soundAliveIntentFactory:Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveIntentFactory;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/soundalive/SoundAliveIntentFactory;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-boolean v1, v0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->readyToUpdateRoutine:Z

    iget-object v0, v0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getSettingsIntent : readyToUpdateRoutine="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", routineId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.SoundAliveIntentFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->appSettingModel:Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/appsetting/AppSettingModel;->routineId:Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.soundalive"

    const-string v2, "com.sec.android.app.soundalive.activity.SoundCraftDetailActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "routine_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string p0, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.media.extra.AUDIO_SESSION"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->context:Landroid/content/Context;

    const v0, 0x7f131294

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final shouldUseFullScreen()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->viewComponent:Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/SoundCraftViewComponent;->updateModel(I)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shouldUseFullScreen : modelProvider.effectOutDeviceType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundCraft.QpDetailAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectOutDeviceType:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;->BUDS:Lcom/android/systemui/audio/soundcraft/model/EffectOutDeviceType;

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
