.class public Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
.super Ljava/lang/Object;
.source "SmartClipDataElementImpl.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "SmartClipDataElementImpl"


# instance fields
.field protected blacklist mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mId:I

.field protected blacklist mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field protected blacklist mRectOnScreen:Landroid/graphics/Rect;

.field protected blacklist mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

.field public blacklist mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

.field protected blacklist mView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method private blacklist setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private blacklist setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method

.method private blacklist setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-void
.end method


# virtual methods
.method public blacklist addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setParent(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    nop

    return v3

    :cond_2
    return v0
.end method

.method public blacklist addTag(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public whitelist addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isValidMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    return v2

    :cond_2
    return v0
.end method

.method public whitelist clearMetaData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V

    return-void
.end method

.method public blacklist createChildInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    return-object v0
.end method

.method public blacklist dump()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartClipDataElementImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->dump()Z

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist getAllTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChildCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getDataRepository()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-object v0
.end method

.method public blacklist getDumpString(ZZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParentCount()I

    move-result v3

    const-string v4, "\t"

    const/4 v5, 0x1

    move/from16 v6, p1

    if-ne v6, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    const-string v7, ")\t"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rect("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "mRectOnScreen(NULL)\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v0, -0x1

    const-string v9, "@"

    if-eq v8, v0, :cond_2

    if-ltz v8, :cond_2

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v9

    if-ne v9, v5, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v9

    const/4 v10, -0x2

    if-eq v9, v10, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Opacity BG("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_8

    iget-object v9, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v9, v8}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    if-nez v11, :cond_4

    const-string/jumbo v11, "null"

    :cond_4
    instance-of v13, v9, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    if-eqz v13, :cond_6

    move-object v13, v9

    check-cast v13, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v14

    if-eqz v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ", Extra data size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v15

    array-length v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_5
    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v14

    if-eqz v14, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Extra parcelable = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v14}, Landroid/os/Parcelable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_6
    move/from16 v5, p2

    const/4 v13, 0x1

    if-ne v5, v13, :cond_7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v5, v13

    goto/16 :goto_3

    :cond_8
    move/from16 v5, p2

    goto :goto_5

    :cond_9
    move/from16 v5, p2

    const-string v0, "No meta tag\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtractionLevel()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getExtractionLevel()I

    move-result v1

    return v1
.end method

.method public whitelist getExtractionMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getExtractionMode()I

    move-result v1

    return v1
.end method

.method public blacklist getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public blacklist getLastChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public whitelist getMetaAreaRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public blacklist getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public blacklist getParentCount()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public blacklist getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mPrevSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0
.end method

.method public blacklist getTagTable()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-object v0
.end method

.method public whitelist getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist isEmptyTag(Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v2

    if-lez v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v3}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v3

    if-lez v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {v2, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    goto :goto_0

    :cond_3
    return v1
.end method

.method public blacklist newInstance()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;
    .locals 2

    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    return-object v0
.end method

.method public blacklist removeChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    if-eq v2, p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeChild : Incorrect parent of SemSmartClipDataElement. element="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartClipDataElementImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->dump()Z

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-ne v0, v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-ne v0, v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mLastChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setNextSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setPrevSibling(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist removeTags(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->removeMetaTags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist sendSuspendedExtractionData()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDataRepository()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getSmartClipDataCropper()Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist setDataRepository(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-void
.end method

.method public whitelist setMetaAreaRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mRectOnScreen:Landroid/graphics/Rect;

    return-void
.end method

.method public whitelist setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->removeMetaTags(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    :cond_2
    return v0
.end method

.method public blacklist setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mTags:Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    return-void
.end method

.method public blacklist setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mView:Landroid/view/View;

    return-void
.end method

.method public blacklist traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mFirstChild:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0

    :cond_2
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    if-eq v2, p1, :cond_4

    :cond_3
    iget-object v1, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mParent:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->mNextSibling:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    return-object v0

    :cond_5
    return-object v0
.end method
