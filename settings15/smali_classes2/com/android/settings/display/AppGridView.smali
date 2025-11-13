.class public Lcom/android/settings/display/AppGridView;
.super Landroid/widget/GridView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/AppGridView$AppsAdapter;,
        Lcom/android/settings/display/AppGridView$ActivityEntry;
    }
.end annotation


# instance fields
.field public mAppCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/display/AppGridView;->mAppCount:I

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/display/AppGridView;->mAppCount:I

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/AppGridView;->applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x6

    iput p3, p0, Lcom/android/settings/display/AppGridView;->mAppCount:I

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/AppGridView;->applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x6

    iput p3, p0, Lcom/android/settings/display/AppGridView;->mAppCount:I

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/AppGridView;->applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final applyAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lcom/android/settings/R$styleable;->AppGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/AppGridView;->mAppCount:I

    const/4 p0, 0x1

    if-lt p2, p0, :cond_0

    move v0, p0

    :cond_0
    const-string p0, "App count may not be negative or zero"

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkArgument(Ljava/lang/Object;Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settings/display/AppGridView$AppsAdapter;

    iget v1, p0, Lcom/android/settings/display/AppGridView;->mAppCount:I

    invoke-direct {v0, p1, v1}, Lcom/android/settings/display/AppGridView$AppsAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
