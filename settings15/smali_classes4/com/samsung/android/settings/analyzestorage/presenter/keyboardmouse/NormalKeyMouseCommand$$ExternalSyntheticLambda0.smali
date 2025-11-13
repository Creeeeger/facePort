.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;->f$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/NormalKeyMouseCommand$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sput p1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->sStartPosition:I

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
