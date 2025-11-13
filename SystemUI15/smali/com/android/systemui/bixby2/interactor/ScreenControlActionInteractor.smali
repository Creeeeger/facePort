.class public Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String; = "ScreenControlActionInteractor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;


# direct methods
.method public static synthetic $r8$lambda$DU2stvfvKXQf5FHnwOP9KgBrBM0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/ScreenController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

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

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

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

    invoke-static {}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$$ExternalSyntheticLambda0;

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
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ScreenControlActionInteractor"

    const-string v1, "matched in ScreenContorlActionInteractor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessBarInfo(Landroid/content/Context;)[I

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v6, v0

    aget p0, p0, v2

    int-to-float v7, p0

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v1, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "isAutoBrightnessCoverEnabled = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p2, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadStateful in ScreenContorlActionInteractor(with CommandAction) action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cmdAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ScreenControlActionInteractor"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

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
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

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
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

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
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->getBrightnessBarInfo(Landroid/content/Context;)[I

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    new-instance p2, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    const/4 p3, 0x0

    aget p3, p0, p3

    int-to-float v5, p3

    aget p0, p0, v1

    int-to-float v6, p0

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    iput-object p2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    sget-object p1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    iput-object p1, p0, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p3, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->isAutoBrightnessCoverEnabled(Landroid/content/Context;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "isAutoBrightnessCoverEnabled = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    sget-object p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

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
    const/4 p0, 0x0

    return-object p0
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 7

    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v0

    const-string v1, "ScreenControlActionInteractor"

    const/4 v2, 0x1

    const-string/jumbo v3, "success"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v6, 0x4

    if-eq v0, v6, :cond_2

    const/4 v6, 0x5

    if-eq v0, v6, :cond_0

    const-string v3, "invalid_action"

    goto :goto_1

    :cond_0
    check-cast p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    iget-object v4, p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    :cond_1
    :goto_0
    move v5, v2

    goto :goto_1

    :cond_2
    check-cast p2, Lcom/samsung/android/sdk/command/action/StringAction;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->set_brightness:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/command/action/FloatAction;

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    iget p2, p2, Lcom/samsung/android/sdk/command/action/FloatAction;->mNewValue:F

    float-to-int p2, p2

    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/bixby2/controller/ScreenController;->setBrightness(Landroid/content/Context;I)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p2

    iget v5, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object v3, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_1

    :cond_4
    check-cast p2, Lcom/samsung/android/sdk/command/action/BooleanAction;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "bNewState = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p2, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object v0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->auto_brightness_cover:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/bixby2/controller/ScreenController;->setAutoBrightnessCover(Landroid/content/Context;Z)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p2

    iget v5, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object v3, p2, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->goto_homescreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->goToHomeScreen(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_5
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->back:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->pressBackKey(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_6
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->capture_screen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->takeScreenShot(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget v2, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object v3, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_2

    :cond_7
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p1, "packageName"

    invoke-static {p1, v4}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "share_screenshot    newJSONStringValue = "

    invoke-static {p2, v4, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bixby2/controller/ScreenController;->shareScreenShot(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget v2, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object v3, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_2

    :cond_8
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->share_screenshot_uri:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->takeScreenShotUri(Landroid/content/Context;)Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    iget v2, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    iget-object v3, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    goto :goto_2

    :cond_9
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->scroll_up_down:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v4}, Lcom/android/systemui/bixby2/controller/ScreenController;->screenScroll(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    sget-object p2, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;->close_panelscreen:Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor$Action;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mScreenController:Lcom/android/systemui/bixby2/controller/ScreenController;

    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/ScreenControlActionInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/ScreenController;->closePanelScreen(Landroid/content/Context;)V

    goto :goto_2

    :cond_b
    move v2, v5

    :goto_2
    if-eqz p3, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "responseCode = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", responseMessage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    invoke-virtual {p3, v2, v3}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    :cond_c
    return-void
.end method
