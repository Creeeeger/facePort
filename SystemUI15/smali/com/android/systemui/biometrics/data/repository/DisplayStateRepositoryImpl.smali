.class public final Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/DisplayStateRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final currentDisplayInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentDisplaySize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isLargeScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isReverseDefaultRotation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/display/data/repository/DeviceStateRepository;Lcom/android/systemui/display/data/repository/DisplayRepository;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->isReverseDefaultRotation:Z

    check-cast p3, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$1;

    iget-object p3, p3, Lcom/android/systemui/display/data/repository/DeviceStateRepositoryImpl;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v0, p3}, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p4, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$2;

    iget-object p4, p4, Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl;->displayChangeEvent:Lcom/android/systemui/display/data/repository/DisplayRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v0, p4, p0}, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;)V

    new-instance p4, Landroid/view/DisplayInfo;

    invoke-direct {p4}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_0
    invoke-static {v0, p1, v1, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$3;

    invoke-direct {p4, p2, p0}, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;)V

    const/4 v0, 0x3

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    iget-object v4, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->rotationToDisplayRotation(I)Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    move-result-object v5

    invoke-static {p4, p1, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->currentRotation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$4;

    invoke-direct {p4, p2}, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    new-instance v0, Landroid/util/Size;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/DisplayInfo;

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/DisplayInfo;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-static {p4, p1, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->currentDisplaySize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$5;

    invoke-direct {p3, p2, p0}, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;)V

    invoke-static {p3, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->isLargeScreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final rotationToDisplayRotation(I)Lcom/android/systemui/biometrics/shared/model/DisplayRotation;
    .locals 1

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/data/repository/DisplayStateRepositoryImpl;->isReverseDefaultRotation:Z

    if-eqz p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x4

    :cond_0
    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_270:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid DisplayRotation value: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_180:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_90:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/DisplayRotation;->ROTATION_0:Lcom/android/systemui/biometrics/shared/model/DisplayRotation;

    :goto_0
    return-object p0
.end method
