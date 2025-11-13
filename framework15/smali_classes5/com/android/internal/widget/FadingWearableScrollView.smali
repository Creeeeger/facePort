.class public Lcom/android/internal/widget/FadingWearableScrollView;
.super Landroid/widget/ScrollView;
.source "FadingWearableScrollView.java"


# instance fields
.field private blacklist mFader:Lcom/android/internal/widget/ViewGroupFader;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/FadingWearableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FadingWearableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/FadingWearableScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/internal/widget/FadingWearableScrollView;->init()V

    return-void
.end method

.method private blacklist createFader(Landroid/view/ViewGroup;)Lcom/android/internal/widget/ViewGroupFader;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/ViewGroupFader;

    new-instance v1, Lcom/android/internal/widget/FadingWearableScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FadingWearableScrollView$1;-><init>(Lcom/android/internal/widget/FadingWearableScrollView;)V

    new-instance v2, Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;

    invoke-direct {v2}, Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/widget/ViewGroupFader;-><init>(Landroid/view/ViewGroup;Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;)V

    return-object v0
.end method

.method private blacklist init()V
    .locals 1

    invoke-direct {p0, p0}, Lcom/android/internal/widget/FadingWearableScrollView;->createFader(Landroid/view/ViewGroup;)Lcom/android/internal/widget/ViewGroupFader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FadingWearableScrollView;->mFader:Lcom/android/internal/widget/ViewGroupFader;

    return-void
.end method


# virtual methods
.method protected whitelist onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/FadingWearableScrollView;->mFader:Lcom/android/internal/widget/ViewGroupFader;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewGroupFader;->updateFade()V

    return-void
.end method

.method protected whitelist onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/FadingWearableScrollView;->mFader:Lcom/android/internal/widget/ViewGroupFader;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewGroupFader;->updateFade()V

    return-void
.end method
