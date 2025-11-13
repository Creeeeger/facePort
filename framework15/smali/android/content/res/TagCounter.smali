.class public Landroid/content/res/TagCounter;
.super Ljava/lang/Object;
.source "TagCounter.java"


# static fields
.field private static final blacklist DEFAULT_MAX_COUNT:I = 0x200


# instance fields
.field private blacklist mCount:I

.field private blacklist mMaxValue:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    return-void
.end method


# virtual methods
.method blacklist increment()V
    .locals 1

    iget v0, p0, Landroid/content/res/TagCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    return-void
.end method

.method public blacklist isValid()Z
    .locals 2

    iget v0, p0, Landroid/content/res/TagCounter;->mCount:I

    iget v1, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist reset(I)V
    .locals 1

    iput p1, p0, Landroid/content/res/TagCounter;->mMaxValue:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/TagCounter;->mCount:I

    return-void
.end method
