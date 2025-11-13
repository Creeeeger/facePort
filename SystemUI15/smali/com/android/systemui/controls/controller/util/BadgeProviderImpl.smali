.class public final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/controller/util/BadgeProvider;
.implements Lcom/android/systemui/controls/controller/util/BadgeSubject;


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;


# instance fields
.field public final badgeNotRequiredSet:Ljava/util/Set;

.field public final badgeObservers:Ljava/util/Set;

.field public final badgeRequiredSet:Ljava/util/Set;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final context:Landroid/content/Context;

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "ControlsBadgeRequired"

    invoke-interface {p3, v0, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "ControlsBadgeNotRequired"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    return-void
.end method

.method public static final dismiss$flush$9(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "dismiss(): "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BadgeProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final onServicesUpdated$flush(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->putPackagesSet(Ljava/lang/String;Ljava/util/Set;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onServicesUpdated(): "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BadgeProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    iget-object v3, v3, Lcom/android/systemui/controls/controller/util/BadgeObserver;->menuItem:Landroidx/appcompat/view/menu/SeslMenuItem;

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v4, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iput-object v2, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    iget-object v3, v3, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v2, "ControlsBadgeNotRequired"

    const-string v3, "badgeNotRequiredSet"

    invoke-static {p0, v1, v2, v3}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss$flush$9(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v1, "ControlsBadgeRequired"

    const-string v2, "badgeRequiredSet"

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss$flush$9(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final putPackagesSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public final setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f130426

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
