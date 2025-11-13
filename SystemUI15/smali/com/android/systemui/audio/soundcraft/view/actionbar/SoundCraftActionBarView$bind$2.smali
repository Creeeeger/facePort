.class public final Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView$bind$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView$bind$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView$bind$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;

    sget p1, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/actionbar/SoundCraftActionBarView;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "SoundCraft.SoundCraftActionBarViewModel"

    const-string v0, "onBackButtonClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->qsDetailControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSDetailController;

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->soundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecQSDetailController;->closeTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->soundCraftNowBarController:Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/SoundCraftNowBarController;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/actionbar/SoundCraftActionBarViewModel;->soundCraftCoverController:Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;->listener:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$3;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$3;->this$0:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;->actionScreenReceiver:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;->actionScreenReceiver:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
