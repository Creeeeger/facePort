.class public Landroid/widget/directwriting/DirectWritingTrigger;
.super Ljava/lang/Object;
.source "DirectWritingTrigger.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "[DWT]"

.field private static final blacklist LOG_TAG_EVENT:Ljava/lang/String; = "[DWTE]"

.field private static final blacklist LOG_TAG_PROCDIRECTWRITINGFLAG:Ljava/lang/String; = "procDirectWritingFlag"


# instance fields
.field private final blacklist binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

.field private blacklist hasSelectionWhenActionDown:Z

.field private blacklist mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentViewRootHash:J

.field private final blacklist mDebugWindow:Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

.field private blacklist mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

.field private blacklist mHideDelayTimer:Ljava/util/Timer;

.field private blacklist mIsActionDownStartedInTriggerRect:Z

.field private blacklist mIsKeepingWriting:Z

.field private blacklist mIsNotBindable:Z

.field private blacklist mKeepWritingTimer:Ljava/util/Timer;

.field private blacklist mMoveDistance:I

.field private blacklist mOrgX:I

.field private blacklist mOrgY:I

.field private blacklist mPreFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

.field private blacklist mRootView:Landroid/view/View;

.field private blacklist mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

.field private final blacklist mTriggerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewRootCallback:Landroid/widget/directwriting/DirectWritingViewRootCallback;

.field private blacklist mWasButtonPressed:Z

.field private final blacklist mWritingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/directwriting/WritingView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbinder(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingServiceBinder;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingServiceConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFoundTriggerWritingView(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/WritingView;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHideDelayTimer(Landroid/widget/directwriting/DirectWritingTrigger;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mHideDelayTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeepWritingTimer(Landroid/widget/directwriting/DirectWritingTrigger;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mKeepWritingTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRootView(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRootCallback(Landroid/widget/directwriting/DirectWritingTrigger;)Landroid/widget/directwriting/DirectWritingViewRootCallback;
    .locals 0

    iget-object p0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mViewRootCallback:Landroid/widget/directwriting/DirectWritingViewRootCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsKeepingWriting(Landroid/widget/directwriting/DirectWritingTrigger;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRects(Landroid/widget/directwriting/DirectWritingTrigger;Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->addRects(Landroid/content/Context;Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindTriggerEditTextWithEventPos(Landroid/widget/directwriting/DirectWritingTrigger;FF)Landroid/widget/directwriting/WritingView;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->findTriggerEditTextWithEventPos(FF)Landroid/widget/directwriting/WritingView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUselessWritingView(Landroid/widget/directwriting/DirectWritingTrigger;Landroid/widget/directwriting/WritingView;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/directwriting/DirectWritingTrigger;->isUselessWritingView(Landroid/widget/directwriting/WritingView;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/widget/directwriting/DirectWritingViewRootCallback;)V
    .locals 3
    .param p1, "viewRootCallback"    # Landroid/widget/directwriting/DirectWritingViewRootCallback;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/widget/directwriting/DirectWritingServiceBinder;->getInstance()Landroid/widget/directwriting/DirectWritingServiceBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    .line 37
    invoke-static {}, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;->getInstance()Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mDebugWindow:Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWritingViews:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerRects:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsActionDownStartedInTriggerRect:Z

    .line 45
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mKeepWritingTimer:Ljava/util/Timer;

    .line 46
    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    .line 47
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mHideDelayTimer:Ljava/util/Timer;

    .line 49
    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsNotBindable:Z

    .line 50
    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    .line 52
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    .line 60
    iput-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mPreFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    .line 61
    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->hasSelectionWhenActionDown:Z

    .line 63
    new-instance v0, Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    invoke-direct {v0}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;-><init>()V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    .line 65
    new-instance v0, Landroid/widget/directwriting/DirectWritingTrigger$1;

    invoke-direct {v0, p0}, Landroid/widget/directwriting/DirectWritingTrigger$1;-><init>(Landroid/widget/directwriting/DirectWritingTrigger;)V

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    .line 107
    const-string v0, "[DWT]"

    const-string v1, "DirectWritingTrigger created"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mViewRootCallback:Landroid/widget/directwriting/DirectWritingViewRootCallback;

    .line 109
    return-void
.end method

.method private blacklist addRects(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootViewRect"    # Landroid/graphics/Rect;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "editRect":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v1, "isOptionRestrictDwArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v2}, Landroid/widget/directwriting/DirectWritingServiceBinder;->getBoundedEditText()Landroid/widget/directwriting/WritingView;

    move-result-object v2

    .line 176
    .local v2, "boundedWritingView":Landroid/widget/directwriting/WritingView;
    const/4 v3, 0x0

    .line 178
    .local v3, "isBoundedRectChanged":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRects mEditTexts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWritingViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[DWT]"

    invoke-static {v5, v4}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWritingViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/directwriting/WritingView;

    .line 180
    .local v6, "writingView":Landroid/widget/directwriting/WritingView;
    invoke-virtual {v6}, Landroid/widget/directwriting/WritingView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 181
    invoke-static {v6}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnWindow(Landroid/widget/directwriting/WritingView;)Landroid/graphics/Rect;

    move-result-object v7

    .line 182
    .local v7, "rect":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-ltz v8, :cond_1

    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-ltz v8, :cond_1

    invoke-virtual {v6}, Landroid/widget/directwriting/WritingView;->getWidth()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v6}, Landroid/widget/directwriting/WritingView;->getHeight()I

    move-result v8

    if-gtz v8, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 183
    :cond_1
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addRects not in valid position or size, not send, view="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/widget/directwriting/WritingView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 188
    invoke-static {v2}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnWindow(Landroid/widget/directwriting/WritingView;)Landroid/graphics/Rect;

    move-result-object v8

    .line 189
    .local v8, "boundedRect":Landroid/graphics/Rect;
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 190
    const/4 v3, 0x1

    .line 191
    move-object v2, v6

    .line 194
    .end local v8    # "boundedRect":Landroid/graphics/Rect;
    :cond_2
    invoke-direct {p0, v6}, Landroid/widget/directwriting/DirectWritingTrigger;->isPrivateImeOptionRestrictDwArea(Landroid/widget/directwriting/WritingView;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v6    # "writingView":Landroid/widget/directwriting/WritingView;
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_3
    goto :goto_0

    .line 197
    :cond_4
    invoke-direct {p0, v0, p2, v1}, Landroid/widget/directwriting/DirectWritingTrigger;->adjustTriggerRect(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;)V

    .line 199
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 200
    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v4, v2}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onBoundedEditTextChanged(Landroid/widget/directwriting/WritingView;)V

    .line 203
    :cond_5
    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mDebugWindow:Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerRects:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    invoke-virtual {v4, p1, v5, v6}, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;->attach(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 204
    return-void
.end method

.method private blacklist adjustTriggerRect(Ljava/util/List;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 3
    .param p2, "rootViewRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "editRect":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "isOptionRestrictDwArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    .line 210
    invoke-virtual {v0}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getTriggerHorizontalSpace()I

    move-result v0

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    .line 211
    invoke-virtual {v1}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getTriggerVerticalSpace()I

    move-result v1

    .line 207
    invoke-static {p1, p2, v0, v1, p3}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->switchToTriggerRect(Ljava/util/List;Landroid/graphics/Rect;IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "adjustedRect":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustTriggerRect editRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adjustedRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rootViewRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DWT]"

    invoke-static {v2, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    return-void
.end method

.method private blacklist bindAndStartJob(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .line 343
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 344
    .local v0, "action":I
    iget-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 345
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    const-string v4, "[DWTE]"

    if-eqz v1, :cond_3

    .line 346
    invoke-direct {p0, v1}, Landroid/widget/directwriting/DirectWritingTrigger;->isUselessWritingView(Landroid/widget/directwriting/WritingView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string/jumbo v1, "onPenEvent not available edit text to bind"

    invoke-static {v4, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iput-boolean v3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsActionDownStartedInTriggerRect:Z

    .line 349
    return v3

    .line 351
    :cond_0
    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    iget-wide v8, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    iget-object v10, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    iget-object v11, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    iget-object v12, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v12}, Landroid/widget/directwriting/DirectWritingServiceBinder;->bindAndStart(Landroid/content/Context;Landroid/view/MotionEvent;JLandroid/view/View;Landroid/widget/directwriting/WritingView;Landroid/widget/directwriting/DirectWritingTriggerCallback;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsActionDownStartedInTriggerRect:Z

    .line 354
    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v1}, Landroid/widget/directwriting/WritingView;->getTop()I

    move-result v1

    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    invoke-virtual {v4}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getTransientBarRejectDistance()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 356
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mViewRootCallback:Landroid/widget/directwriting/DirectWritingViewRootCallback;

    invoke-interface {v1}, Landroid/widget/directwriting/DirectWritingViewRootCallback;->disableTransientBars()V

    .line 358
    :cond_1
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingCompat;->setDWSelectionFlag(Landroid/widget/directwriting/WritingView;Z)V

    goto :goto_0

    .line 360
    :cond_2
    const-string v1, "Can\'t bind and start DirectWriting. determinded from DirectWritingService."

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    :cond_3
    iput-boolean v3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsActionDownStartedInTriggerRect:Z

    .line 365
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onFinishWriting()V

    .line 366
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mViewRootCallback:Landroid/widget/directwriting/DirectWritingViewRootCallback;

    invoke-interface {v1}, Landroid/widget/directwriting/DirectWritingViewRootCallback;->enableTransientBars()V

    .line 367
    const-string/jumbo v1, "onPenEvent ACTION_DOWN outside of rect, do not dispatch following event, reset flag"

    invoke-static {v4, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsActionDownStartedInTriggerRect:Z

    if-eqz v1, :cond_6

    .line 372
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    if-eqz v1, :cond_5

    .line 373
    invoke-virtual {v1}, Landroid/widget/directwriting/WritingView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    .line 372
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/directwriting/DirectWritingTrigger;->handlePenEvent(Landroid/content/Context;Landroid/view/MotionEvent;Z)Z

    move-result v1

    return v1

    .line 375
    :cond_6
    return v3
.end method

.method private blacklist callBindService(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J

    .line 116
    const-string v0, "callBindService started"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 118
    iput-wide p2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    .line 119
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerCallback:Landroid/widget/directwriting/DirectWritingTriggerCallback;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->bindService(Landroid/content/Context;JLandroid/widget/directwriting/DirectWritingTriggerCallback;)V

    .line 121
    const-string v0, "callBindService finish"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 122
    return-void
.end method

.method private blacklist clearEditText()V
    .locals 1

    .line 551
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWritingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    .line 554
    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mPreFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    .line 555
    return-void
.end method

.method private blacklist findTriggerEditText(Landroid/view/MotionEvent;)Landroid/widget/directwriting/WritingView;
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/directwriting/DirectWritingTrigger;->findTriggerEditTextWithEventPos(FF)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    .line 522
    .local v0, "ret":Landroid/widget/directwriting/WritingView;
    const-string v1, "[DWTE]"

    if-nez v0, :cond_0

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find TriggerEditText event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoWithDown(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 525
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findTriggerEditText event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoWithDown(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 527
    :goto_0
    return-object v0
.end method

.method private blacklist findTriggerEditTextWithEventPos(FF)Landroid/widget/directwriting/WritingView;
    .locals 7
    .param p1, "eventX"    # F
    .param p2, "eventY"    # F

    .line 532
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 533
    .local v0, "size":I
    const-string v1, "[DWTE]"

    if-lez v0, :cond_2

    .line 534
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, ","

    if-ge v2, v0, :cond_1

    .line 535
    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mTriggerRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 536
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findTriggerEditTextWithEventPos ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] eventPos ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "], rect="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/widget/directwriting/DirectWritingLogger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    float-to-int v3, p1

    float-to-int v5, p2

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWritingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/directwriting/WritingView;

    .line 539
    .local v3, "writingView":Landroid/widget/directwriting/WritingView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findTriggerEditTextWithEventPos in rect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/widget/directwriting/DirectWritingLogger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-object v3

    .line 534
    .end local v3    # "writingView":Landroid/widget/directwriting/WritingView;
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 543
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findTriggerEditTextWithEventPos Not in triggerRect pos: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 545
    :cond_2
    const-string v2, "findTriggerEditTextWithEventPos no triggerRect"

    invoke-static {v1, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist forceBlockIMEWhenNoWritingView()Z
    .locals 1

    .line 490
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist handleButtonEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 322
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    goto :goto_0

    .line 325
    :cond_0
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    if-nez v0, :cond_1

    .line 326
    const-string v0, "[DWTE]"

    const-string/jumbo v1, "pen button pressed while writing"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return v2

    .line 329
    :cond_1
    :goto_0
    return v1

    .line 330
    :cond_2
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    if-eqz v0, :cond_5

    .line 331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 332
    iput-boolean v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    goto :goto_1

    .line 333
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 334
    iput-boolean v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    .line 335
    return v2

    .line 337
    :cond_4
    :goto_1
    return v1

    .line 339
    :cond_5
    return v2
.end method

.method private blacklist handlePenEvent(Landroid/content/Context;Landroid/view/MotionEvent;Z)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "me"    # Landroid/view/MotionEvent;
    .param p3, "hasSelection"    # Z

    .line 379
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 380
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    iget-boolean v3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->hasSelectionWhenActionDown:Z

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 381
    .local v3, "hasValidSelection":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPenEvent call onDispatchEvent me="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nmFoundTriggerEditText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nhasSelection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nhasSelectionWhenActionDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/directwriting/DirectWritingTrigger;->hasSelectionWhenActionDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nhasValidSelection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[DWTE]"

    invoke-static {v5, v4}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 448
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->startHideDelayTimer()V

    .line 449
    goto/16 :goto_1

    .line 452
    :pswitch_2
    iput-boolean p3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->hasSelectionWhenActionDown:Z

    .line 453
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->stopHideDelayTimer()V

    .line 454
    goto/16 :goto_1

    .line 440
    :pswitch_3
    invoke-direct {p0, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;)V

    .line 441
    iput-boolean v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    .line 442
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->stopHideDelayTimer()V

    .line 443
    invoke-virtual {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->stopKeepingWritingTimer()V

    .line 444
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p2, v4}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onStopRecognition(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 445
    return v2

    .line 404
    :pswitch_4
    iget v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mMoveDistance:I

    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    invoke-virtual {v5}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getMaxDistance()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 405
    if-eqz v3, :cond_2

    .line 406
    iget-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    if-eqz v1, :cond_1

    .line 407
    iput-boolean v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    .line 408
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p2, v4}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onStopRecognition(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 410
    :cond_1
    return v2

    .line 412
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;)V

    .line 413
    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    .line 414
    return v1

    .line 417
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;)V

    .line 418
    invoke-direct {p0, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->updateDistance(Landroid/view/MotionEvent;)V

    .line 419
    return v2

    .line 423
    :pswitch_5
    invoke-direct {p0, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->updateDistance(Landroid/view/MotionEvent;)V

    .line 426
    iget v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mMoveDistance:I

    iget-object v5, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    invoke-virtual {v5}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getMaxDistance()I

    move-result v5

    if-le v4, v5, :cond_4

    if-nez v3, :cond_4

    .line 427
    invoke-direct {p0, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;)V

    .line 428
    iput-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    .line 429
    invoke-virtual {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->startKeepingWritingTimer()V

    .line 430
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->startHideDelayTimer()V

    .line 431
    iput-boolean v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->hasSelectionWhenActionDown:Z

    .line 432
    return v1

    .line 434
    :cond_4
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    invoke-virtual {v1, p2, v4}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onStopRecognition(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 435
    iput-boolean v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->hasSelectionWhenActionDown:Z

    .line 436
    return v2

    .line 388
    :pswitch_6
    iput-boolean p3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->hasSelectionWhenActionDown:Z

    .line 389
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->stopHideDelayTimer()V

    .line 390
    invoke-direct {p0, p2}, Landroid/widget/directwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;)V

    .line 391
    iget-boolean v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsKeepingWriting:Z

    if-eqz v4, :cond_5

    .line 392
    invoke-virtual {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->stopKeepingWritingTimer()V

    .line 393
    return v1

    .line 396
    :cond_5
    iput v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mMoveDistance:I

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mOrgX:I

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mOrgY:I

    .line 400
    return v2

    .line 460
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist isDisabledPrivateImeOption(Landroid/widget/directwriting/WritingView;)Z
    .locals 3
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 500
    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "privateImeOption":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDisabledPrivateImeOption privateImeOption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DWTE]"

    invoke-static {v2, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    const-string v1, "disableDirectWriting=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 504
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isNotBindable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .line 558
    invoke-static {p1, p2}, Landroid/widget/directwriting/DirectWritingRune;->isNotBindable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist isPenHoveringEvent(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 316
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist isPrivateImeOptionRestrictDwArea(Landroid/widget/directwriting/WritingView;)Z
    .locals 3
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 510
    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "privateImeOption":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRestrictDWArea privateImeOption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DWTE]"

    invoke-static {v2, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    const-string/jumbo v1, "restrictDirectWritingArea=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 514
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist isUselessWritingView(Landroid/widget/directwriting/WritingView;)Z
    .locals 1
    .param p1, "writingView"    # Landroid/widget/directwriting/WritingView;

    .line 494
    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {p1}, Landroid/widget/directwriting/WritingView;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0, p1}, Landroid/widget/directwriting/DirectWritingTrigger;->isDisabledPrivateImeOption(Landroid/widget/directwriting/WritingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 494
    :goto_1
    return v0
.end method

.method private blacklist onDispatchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 481
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDispatchEvent event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWTE]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private blacklist printBinderLog(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J
    .param p4, "msg"    # Ljava/lang/String;

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ch ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    .line 616
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rh ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 617
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 618
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    const-string v1, "[DWL]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method private blacklist requestBindServiceIfHasTriggerRect()V
    .locals 3

    .line 309
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    if-nez v0, :cond_0

    .line 310
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/directwriting/DirectWritingTrigger;->callBindService(Landroid/content/Context;J)V

    .line 313
    return-void
.end method

.method private blacklist startHideDelayTimer()V
    .locals 4

    .line 574
    new-instance v0, Landroid/widget/directwriting/DirectWritingTrigger$3;

    invoke-direct {v0, p0}, Landroid/widget/directwriting/DirectWritingTrigger$3;-><init>(Landroid/widget/directwriting/DirectWritingTrigger;)V

    .line 581
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mHideDelayTimer:Ljava/util/Timer;

    .line 582
    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    invoke-virtual {v2}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getHideDelay()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 583
    return-void
.end method

.method private blacklist stopHideDelayTimer()V
    .locals 1

    .line 590
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mHideDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 591
    return-void
.end method

.method private blacklist updateDistance(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 465
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 466
    .local v1, "y":I
    iget v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mOrgX:I

    if-le v0, v2, :cond_0

    sub-int v2, v0, v2

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v0

    .line 467
    .local v2, "dx":I
    :goto_0
    iget v3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mOrgY:I

    if-le v1, v3, :cond_1

    sub-int v3, v1, v3

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v1

    .line 468
    .local v3, "dy":I
    :goto_1
    iget v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mMoveDistance:I

    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mMoveDistance:I

    .line 470
    iput v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mOrgX:I

    .line 471
    iput v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mOrgY:I

    .line 472
    return-void
.end method

.method private blacklist updateTriggerEditText(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 274
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mPreFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    .line 275
    invoke-direct {p0, p1}, Landroid/widget/directwriting/DirectWritingTrigger;->findTriggerEditText(Landroid/view/MotionEvent;)Landroid/widget/directwriting/WritingView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    .line 276
    return-void
.end method


# virtual methods
.method public blacklist isNeedToBlockIME()Z
    .locals 1

    .line 486
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->forceBlockIMEWhenNoWritingView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-direct {p0, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->isUselessWritingView(Landroid/widget/directwriting/WritingView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isNeedUpdatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 279
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v0}, Landroid/widget/directwriting/WritingView;->getSkipHoverCursorChange()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 288
    return v2

    .line 291
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->isPenHoveringEvent(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 292
    return v1

    .line 295
    :cond_2
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-direct {p0, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->isUselessWritingView(Landroid/widget/directwriting/WritingView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    return v1

    .line 299
    :cond_3
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    iget-object v3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v0, v3}, Landroid/widget/directwriting/DirectWritingServiceBinder;->isBindableEditText(Landroid/widget/directwriting/WritingView;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 300
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->requestBindServiceIfHasTriggerRect()V

    .line 301
    return v1

    .line 304
    :cond_4
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->requestBindServiceIfHasTriggerRect()V

    .line 305
    return v2

    .line 280
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mPreFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    if-eqz v0, :cond_6

    .line 281
    const-string v0, "[DWTE]"

    const-string/jumbo v2, "setSkipHoverCursorChange to false"

    invoke-static {v0, v2}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mPreFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v0, v1}, Landroid/widget/directwriting/WritingView;->setSkipHoverCursorChange(Z)V

    .line 284
    :cond_6
    return v1
.end method

.method public blacklist onEditTextActionModeStarted()V
    .locals 1

    .line 607
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onEditTextActionModeStarted()V

    .line 608
    return-void
.end method

.method public blacklist onPenEvent(Landroid/content/Context;Landroid/view/InputEvent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 244
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsNotBindable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    return v1

    .line 248
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/MotionEvent;

    .line 250
    .local v0, "me":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWritingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "[DWTE]"

    if-eqz v2, :cond_1

    .line 251
    const-string/jumbo v2, "onPenEvent no editText"

    invoke-static {v3, v2, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoWithDown(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 252
    return v1

    .line 255
    :cond_1
    invoke-direct {p0, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->handleButtonEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    return v1

    .line 260
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->updateTriggerEditText(Landroid/view/MotionEvent;)V

    .line 261
    invoke-virtual {p0, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->isNeedUpdatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 262
    .local v2, "needUpdate":Z
    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v4}, Landroid/widget/directwriting/WritingView;->getSkipHoverCursorChange()Z

    move-result v4

    if-nez v4, :cond_3

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSkipHoverCursorChanged :: true needUpdate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/directwriting/WritingView;->setSkipHoverCursorChange(Z)V

    goto :goto_0

    .line 265
    :cond_3
    if-nez v2, :cond_4

    iget-object v4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/directwriting/WritingView;->getSkipHoverCursorChange()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSkipHoverCursorChanged :: false needUpdate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mFoundTriggerWritingView:Landroid/widget/directwriting/WritingView;

    invoke-virtual {v3, v1}, Landroid/widget/directwriting/WritingView;->setSkipHoverCursorChange(Z)V

    .line 270
    :cond_4
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->bindAndStartJob(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public blacklist onSetView(Landroid/content/Context;JLandroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J
    .param p4, "rootView"    # Landroid/view/View;

    .line 113
    return-void
.end method

.method public blacklist onUpdateImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .line 611
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v0, p1}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onUpdateImeOptions(I)V

    .line 612
    return-void
.end method

.method public blacklist onViewDetach(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J

    .line 128
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsNotBindable:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsNotBindable:Z

    .line 130
    return-void

    .line 133
    :cond_0
    const-string/jumbo v0, "onViewDetach started"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 135
    iget-wide v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Landroid/widget/directwriting/DirectWritingServiceBinder;->onFinishWriting()V

    .line 137
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/directwriting/DirectWritingServiceBinder;->unbindService(Landroid/content/Context;J)V

    .line 138
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    .line 139
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mViewRootCallback:Landroid/widget/directwriting/DirectWritingViewRootCallback;

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingViewRootCallback;->enableTransientBars()V

    .line 140
    const-string/jumbo v0, "onViewDetach unbind requested"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 141
    return-void

    .line 143
    :cond_1
    const-string/jumbo v0, "onViewDetach unbind skipped"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public blacklist onWindowFocusLost(Landroid/content/Context;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J

    .line 225
    iget-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsNotBindable:Z

    if-eqz v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    const-string/jumbo v0, "onWindowFocusLost"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 230
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->clearEditText()V

    .line 231
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->binder:Landroid/widget/directwriting/DirectWritingServiceBinder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/directwriting/DirectWritingServiceBinder;->handleWindowFocusLost(Landroid/content/Context;J)V

    .line 232
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mViewRootCallback:Landroid/widget/directwriting/DirectWritingViewRootCallback;

    invoke-interface {v0}, Landroid/widget/directwriting/DirectWritingViewRootCallback;->enableTransientBars()V

    .line 233
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mDebugWindow:Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;

    invoke-virtual {v0}, Landroid/widget/directwriting/DirectWritingTriggerDebugWindow;->detach()V

    .line 234
    return-void
.end method

.method public blacklist procDirectWritingFlag(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stylus"    # Z

    .line 594
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 595
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 596
    const-string/jumbo v1, "procDirectWritingFlag"

    invoke-direct {p0, p1, v1}, Landroid/widget/directwriting/DirectWritingTrigger;->isNotBindable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    invoke-static {v0, p2, v1}, Landroid/widget/directwriting/DirectWritingCompat;->setDirectWritingFlag(Landroid/view/inputmethod/InputMethodManager;ZLjava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/directwriting/DirectWritingCompat;->setDirectWritingFlag(Landroid/view/inputmethod/InputMethodManager;ZLjava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "procDirectWritingFlag is failed, imm is null v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[DWL]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    return-void
.end method

.method public blacklist setEditTexts(Landroid/content/Context;JLandroid/view/View;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewRootHash"    # J
    .param p4, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/widget/directwriting/WritingView;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p5, "writingViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/directwriting/WritingView;>;"
    iput-object p1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEditTexts mIsNotBindable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsNotBindable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->isNotBindable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mIsNotBindable:Z

    .line 153
    if-eqz v0, :cond_0

    .line 154
    const-string v0, "[DWL]"

    const-string/jumbo v1, "setEditTexts skipped"

    invoke-static {v0, v1}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEditTexts \neditTexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DWT]"

    invoke-static {v1, v0}, Landroid/widget/directwriting/DirectWritingLogger;->logInfoForDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    return-void

    .line 162
    :cond_1
    const-string/jumbo v0, "setEditTexts started"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->printBinderLog(Landroid/content/Context;JLjava/lang/String;)V

    .line 164
    iput-wide p2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mCurrentViewRootHash:J

    .line 165
    iput-object p4, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mRootView:Landroid/view/View;

    .line 167
    invoke-direct {p0}, Landroid/widget/directwriting/DirectWritingTrigger;->clearEditText()V

    .line 168
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mWritingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-static {p4}, Landroid/widget/directwriting/DirectWritingBundleUtil;->getRectOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/widget/directwriting/DirectWritingTrigger;->addRects(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 170
    return-void
.end method

.method blacklist startKeepingWritingTimer()V
    .locals 4

    .line 562
    new-instance v0, Landroid/widget/directwriting/DirectWritingTrigger$2;

    invoke-direct {v0, p0}, Landroid/widget/directwriting/DirectWritingTrigger$2;-><init>(Landroid/widget/directwriting/DirectWritingTrigger;)V

    .line 569
    .local v0, "task":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mKeepWritingTimer:Ljava/util/Timer;

    .line 570
    iget-object v2, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mConfig:Landroid/widget/directwriting/DirectWritingServiceConfiguration;

    invoke-virtual {v2}, Landroid/widget/directwriting/DirectWritingServiceConfiguration;->getKeepWritingDelay()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 571
    return-void
.end method

.method blacklist stopKeepingWritingTimer()V
    .locals 1

    .line 586
    iget-object v0, p0, Landroid/widget/directwriting/DirectWritingTrigger;->mKeepWritingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 587
    return-void
.end method
