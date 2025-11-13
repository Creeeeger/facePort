.class public Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;


# direct methods
.method public static synthetic $r8$lambda$RU8PADkha-somNmpGmyICO2eJV0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/DeviceController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceControlActionInteractor"

    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    return-void
.end method

.method private static synthetic lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private matchAction(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "loadStateful in DeviceContorlActionInteractor action="

    const-string v1, "DeviceControlActionInteractor"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isFlashLightEnabled()Z

    move-result v0

    new-instance v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {v3, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    iput v1, v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightIntent()Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    new-instance p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    iput-object p0, v3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    new-instance v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iput v1, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    move-result p0

    int-to-float v5, p0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    iput-object p1, v0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isAutoRotationEnabled()Z

    move-result p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadStateful in DeviceContorlActionInteractor(with CommandAction) action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cmdAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DeviceControlActionInteractor"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x2

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    iget-object p3, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p3}, Lcom/android/systemui/bixby2/controller/DeviceController;->isFlashLightEnabled()Z

    move-result p3

    new-instance v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {v2, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput v0, v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightIntent()Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mLaunchIntent:Landroid/app/PendingIntent;

    new-instance p0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    iput-object p0, v2, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/DeviceController;->hasFlashLight()Z

    move-result p1

    new-instance p3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p3, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    iput v0, p3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p1, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->getFlashLightLevel()I

    move-result p0

    int-to-float v4, p0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    iput-object p1, p3, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p3, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->isAutoRotationEnabled()Z

    move-result p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const-string p2, "invalid_action"

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight_level:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Lcom/samsung/android/sdk/command/action/FloatAction;

    iget p2, p2, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    float-to-int p2, p2

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/controller/DeviceController;->setFlashlightWithLevel(I)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p2

    if-eqz p3, :cond_4

    iget v0, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object p2, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast p2, Lcom/samsung/android/sdk/command/action/BooleanAction;

    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_flashlight:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean p2, p2, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/controller/DeviceController;->setFlashlight(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p2

    if-eqz p3, :cond_4

    iget v0, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object p2, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_autorotate:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/controller/DeviceController;->setAutoRotate(Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p2

    if-eqz p3, :cond_4

    iget v0, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object p2, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {v2, v0, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    :cond_4
    :goto_0
    const-string/jumbo p2, "success"

    :goto_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->power_off:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->turnOffDevice(Landroid/content/Context;)V

    if-eqz p3, :cond_9

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->reboot:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->restartDevice(Landroid/content/Context;)V

    if-eqz p3, :cond_9

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->turnoff_screen:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->turnOffScreen(Landroid/content/Context;)V

    if-eqz p3, :cond_9

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object p2, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_landscapemode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setLandscapeMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    if-eqz p3, :cond_9

    iget p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object p2, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;->set_portraitmode:Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mDeviceController:Lcom/android/systemui/bixby2/controller/DeviceController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/DeviceControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/DeviceController;->setPortraitMode(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    if-eqz p3, :cond_9

    iget p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, p1, p0}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method
