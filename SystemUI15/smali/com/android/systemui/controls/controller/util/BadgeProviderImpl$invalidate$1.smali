.class public final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130427

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/util/BadgeObserver;->menuItem:Landroidx/appcompat/view/menu/SeslMenuItem;

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v2, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object v0, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mBadgeText:Ljava/lang/String;

    iget-object v1, v1, Landroidx/appcompat/view/menu/MenuItemImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
