.class public final Lcom/android/systemui/statusbar/KshPresenter$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyboardShortcutGroup;

    invoke-virtual {v1}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyboardShortcutInfo;

    invoke-virtual {v2}, Landroid/view/KeyboardShortcutInfo;->clearIcon()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSamsungSystemShortcuts()Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/model/KshData;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    iget-object v2, v2, Lcom/android/systemui/statusbar/model/KshDataUtils;->mDefaultIcons:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/view/KeyboardShortcutGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    const v3, 0x7f130a9e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/KshPresenter$3$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$3;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    iput-object p1, v0, Lcom/android/systemui/statusbar/model/KshData;->mKshGroups:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshPresenter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
