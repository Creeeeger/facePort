.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RoundedCornerRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;
    }
.end annotation


# instance fields
.field private mItemDecoration:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;

.field private mSeslItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

.field private mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSeslItemRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeslListRoundedCorner(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)Landroidx/appcompat/util/SeslRoundedCorner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/16 v3, 0xf

    .line 45
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v0, v3}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RoundedCornerRecycleView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mSeslItemRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mItemDecoration:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;

    if-nez p1, :cond_2

    .line 56
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mItemDecoration:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mItemDecoration:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public setItemDecorationDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView;->mItemDecoration:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/RoundedCornerRecyclerView$RecyclerViewRoundedDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
