.class public final synthetic Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    iput-object p2, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    check-cast p1, Landroid/content/ComponentName;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    iget-object v1, v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    const-string v2, "CategoryMixin"

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tile added: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    iget-object v3, v3, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    iget-object v4, v4, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    iget-object v3, v3, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    iget-object v0, v0, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tile changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/android/settingslib/drawer/Tile;->mCategory:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method
