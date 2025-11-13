.class public final Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;
.super Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/core/CategoryMixin;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/CategoryMixin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    invoke-direct {p0, p1}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;-><init>(Lcom/android/settings/core/CategoryMixin;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method public final onPostExecute(Ljava/util/Set;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    iget p1, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    return-void
.end method
