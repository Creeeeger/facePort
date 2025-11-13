.class public final Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public actionScreenReceiver:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;

.field public final controller:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;->controller:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;->controller:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;

    invoke-virtual {v0}, Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;->createView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;-><init>(Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;->actionScreenReceiver:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$1;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$3;-><init>(Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity;)V

    iput-object v0, p1, Lcom/android/systemui/audio/soundcraft/SoundCraftCoverController;->listener:Lcom/android/systemui/audio/soundcraft/activity/SoundCraftActivity$onCreate$3;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method
