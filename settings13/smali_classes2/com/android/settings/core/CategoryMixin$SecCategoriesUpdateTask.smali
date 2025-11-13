.class Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;
.super Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;
.source "CategoryMixin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/CategoryMixin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecCategoriesUpdateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/CategoryMixin;


# direct methods
.method constructor <init>(Lcom/android/settings/core/CategoryMixin;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    .line 261
    invoke-direct {p0, p1}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;-><init>(Lcom/android/settings/core/CategoryMixin;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 266
    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$SecCategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    invoke-static {p0}, Lcom/android/settings/core/CategoryMixin;->-$$Nest$fgetmCategoriesUpdateTaskCount(Lcom/android/settings/core/CategoryMixin;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Lcom/android/settings/core/CategoryMixin;->-$$Nest$fputmCategoriesUpdateTaskCount(Lcom/android/settings/core/CategoryMixin;I)V

    return-void
.end method
