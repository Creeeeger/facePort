.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bottomButton1$delegate:Lkotlin/Lazy;

.field public final bottomButton2$delegate:Lkotlin/Lazy;

.field public final bottomButtonContainer$delegate:Lkotlin/Lazy;

.field public buttonOrientation:I

.field public final controller$delegate:Lkotlin/Lazy;

.field public instanceId:I

.field public isRecreate:Z

.field public final listBehavior$delegate:Lkotlin/Lazy;

.field public final listview$delegate:Lkotlin/Lazy;

.field public loadingView:Landroid/view/View;

.field public final pageInfo$delegate:Lkotlin/Lazy;

.field public final resultCallback:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$pageInfo$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$pageInfo$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->pageInfo$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$controller$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$controller$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->controller$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$listBehavior$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$listBehavior$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->listBehavior$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$listview$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$listview$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->listview$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$bottomButtonContainer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$bottomButtonContainer$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->bottomButtonContainer$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$bottomButton1$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$bottomButton1$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->bottomButton1$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$bottomButton2$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$bottomButton2$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->bottomButton2$delegate:Lkotlin/Lazy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->buttonOrientation:I

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->resultCallback:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const-string v3, "KeyboardMouseManager"

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, 0x2000

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v2

    sget-object v12, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->getEventContext()Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;

    move-result-object v13

    sget-object v14, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sPressedKey:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v14, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    if-eqz v12, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->getEventContext()Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v9}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    invoke-interface {v5, v2, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;->onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_1
    move v2, v10

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v14, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v14, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v14, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_b

    invoke-virtual {v1, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, v10}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    invoke-interface {v2, v13, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;->onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_7

    :cond_5
    :goto_2
    invoke-virtual {v14, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    sput-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    const/16 v7, 0x71

    if-ne v2, v7, :cond_6

    invoke-virtual {v14, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_6

    :cond_6
    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;

    invoke-direct {v6, v8}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    invoke-interface {v2, v13, v5, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;->onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_7

    :cond_7
    :goto_3
    invoke-virtual {v14, v4, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    sput-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    if-eqz v12, :cond_b

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    invoke-interface {v2, v13, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;->onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_1

    :cond_8
    :goto_4
    invoke-virtual {v14, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    const/16 v6, 0x3b

    if-eq v2, v6, :cond_a

    const/16 v6, 0x3c

    if-ne v2, v6, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v12, :cond_b

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, v11}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    invoke-interface {v2, v13, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;->onKeyDown(Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;Landroidx/fragment/app/FragmentActivity;Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_7

    :cond_a
    :goto_5
    invoke-virtual {v14, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_b
    :goto_6
    move v2, v11

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isCtrlPressed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sPressedKey:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isShiftPressed : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isAltPressed : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    move v2, v10

    goto/16 :goto_d

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v10, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v2

    sget-object v12, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v10}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v12

    xor-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v14

    xor-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v11

    xor-int/lit8 v6, v11, 0x1

    sget-object v10, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sPressedKey:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v10, v8, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v10, v4, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v13, :cond_e

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    goto :goto_8

    :cond_d
    move-object v4, v5

    :goto_8
    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    :cond_e
    if-eqz v15, :cond_10

    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommandMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    goto :goto_9

    :cond_f
    move-object v4, v5

    :goto_9
    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    :cond_10
    if-eqz v6, :cond_11

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sKeyMouseCommand:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyMouseCommand;

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SU() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CU() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AU() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    :cond_12
    :goto_a
    const/4 v2, 0x1

    goto :goto_c

    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-nez v2, :cond_14

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->getEventContext()Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mPosition:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    if-ne v3, v4, :cond_12

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->getFocusedFilePosition()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_13

    goto :goto_b

    :cond_13
    const/4 v2, 0x0

    :goto_b
    sput v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->sStartPosition:I

    goto :goto_a

    :cond_14
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/ShiftKeyMouseCommand;->clearMetaState(Landroid/view/KeyEvent;)V

    :cond_15
    :goto_c
    const/4 v3, 0x0

    goto :goto_d

    :cond_16
    move v2, v10

    goto :goto_c

    :goto_d
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz v3, :cond_17

    goto :goto_e

    :cond_17
    const/4 v10, 0x0

    goto :goto_f

    :cond_18
    :goto_e
    move v10, v2

    :goto_f
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public final getActivityResultLauncher()Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBottomButton1()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->bottomButton1$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method public final getBottomButton2()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->bottomButton2$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method public final getButtonStr(IILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getCheckedItemCount()I

    move-result v0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    return-object p0
.end method

.method public final getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->listBehavior$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    return-object p0
.end method

.method public final getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->pageInfo$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    return-object p0
.end method

.method public final initButtonOrientation()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v1, 0x1

    const/16 v2, 0x24d

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->buttonOrientation:I

    if-eq v2, v0, :cond_6

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->buttonOrientation:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->bottomButtonContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_3

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton1()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->updateBottomButtonWidth(Landroid/widget/Button;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->updateBottomButtonWidth(Landroid/widget/Button;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_4
    if-eqz v3, :cond_6

    if-eqz v1, :cond_5

    const v0, 0x7f0700aa

    goto :goto_3

    :cond_5
    const v0, 0x7f0700b2

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_6
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const p1, 0x7f0a0425

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "requireViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setFlexibleSpacing(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->initButtonOrientation()V

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType$Companion;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->values()[Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuId()I

    move-result v6

    if-ne v6, p1, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->NONE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    :goto_1
    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuType()I

    move-result p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->execute(ILcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)Z

    return v3
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, -0x1

    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d0072

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->isRecreate:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "instanceId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->instanceId:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onCreate] instanceId : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SubAppListActivity"

    invoke-static {v5, v4}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    :goto_1
    iput v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    iget-boolean v4, v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->isRecreate:Z

    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->setPageInfo(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iput-boolean v3, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mCancelLoad:Z

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->loadListItem(Z)V

    iget-object v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "package"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mPackageBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$1;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    if-eqz v4, :cond_3

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$KeyboardMouseManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_3
    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget v4, v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->instanceId:I

    invoke-static {v4}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->register(Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfo$ActivityInfoListener;)V

    const v4, 0x7f0a106c

    invoke-virtual {v0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    const-string/jumbo v5, "requireViewById(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    const/4 v6, 0x0

    const-string v8, ""

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {v4, v8}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v4, 0x7f0a0a84

    invoke-virtual {v0, v4}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/ui/widget/EmptyView;

    const v9, 0x7f0a012f

    invoke-virtual {v0, v9}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v11

    iget-object v12, v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->bottomButtonContainer$delegate:Lkotlin/Lazy;

    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "bottomButton"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v13, v9, Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    if-eqz v13, :cond_d

    move-object v13, v9

    check-cast v13, Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v14, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iget-object v15, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->context:Landroid/content/Context;

    const-string v7, "context"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v1, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v14, v15, v3, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v14, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v15, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->listViewLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;

    iget-object v6, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;->context:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$getLayoutManager$1;

    invoke-direct {v6, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$getLayoutManager$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;)V

    invoke-virtual {v13, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->context:Landroid/content/Context;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "accessibility"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v6, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    invoke-interface {v15}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/SynchronizedViewPool;

    invoke-direct {v7}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const v15, 0x7f0d0074

    invoke-virtual {v7, v15}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v15

    const/16 v2, 0x14

    iput v2, v15, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    iget-object v15, v15, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    move-object/from16 v18, v5

    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_6

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;

    invoke-direct {v2, v6, v7}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout$initViewPool$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/SynchronizedViewPool;)V

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnWorkThread(Ljava/lang/Runnable;)V

    iget-object v2, v6, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;->layoutListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initListViewLayout$1$1;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initListViewLayout$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    :cond_7
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;

    invoke-direct {v2, v13, v14, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;)V

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;)V

    iput-object v3, v13, Landroidx/recyclerview/widget/RecyclerView;->mOnMultiSelectedListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getSeslOnMultiSelectedListener$1;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->stopPoint:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->startPoint:Ljava/lang/Object;

    const/4 v5, -0x1

    iput v5, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$MultiSelectedInfo;->selectionStartPosition:I

    iput-object v3, v13, Landroidx/recyclerview/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getMouseEventCallBack$1;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getMouseEventCallBack$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener;)V

    sput-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sMouseEventCallBack:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListListener$getMouseEventCallBack$1;

    iget-object v2, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    const-string v3, "getPageType(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->getCapacityOfPercent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x17

    if-eq v6, v7, :cond_9

    const/16 v7, 0x18

    if-eq v6, v7, :cond_8

    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    const v6, 0x7f140419

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_5

    :cond_9
    const v6, 0x7f14041c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_5
    const v7, 0x7f0a0a88

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/settings/analyzestorage/ui/widget/EmptyView;->setSubText(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a0a87

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iput-object v4, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->emptyView:Lcom/samsung/android/settings/analyzestorage/ui/widget/EmptyView;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;

    invoke-direct {v2, v9, v10}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/EmptyDataObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;)V

    invoke-virtual {v14, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iget-object v2, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->listMarginManager$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->listenerList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->listenerList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v2, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initRecyclerView$1$1;

    invoke-direct {v3, v10, v14}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initRecyclerView$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;)V

    invoke-virtual {v2, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iput-object v14, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    iput-object v13, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    goto :goto_6

    :cond_d
    move-object/from16 v18, v5

    move v5, v1

    :goto_6
    iput-object v12, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->bottomButton:Landroid/view/View;

    iput-object v11, v10, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v1, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->initButtonOrientation()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-nez v1, :cond_f

    move v1, v5

    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    sget-object v3, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    goto :goto_7

    :goto_8
    if-ne v1, v3, :cond_10

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->UNINSTALL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    :goto_9
    const/4 v3, 0x0

    goto :goto_a

    :cond_10
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->CLEAR_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v8, v3}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->updateBottomButton1(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton1()Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->updateBottomButton2(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton2$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initBottomButton2$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "getBaseContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f06005c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06003f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton1()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0801e0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton1()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0801bc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    :cond_13
    const v1, 0x7f0a0425

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->setFlexibleSpacing(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initCancelMenu$1;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initCancelMenu$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-virtual {v0, v1, v0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;->CONTENTS_PANEL:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    if-eqz v4, :cond_1c

    iget-object v6, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    if-eqz v3, :cond_1c

    if-eqz v6, :cond_1c

    iget-object v6, v6, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eqz v6, :cond_1c

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_INTERNAL:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_APP_CLONE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_SDCARD:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_USB:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v6, v7, :cond_14

    goto :goto_c

    :cond_14
    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->GOOGLE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ONE_DRIVE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v6, v7, :cond_15

    goto :goto_c

    :cond_15
    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->IMAGES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->AUDIO:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->VIDEOS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->DOCUMENTS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->APK:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v6, v7, :cond_16

    goto :goto_c

    :cond_16
    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->DOWNLOADS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v6, v7, :cond_17

    goto :goto_c

    :cond_17
    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_DUPLICATED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_LARGE_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_CACHED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-eq v6, v7, :cond_19

    if-eq v6, v2, :cond_19

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v6, v2, :cond_18

    goto :goto_c

    :cond_18
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->SEARCH:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v6, v2, :cond_1c

    :cond_19
    :goto_c
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/EnumMap;

    if-nez v7, :cond_1a

    new-instance v7, Ljava/util/EnumMap;

    const-class v8, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    invoke-virtual {v7, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;

    if-nez v2, :cond_1b

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mPosition:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext$EventContextPosition;

    invoke-virtual {v7, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iput-object v4, v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iput-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v5, v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mListBehavior:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/EventContext;->mIsExpandable:Z

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoading:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

    if-nez v1, :cond_1d

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

    :cond_1d
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$listener$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$listener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;

    invoke-direct {v4, v1, v2, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$listener$1;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-virtual {v3, v0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/utils/UiUtils;->initStatusBar(Landroid/app/Activity;)V

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->resultCallback:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "archive_app_package_name_list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_d

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->selectedAppPackageNameList:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    :goto_d
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object p2

    iget-object p2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getCheckedItemCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const p3, 0x7f0f0002

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object p3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne p0, p3, :cond_0

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->CLEAR_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->UNINSTALL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 p3, 0x1

    xor-int/2addr p0, p3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;->checkedItemLoader:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mLoadHandler:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;->instance:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->instanceId:I

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->activityListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->resultCallback:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x22bb

    goto :goto_0

    :cond_0
    const/16 v0, 0x22be

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public final updateBottomButton1(Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton1()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->updateBottomButtonWidth(Landroid/widget/Button;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton1()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v2, v3, :cond_1

    const v2, 0x7f140414

    const v3, 0x7f120010

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getButtonStr(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const v2, 0x7f1403ee

    const v3, 0x7f12000c

    invoke-virtual {p0, v2, v3, p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getButtonStr(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton1()Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const p1, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public final updateBottomButton2(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->updateBottomButtonWidth(Landroid/widget/Button;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f14040e

    const v2, 0x7f12000a

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getButtonStr(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getBottomButton2()Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final updateBottomButtonWidth(Landroid/widget/Button;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;-><init>(Landroid/widget/Button;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
