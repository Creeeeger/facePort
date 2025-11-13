.class public final Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $items:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->$items:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->$items:Ljava/util/List;

    sget v2, Lcom/android/systemui/privacy/PrivacyDialogController;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-object v3, v3, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/privacy/PrivacyType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-boolean v9, v9, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    if-eqz v9, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    new-instance v2, Lcom/android/systemui/privacy/PrivacyDialogController$filterAndSelect$lambda$6$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/android/systemui/privacy/PrivacyDialogController$filterAndSelect$lambda$6$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_4
    sget-boolean v6, Lcom/android/systemui/ScRune;->QUICK_SUPPORT_LOCATION_PRIVACY_CHIP:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne v4, v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-wide v4, v4, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-wide v7, v7, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    cmp-long v9, v4, v7

    if-gez v9, :cond_9

    move-object v3, v6

    move-wide v4, v7

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    :goto_3
    check-cast v3, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    if-eqz v3, :cond_a

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_a
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto/16 :goto_1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "showDialog  elements "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivacyDialogController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v1, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->$context:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1$d$1;

    iget-object v5, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-direct {v4, v5}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1$d$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialog;

    invoke-direct {v1, v2, v0, v4}, Lcom/android/systemui/privacy/PrivacyDialog;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function4;)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    iget-object v4, v1, Lcom/android/systemui/privacy/PrivacyDialog;->dismissed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v4, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v4}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyDialogDismissed()V

    iget-object v4, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/privacy/PrivacyDialogEvent;->PRIVACY_DIALOG_DISMISSED:Lcom/android/systemui/privacy/PrivacyDialogEvent;

    invoke-interface {v4, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iput-object v3, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    goto :goto_5

    :cond_c
    iget-object v3, v1, Lcom/android/systemui/privacy/PrivacyDialog;->dismissListeners:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/privacy/PrivacyDialog;->mDialogTranslateX:I

    sget-object v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->panelSplitHepler$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v2

    goto :goto_6

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v2}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_6
    iput-boolean v2, v1, Lcom/android/systemui/privacy/PrivacyDialog;->qsExpanded:Z

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v2, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logShowDialogContents(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iput-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    goto :goto_7

    :cond_e
    const-string p0, "Trying to show empty dialog"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method
