.class public Lcom/samsung/android/settings/share/SelectAppActivity;
.super Lcom/samsung/android/settings/share/SelectBaseActivity;
.source "SelectAppActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/share/SelectAppActivity$HideLayoutManager;
    }
.end annotation


# instance fields
.field private final MAX_ROW_FULL_COLUMN_COUNT:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCompRankMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

.field private mDBOriginalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/DBShareComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

.field private mFavoriteCompList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

.field private mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mInitialListPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMiddleDescription:Lcom/samsung/android/settings/share/view/AnimateFrameLayout;

.field private mNoItemTextView:Landroid/widget/TextView;

.field private mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

.field private mOthersCompList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mOthersContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

.field private final mScrollToLastRunnable:Ljava/lang/Runnable;

.field private mSourcesIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

.field private final offsetItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;


# direct methods
.method public static synthetic $r8$lambda$-bSLhRUIbGU4r1YqaIRhASJ6xko(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$isFavoriteNotUpdated$9(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1L6fOYKPzL4lui8hSk-oO81u-Pg(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$initCompRankMap$7(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1oIrualBRMNT0kK_trt7wA-AdDc(Lcom/samsung/android/settings/share/SelectAppActivity;Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$initView$3(Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6rUJ7UylNgBfNmR8lieXiWY-pwY(Lcom/samsung/android/settings/share/SelectAppViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$onSaveInstanceState$13(Lcom/samsung/android/settings/share/SelectAppViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Il1bE8WgZamNHOEYhV_J5OTZd_E(Lcom/samsung/android/settings/share/structure/DBShareComponent;Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$getDatabaseShareComponentList$6(Lcom/samsung/android/settings/share/structure/DBShareComponent;Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8_czDIGgGLuXWNDUMCyilUgqEQ(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$onCreate$1(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Q46xqz0q2cN8_JDzBuFi-dewU5A(Ljava/util/ArrayList;Lcom/samsung/android/settings/share/structure/ShareComponent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$initCompList$8(Ljava/util/ArrayList;Lcom/samsung/android/settings/share/structure/ShareComponent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T5T9-pOld39sYD4DQGF3WrixZ64(Lcom/samsung/android/settings/share/SelectAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$initView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$_Dl1MM3ZBM2HDFA86ENYuz6C1OY(Lcom/samsung/android/settings/share/structure/ShareComponent;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$saveData$10(Lcom/samsung/android/settings/share/structure/ShareComponent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ayApKmwtetLQKCVoT7TiGkETS4I(Landroid/view/MenuItem;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$onCreateOptionsMenu$14(Landroid/view/MenuItem;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jKtZXsQeCIitbwX5EbNZ9IYGMUo(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$getSourcesIntentList$5(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nZiY_zEqvbKXdh3mMSDP0-Y6GTY(Lcom/samsung/android/settings/share/SelectAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$rs43nPGgBavVf-e5W7tmUCfUW3U(Lcom/samsung/android/settings/share/SelectAppActivity;Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$initView$2(Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBqfaYGmRkyn4_97zUp_lW4PjcE(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/Iterator;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$saveData$11(Ljava/util/Iterator;Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vgkWRTaZBK_YPhhrtznvVXqmJXI(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/share/SelectAppActivity;->lambda$saveData$12(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFavoriteAdapter(Lcom/samsung/android/settings/share/SelectAppActivity;)Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFavoriteRecyclerView(Lcom/samsung/android/settings/share/SelectAppActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOthersAdapter(Lcom/samsung/android/settings/share/SelectAppActivity;)Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectBaseActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersCompList:Ljava/util/ArrayList;

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mCompRankMap:Ljava/util/Map;

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSourcesIntentList:Ljava/util/List;

    const/4 v0, 0x4

    .line 96
    iput v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->MAX_ROW_FULL_COLUMN_COUNT:I

    .line 104
    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mScrollToLastRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$1;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->offsetItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-void
.end method

.method private calculateFavoriteRowsLimit(F)Ljava/lang/Float;
    .locals 1

    const p0, 0x40133333    # 2.3f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 358
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x40533333    # 3.3f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const p0, 0x3fa66666    # 1.3f

    .line 360
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 362
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private doRevert()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 442
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersCompList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersCompList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateNoItemText()V

    const/4 v0, 0x1

    .line 447
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/share/SelectAppActivity;->startRecyclerViewSizeAnimation(Z)V

    return-void
.end method

.method private generateTalkbackMessage(Ljava/lang/String;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4000

    .line 540
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 543
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method private getDatabaseShareComponentList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/DBShareComponent;",
            ">;"
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    .line 316
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->open()V

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->getAllRankedLabelComponents()Ljava/util/List;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 321
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 322
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->close()V

    .line 323
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/share/structure/DBShareComponent;

    .line 324
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    .line 325
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/share/structure/DBShareComponent;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 326
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/settings/share/structure/DBShareComponent;)V

    .line 327
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSourcesIntentList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 306
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda15;-><init>()V

    .line 307
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 308
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSourcesIntentList : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "share_SelectApp"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private initCompList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/CallerComponent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/DBShareComponent;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;>;"
        }
    .end annotation

    .line 344
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p3, 0x0

    .line 345
    invoke-virtual {p0, p3, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 348
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 349
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda6;-><init>(Ljava/util/ArrayList;)V

    .line 350
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 351
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 353
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private initCompRankMap(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 334
    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    .line 335
    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private initView(Lcom/samsung/android/settings/share/SelectAppViewModel;)V
    .locals 6

    .line 165
    sget v0, Lcom/android/settings/R$layout;->sec_share_activity_select_app:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 167
    new-instance v0, Lcom/samsung/android/settings/share/controller/TileDragController;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/controller/TileDragController;-><init>(Lcom/samsung/android/settings/share/presenter/SelectAppPresenter;)V

    .line 169
    sget v1, Lcom/android/settings/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 170
    sget v2, Lcom/android/settings/R$color;->sec_share_toolbar_title_color:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 172
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 177
    :cond_0
    sget v1, Lcom/android/settings/R$id;->use_no_item_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    .line 179
    sget v1, Lcom/android/settings/R$id;->description_container:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mMiddleDescription:Lcom/samsung/android/settings/share/view/AnimateFrameLayout;

    .line 180
    sget v1, Lcom/android/settings/R$id;->favorite_container:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    .line 181
    sget v1, Lcom/android/settings/R$id;->others_container:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    .line 183
    sget v1, Lcom/android/settings/R$id;->favorite_recycler_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    iget-object v2, v0, Lcom/samsung/android/settings/share/controller/TileDragController;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 186
    new-instance v1, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSourcesIntentList:Ljava/util/List;

    invoke-direct {v1, p0, v2, p1}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/settings/share/SelectAppViewModel;)V

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    .line 187
    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->setComponentList(Ljava/util/ArrayList;)V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->setCustomDragListener(Lcom/samsung/android/settings/share/controller/TileDragController;)V

    .line 190
    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$2;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;Landroid/content/Context;Lcom/samsung/android/settings/share/SelectAppViewModel;)V

    .line 211
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 212
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/samsung/android/settings/share/structure/ShareTileTag;

    iget-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/share/structure/ShareTileTag;-><init>(Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$HideLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/share/SelectAppActivity$HideLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->offsetItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateNoItemSelectTextVisibility()V

    .line 222
    new-instance v1, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mCompRankMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSourcesIntentList:Ljava/util/List;

    invoke-direct {v1, p0, v2, v5, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/samsung/android/settings/share/SelectAppViewModel;)V

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    .line 223
    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersCompList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->setComponents(Ljava/util/ArrayList;)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->setCustomDragListener(Lcom/samsung/android/settings/share/controller/TileDragController;)V

    .line 226
    sget v1, Lcom/android/settings/R$id;->others_recycler_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 228
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 230
    iget-object v2, v0, Lcom/samsung/android/settings/share/controller/TileDragController;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 231
    new-instance v2, Lcom/samsung/android/settings/share/structure/ShareTileTag;

    iget-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/share/structure/ShareTileTag;-><init>(Lcom/samsung/android/settings/share/presenter/TileContainerPresenter;Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 232
    iget-object v2, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->offsetItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->setOnItemRemoved(Landroidx/core/util/Consumer;)V

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->setOnItemRemoved(Landroidx/core/util/Consumer;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 252
    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$3;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;Lcom/samsung/android/settings/share/SelectAppViewModel;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/share/controller/TileDragController;->setOnTileDragChangeListener(Lcom/samsung/android/settings/share/controller/TileDragController$OnDragStateChangeListener;)V

    .line 270
    iget-object p1, p1, Lcom/samsung/android/settings/share/SelectAppViewModel;->isDraggingLiveData:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/share/SelectAppActivity$4;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private isFavoriteNotUpdated(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/share/structure/ShareComponent;",
            ">;)Z"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    .line 428
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;)V

    .line 429
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method private isShowFrequencyUsedAppText()Z
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 552
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 553
    instance-of v0, p0, Lcom/samsung/android/settings/share/structure/CallerComponent;

    if-nez v0, :cond_1

    return v1

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.app.sharelive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDatabaseShareComponentList$6(Lcom/samsung/android/settings/share/structure/DBShareComponent;Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 0

    .line 327
    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getLabelPair()Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/structure/DBShareComponent;->setLabelPair(Landroid/util/Pair;)V

    return-void
.end method

.method private static synthetic lambda$getSourcesIntentList$5(Ljava/util/List;)Z
    .locals 0

    .line 307
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$initCompList$8(Ljava/util/ArrayList;Lcom/samsung/android/settings/share/structure/ShareComponent;)Z
    .locals 0

    .line 350
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initCompRankMap$7(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    return-object p0
.end method

.method private synthetic lambda$initView$2(Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->addTileLast(Lcom/samsung/android/settings/share/structure/ShareComponent;)I

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateNoItemSelectTextVisibility()V

    const/4 v0, 0x1

    .line 237
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/share/SelectAppActivity;->startRecyclerViewSizeAnimation(Z)V

    .line 239
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_share_select_added_to_favorite:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getLabelPair()Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->generateTalkbackMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initView$3(Lcom/samsung/android/settings/share/structure/ShareComponent;)V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersAdapter:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->addTileLast(Lcom/samsung/android/settings/share/structure/ShareComponent;)I

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateNoItemSelectTextVisibility()V

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/share/SelectAppActivity;->startRecyclerViewSizeAnimation(Z)V

    .line 247
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_share_select_removed_from_favorite:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getLabelPair()Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->generateTalkbackMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initView$4()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/share/SelectAppActivity;->startRecyclerViewSizeAnimation(Z)V

    return-void
.end method

.method private synthetic lambda$isFavoriteNotUpdated$9(Ljava/util/List;I)Z
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 431
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 432
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/structure/ShareComponent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onCreate$1(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    const-class v1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 145
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 144
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static synthetic lambda$onCreateOptionsMenu$14(Landroid/view/MenuItem;Ljava/lang/Boolean;)V
    .locals 2

    .line 507
    invoke-interface {p0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private static synthetic lambda$onSaveInstanceState$13(Lcom/samsung/android/settings/share/SelectAppViewModel;)Ljava/lang/Boolean;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$saveData$10(Lcom/samsung/android/settings/share/structure/ShareComponent;)Z
    .locals 0

    .line 453
    instance-of p0, p0, Lcom/samsung/android/settings/share/structure/CallerComponent;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$saveData$11(Ljava/util/Iterator;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    .line 463
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {p0, p2, p3, p1}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->updateRankedItem(Landroid/database/sqlite/SQLiteDatabase;ILcom/samsung/android/settings/share/structure/ShareComponent;)J

    goto :goto_0

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->removeRankedApp(Landroid/database/sqlite/SQLiteDatabase;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$saveData$12(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 459
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda17;-><init>()V

    .line 461
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/Iterator;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 462
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 469
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->insertRankedAppTargetItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/settings/share/structure/ShareComponent;)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveData()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda10;-><init>()V

    .line 453
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 454
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 455
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/share/SelectAppActivity;->isFavoriteNotUpdated(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBAdapter:Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->transaction(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private startRecyclerViewSizeAnimation(Z)V
    .locals 7

    .line 366
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    sget v1, Lcom/android/settings/R$id;->shared_favorite_list_label:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 369
    sget v2, Lcom/android/settings/R$id;->main_container:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 371
    iget-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 373
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mMiddleDescription:Lcom/samsung/android/settings/share/view/AnimateFrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    .line 374
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 376
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->sec_share_select_app_item_container_vertical_offset:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 377
    sget v6, Lcom/android/settings/R$dimen;->sec_share_select_app_item_height:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v5

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    if-gtz v2, :cond_1

    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$dimen;->sec_share_select_app_item_container_default_padding_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 387
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_share_select_app_item_container_default_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 397
    iget-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    .line 398
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    :goto_1
    add-int v5, v1, v0

    add-int/2addr v5, v4

    sub-int v1, v2, v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v4, v1, v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v4, :cond_3

    move v0, v5

    goto :goto_2

    .line 410
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/share/SelectAppActivity;->calculateFavoriteRowsLimit(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v4, v5

    sub-float v5, v1, v6

    mul-float/2addr v0, v5

    add-float/2addr v4, v0

    float-to-int v5, v4

    sub-int v0, v2, v5

    move v6, v1

    :goto_2
    int-to-float v1, v3

    cmpl-float v1, v1, v6

    if-lez v1, :cond_4

    if-eqz p1, :cond_4

    .line 415
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mScrollToLastRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->setDoOnEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 417
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->setDoOnEndRunnable(Ljava/lang/Runnable;)V

    .line 419
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    invoke-virtual {p1, v5}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->animateHeight(I)V

    .line 420
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersContainer:Lcom/samsung/android/settings/share/view/AllRoundViewGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/share/view/AnimateFrameLayout;->animateHeight(I)V

    return-void
.end method

.method private updateNoItemSelectTextVisibility()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->isShowFrequencyUsedAppText()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 567
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteAdapter:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 571
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 573
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mNoItemTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 478
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 479
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    if-eqz p1, :cond_0

    .line 480
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->initView(Lcom/samsung/android/settings/share/SelectAppViewModel;)V

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectBaseActivity;->measureContentFrame()V

    const/4 p1, 0x0

    .line 483
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->startRecyclerViewSizeAnimation(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 125
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    const-class v1, Landroid/content/Intent;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 128
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/share/SelectAppActivity;->getSourcesIntentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mSourcesIntentList:Ljava/util/List;

    .line 129
    invoke-static {v0}, Lcom/samsung/android/settings/share/common/ShareUtil;->getShareComponentsFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 130
    invoke-static {v0}, Lcom/samsung/android/settings/share/common/ShareUtil;->getCallerComponentsFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/share/SelectAppActivity;->getDatabaseShareComponentList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 132
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mDBOriginalList:Ljava/util/List;

    .line 134
    new-instance v3, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v3, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v4, Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/share/SelectAppViewModel;

    iput-object v3, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    if-nez p1, :cond_0

    .line 137
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/share/SelectAppActivity;->initCompRankMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mCompRankMap:Ljava/util/Map;

    .line 139
    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/settings/share/SelectAppActivity;->initCompList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersCompList:Ljava/util/ArrayList;

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    const-string v1, "instance_key_favorites"

    .line 147
    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    const-string v1, "instance_key_others"

    .line 148
    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersCompList:Ljava/util/ArrayList;

    const-string v1, "instance_key_initial_favorites"

    .line 150
    invoke-interface {v0, v1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "instance_key_initial_others"

    .line 151
    invoke-interface {v0, v2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 153
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    iget-object v0, v0, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "instance_key_modified"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 158
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->initView(Lcom/samsung/android/settings/share/SelectAppViewModel;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/share/SelectBaseActivity;->measureContentFrame()V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 503
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$menu;->sec_share_edit_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 504
    sget v0, Lcom/android/settings/R$id;->menu_revert:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, v1, Lcom/samsung/android/settings/share/SelectAppViewModel;->modifiedLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda2;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 513
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 518
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 519
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return v1

    .line 522
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v2, Lcom/android/settings/R$id;->menu_revert:I

    if-ne v0, v2, :cond_1

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->doRevert()V

    return v1

    .line 526
    :cond_1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->saveData()V

    .line 532
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 302
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 488
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 489
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mFavoriteCompList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 490
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v2, "instance_key_favorites"

    .line 489
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mOthersCompList:Ljava/util/ArrayList;

    new-array v2, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 492
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v2, "instance_key_others"

    .line 491
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-array v2, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 494
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v2, "instance_key_initial_favorites"

    .line 493
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 495
    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mInitialListPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-array v1, v1, [Lcom/samsung/android/settings/share/structure/ShareComponent;

    .line 496
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "instance_key_initial_others"

    .line 495
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 497
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity;->mViewModel:Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 498
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 497
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "instance_key_modified"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public resizeRecyclerView(Z)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->startRecyclerViewSizeAnimation(Z)V

    return-void
.end method

.method public updateNoItemText()V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/share/SelectAppActivity;->updateNoItemSelectTextVisibility()V

    return-void
.end method
