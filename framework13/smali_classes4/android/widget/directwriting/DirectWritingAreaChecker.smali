.class public Landroid/widget/directwriting/DirectWritingAreaChecker;
.super Ljava/lang/Object;
.source "DirectWritingAreaChecker.java"


# static fields
.field static final blacklist DEBUG_LEVEL_MID:Z


# instance fields
.field private blacklist mIsVisibleWritingViewChanged:Z

.field private blacklist mNeedToCheckWritingViews:Z

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mWritingViewMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/directwriting/WritingView;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWritingViewsAndVisibility:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/widget/directwriting/WritingView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/samsung/android/rune/ViewRune;->isDebugLevelMid()Z

    move-result v0

    sput-boolean v0, Landroid/widget/directwriting/DirectWritingAreaChecker;->DEBUG_LEVEL_MID:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "DirectWritingAreaChecker"

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mTag:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewMap:Landroid/util/ArrayMap;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mNeedToCheckWritingViews:Z

    .line 32
    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mIsVisibleWritingViewChanged:Z

    return-void
.end method

.method private blacklist createInputConnection(Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 161
    new-instance v0, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v0}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 162
    .local v0, "tba":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/EditorInfo;->autofillId:Landroid/view/autofill/AutofillId;

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 167
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    return-object v1
.end method

.method private blacklist getWritingViewFromObject(Landroid/view/View;)Landroid/widget/directwriting/WritingView;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 171
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/directwriting/WritingView;

    return-object v0
.end method

.method static synthetic blacklist lambda$getVisibleWritingViewsIfNeeded$1(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 139
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist removeWritingView(Landroid/widget/directwriting/WritingView;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/directwriting/WritingView;

    .line 93
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 95
    monitor-exit v0

    return-void

    .line 98
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/widget/directwriting/DirectWritingAreaChecker;->DEBUG_LEVEL_MID:Z

    if-eqz v1, :cond_2

    .line 99
    :cond_1
    const-string v1, "DirectWritingAreaChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectWriting, removeWritingView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mNeedToCheckWritingViews:Z

    .line 104
    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mIsVisibleWritingViewChanged:Z

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateVisibleWritingViewsLocked(Landroid/widget/directwriting/WritingView;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/directwriting/WritingView;
    .param p2, "wasVisible"    # Z

    .line 146
    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->isVisibleToUser()Z

    move-result v0

    .line 148
    .local v0, "nowVisible":Z
    if-ne v0, p2, :cond_0

    .line 149
    return-void

    .line 152
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectWriting, Writing View visible changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirectWritingAreaChecker"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mIsVisibleWritingViewChanged:Z

    .line 158
    return-void
.end method


# virtual methods
.method public blacklist addCandidateWritingView(Landroid/widget/directwriting/WritingView;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/directwriting/WritingView;

    .line 72
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    monitor-exit v0

    return-void

    .line 76
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/widget/directwriting/DirectWritingAreaChecker;->DEBUG_LEVEL_MID:Z

    if-eqz v1, :cond_2

    .line 77
    :cond_1
    const-string v1, "DirectWritingAreaChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectWriting, addCandidateWritingView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mNeedToCheckWritingViews:Z

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist checkICAndAddWritingView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/directwriting/DirectWritingAreaChecker;->createInputConnection(Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 48
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    invoke-static {p1, v0}, Landroid/widget/directwriting/WritingViewFactory;->createWritingView(Landroid/view/View;Landroid/view/inputmethod/InputConnection;)Landroid/widget/directwriting/WritingView;

    move-result-object v1

    .line 52
    .local v1, "writingView":Landroid/widget/directwriting/WritingView;
    invoke-virtual {p0, v1}, Landroid/widget/directwriting/DirectWritingAreaChecker;->addCandidateWritingView(Landroid/widget/directwriting/WritingView;)V

    .line 53
    return-void
.end method

.method public blacklist checkICAndAddWritingView(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/EditText;

    .line 56
    invoke-static {p1}, Landroid/widget/directwriting/WritingViewFactory;->createWritingView(Landroid/view/View;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    .line 57
    .local v0, "writingView":Landroid/widget/directwriting/WritingView;
    invoke-virtual {p0, v0}, Landroid/widget/directwriting/DirectWritingAreaChecker;->addCandidateWritingView(Landroid/widget/directwriting/WritingView;)V

    .line 58
    return-void
.end method

.method public blacklist checkViewAndRemoveWritingView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/directwriting/DirectWritingAreaChecker;->getWritingViewFromObject(Landroid/view/View;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    .line 87
    .local v0, "writingView":Landroid/widget/directwriting/WritingView;
    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, v0}, Landroid/widget/directwriting/DirectWritingAreaChecker;->removeWritingView(Landroid/widget/directwriting/WritingView;)V

    .line 90
    :cond_0
    return-void
.end method

.method public blacklist getVisibleWritingViewsIfNeeded(Z)Ljava/util/List;
    .locals 6
    .param p1, "forced"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/widget/directwriting/WritingView;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-boolean v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mNeedToCheckWritingViews:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v1

    .line 122
    :cond_0
    const-string v1, "DirectWriting, getVisibleWritingViewsIfNeeded()"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 125
    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v1, :cond_1

    .line 126
    const-string v1, "DirectWritingAreaChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DirectWriting, mWritingView.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    .line 127
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    new-instance v4, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda0;-><init>(Landroid/widget/directwriting/DirectWritingAreaChecker;)V

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mNeedToCheckWritingViews:Z

    .line 136
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda1;-><init>()V

    .line 139
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/widget/directwriting/DirectWritingAreaChecker$$ExternalSyntheticLambda2;-><init>()V

    .line 140
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 141
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 138
    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getWritingViewsAndVisibility()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Landroid/widget/directwriting/WritingView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist isVisibleWritingViewChanged()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mIsVisibleWritingViewChanged:Z

    return v0
.end method

.method synthetic blacklist lambda$getVisibleWritingViewsIfNeeded$0$android-widget-directwriting-DirectWritingAreaChecker(Landroid/widget/directwriting/WritingView;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/directwriting/WritingView;
    .param p2, "visibility"    # Ljava/lang/Boolean;

    .line 131
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/widget/directwriting/DirectWritingAreaChecker;->updateVisibleWritingViewsLocked(Landroid/widget/directwriting/WritingView;Z)V

    .line 132
    return-void
.end method

.method public blacklist releaseObject()V
    .locals 2

    .line 109
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mWritingViewsAndVisibility:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setVisibleWritingViewChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 39
    iput-boolean p1, p0, Landroid/widget/directwriting/DirectWritingAreaChecker;->mIsVisibleWritingViewChanged:Z

    .line 40
    return-void
.end method

.method public blacklist updateICForWritingView(Landroid/view/View;Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/directwriting/DirectWritingAreaChecker;->getWritingViewFromObject(Landroid/view/View;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    .line 62
    .local v0, "writingView":Landroid/widget/directwriting/WritingView;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p2}, Landroid/widget/directwriting/WritingView;->setInputConnection(Landroid/view/inputmethod/InputConnection;)V

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-static {p1, p2}, Landroid/widget/directwriting/WritingViewFactory;->createWritingView(Landroid/view/View;Landroid/view/inputmethod/InputConnection;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/directwriting/DirectWritingAreaChecker;->addCandidateWritingView(Landroid/widget/directwriting/WritingView;)V

    .line 69
    return-void
.end method
