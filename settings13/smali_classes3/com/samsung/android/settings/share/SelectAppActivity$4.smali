.class Lcom/samsung/android/settings/share/SelectAppActivity$4;
.super Ljava/lang/Object;
.source "SelectAppActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/share/SelectAppActivity;->initView(Lcom/samsung/android/settings/share/SelectAppViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mDragHintDotDecoration:Lcom/samsung/android/settings/share/view/DragHintDotDecoration;

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field final synthetic this$0:Lcom/samsung/android/settings/share/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V
    .locals 1

    .line 270
    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Lcom/samsung/android/settings/share/view/DragHintDotDecoration;

    .line 273
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/share/view/DragHintDotDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->mDragHintDotDecoration:Lcom/samsung/android/settings/share/view/DragHintDotDecoration;

    const/4 p1, 0x0

    .line 274
    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->mDragHintDotDecoration:Lcom/samsung/android/settings/share/view/DragHintDotDecoration;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 281
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->-$$Nest$fgetmFavoriteRecyclerView(Lcom/samsung/android/settings/share/SelectAppActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$4;->this$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->-$$Nest$fgetmFavoriteRecyclerView(Lcom/samsung/android/settings/share/SelectAppActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 284
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$4$$ExternalSyntheticLambda0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 270
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$4;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
