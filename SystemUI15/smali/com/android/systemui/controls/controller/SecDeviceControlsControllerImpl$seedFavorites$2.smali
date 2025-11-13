.class public final Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $prefs:Landroid/content/SharedPreferences;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/systemui/controls/controller/SeedResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Controls seeded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecDeviceControlsControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/android/systemui/controls/controller/SeedResponse;->accepted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2;->$prefs:Landroid/content/SharedPreferences;

    sget v3, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/SeedResponse;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;

    iget-object p1, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "fireControlsUpdate()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/qs/bar/MediaDevicesBar$1;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/MediaDevicesBar;->mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;

    check-cast p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->callback:Lcom/android/systemui/qs/bar/MediaDevicesBar$1;

    iget-object v0, p1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$removeCallback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2;->this$0:Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object p1, p1, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsListingController:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl$seedFavorites$2$1;-><init>(Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method
