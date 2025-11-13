.class public final Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/demomode/DemoMode;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$Companion;


# instance fields
.field public demoMcc:Ljava/lang/Integer;

.field public demoMnc:Ljava/lang/Integer;

.field public final demoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final subscriptions:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->Companion:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/demomode/DemoModeController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoModeController:Lcom/android/systemui/demomode/DemoModeController;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$signalCallback$1;-><init>(Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;)V

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p3, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    return-void
.end method


# virtual methods
.method public final demoCommands()Ljava/util/List;
    .locals 0

    const-string p0, "network"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string p2, "mccmnc"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMcc:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMnc:Ljava/lang/Integer;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p2, "Subscriptions below will be inflated with a configuration context with MCC/MNC overrides"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    const-string v3, "  Subscription with subId("

    const-string v4, ") with MCC/MNC("

    const-string v5, "/"

    invoke-static {v1, v2, v3, v4, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMcc:Ljava/lang/Integer;

    const-string v0, "(none)"

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    const-string v1, "  MCC override: "

    invoke-static {v1, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMnc:Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    const-string p0, "  MNC override: "

    invoke-static {p0, v0, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getMobileContextForSub(ILandroid/content/Context;)Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->subscriptions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result p1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result p0

    sget-object v0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->Companion:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput p1, v0, Landroid/content/res/Configuration;->mcc:I

    iput p0, v0, Landroid/content/res/Configuration;->mnc:I

    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-object p0
.end method

.method public final onDemoModeFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMcc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->demoMnc:Ljava/lang/Integer;

    return-void
.end method
