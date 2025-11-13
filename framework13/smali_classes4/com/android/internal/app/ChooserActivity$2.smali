.class Lcom/android/internal/app/ChooserActivity$2;
.super Landroid/app/SharedElementCallback;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;

    .line 1931
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1934
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    const-string/jumbo v0, "screenshot_preview_image"

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1936
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemShouldSkipAnim(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1940
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    const-string/jumbo v2, "sem_shared_element_chooser_preview_image"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmHaveGallerySharedElement(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMapSharedElements: mHaveGallerySharedElement = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmHaveGallerySharedElement(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ChooserActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmHaveGallerySharedElement(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1943
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnabledEnterVI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1944
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMultiSelectLayoutManager(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v3, v3, Lcom/android/internal/app/ChooserActivity;->mScrolltoPosition:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1945
    .local v0, "centerView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1946
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1947
    const v3, 0x102054f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1948
    .local v3, "sharedView":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    .line 1949
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmHaveGallerySharedElement(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1953
    .end local v0    # "centerView":Landroid/view/View;
    .end local v3    # "sharedView":Landroid/widget/ImageView;
    :cond_1
    goto :goto_0

    .line 1954
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmHaveGallerySharedElement(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1958
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1959
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1960
    return-void
.end method
