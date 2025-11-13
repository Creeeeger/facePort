.class public final Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic val$isMoveUp:Z

.field public final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic val$ret:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic val$scrollPosition:I


# direct methods
.method public constructor <init>(ZLandroidx/recyclerview/widget/RecyclerView;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$isMoveUp:Z

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$scrollPosition:I

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$ret:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$isMoveUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$isMoveUp:Z

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$scrollPosition:I

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$ret:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1$$ExternalSyntheticLambda0;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
