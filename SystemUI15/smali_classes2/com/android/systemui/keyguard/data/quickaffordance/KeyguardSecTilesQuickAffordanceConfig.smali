.class public final Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final callback:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;

.field public final componentNameList:Ljava/util/HashMap;

.field public isLocalCustomTile:Z

.field public key:Ljava/lang/String;

.field public lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

.field public final lockQSTileHost:Lcom/android/systemui/qs/SecLockscreenTileHost;

.field public final lockScreenState:Lkotlinx/coroutines/flow/Flow;

.field public final pickerIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/android/systemui/qs/QSTileHost;->mLockscreentTileHost:Lcom/android/systemui/qs/SecLockscreenTileHost;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTileHost:Lcom/android/systemui/qs/SecLockscreenTileHost;

    const-string/jumbo p2, "tilesConfig"

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->componentNameList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f130b1b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lkotlin/text/Regex;

    const-string v0, ","

    invoke-direct {p2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/util/ListIterator;->nextIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_1
    check-cast p1, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    move v1, p2

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-string v3, ":"

    const/4 v4, 0x6

    invoke-static {v2, v3, p2, p2, v4}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "custom("

    const-string v5, ")"

    invoke-static {v3, v2, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->componentNameList:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "make table : customTileName = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", componentName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSecTilesQuickAffordanceConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const p1, 0x7f0807a1

    iput p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->pickerIconResourceId:I

    sget-object p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->callback:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$lockScreenState$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$lockScreenState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockScreenState:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final addListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->callback:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/LockQSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lcom/android/systemui/plugins/qs/LockQSTile;->setListening(Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/LockQSTile;->getTileIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockScreenState:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getPanelIconTransitionDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/LockQSTile;->getNextTileIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->pickerIconResourceId:I

    return p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/LockQSTile;->isAvailable()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isIconPaddingRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->isLocalCustomTile:Z

    return p0
.end method

.method public final isTaskEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/LockQSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isUnlockWaitRequired()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    const-string v1, "LiveTranscribe"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    const-string v1, "QRScanner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isUnlockWaitRequired "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KeyguardSecTilesQuickAffordanceConfig"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/LockQSTile;->click()V

    :cond_0
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;

    return-object p0
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/LockQSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final removeListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->callback:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/qs/LockQSTile;->setListening(Ljava/lang/Object;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/qs/LockQSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    :cond_1
    return-void
.end method

.method public final setSpecName(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    const-string v1, "old spec: "

    const-string v2, ", new spec: "

    const-string v3, "KeyguardSecTilesQuickAffordanceConfig"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->componentNameList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->componentNameList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->isLocalCustomTile:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->componentNameList:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->isLocalCustomTile:Z

    const-string/jumbo v4, "updated key: "

    const-string v5, ", new key: "

    const-string v6, ", old key: "

    invoke-static {v4, v1, v5, p1, v6}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isLocalCustomTile: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTileHost:Lcom/android/systemui/qs/SecLockscreenTileHost;

    if-nez v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "releaseLockscreenTile  "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/qs/SecLockscreenTileHost;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/systemui/qs/SecLockscreenTileHost;->qsHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v0, v3

    :cond_4
    iget-object v3, v2, Lcom/android/systemui/qs/SecLockscreenTileHost;->obj:Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->releaseTileUsing(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "requestLockscreenTile  "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/qs/SecLockscreenTileHost;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/systemui/qs/SecLockscreenTileHost;->qsHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileSpecFromTileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object p1, v4

    :cond_6
    iget-object v2, v2, Lcom/android/systemui/qs/SecLockscreenTileHost;->obj:Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/systemui/qs/QSTileHost;->mQSTileInstanceManager:Lcom/android/systemui/qs/SecQSTileInstanceManager;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/qs/SecQSTileInstanceManager;->requestTileUsing(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    instance-of v1, p1, Lcom/android/systemui/plugins/qs/LockQSTile;

    if-eqz v1, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/LockQSTile;

    goto :goto_0

    :cond_7
    const-string p1, "not LockQSTile object"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig;->lockQSTile:Lcom/android/systemui/plugins/qs/LockQSTile;

    :cond_8
    return-void
.end method
