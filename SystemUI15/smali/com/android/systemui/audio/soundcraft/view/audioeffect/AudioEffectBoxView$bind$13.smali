.class public final Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$13;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget-object p1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;

    sget-object v0, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;->EID_BUDS_DETAIL_SETTING:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;

    sget-object v1, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;->DETAIL:Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;->sendEventLog$default(Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$ScreenId;Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView$bind$13;->this$0:Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;

    sget p1, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/audioeffect/AudioEffectBoxView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->intentFactory:Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/interfaces/wearable/setting/BudsSettingIntentFactory;->createIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-boolean p1, p1, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->isFromCover:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/audioeffect/AudioEffectBoxViewModel;->soundCraftCoverController:Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;->listener:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$3;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$3;->this$0:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;->actionScreenReceiver:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;->actionScreenReceiver:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "jumpToDetailPage : onFailure, e="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SoundCraft.AudioEffectBoxViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
