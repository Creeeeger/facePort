.class public Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;
.super Landroid/widget/RelativeLayout;
.source "SuwBaseLayout.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/sec/android/secsetupwizardlib/R$layout;->sswl_base_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;->mRoot:Landroid/view/View;

    .line 31
    sget p2, Lcom/sec/android/secsetupwizardlib/R$id;->sswl_layout_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;->mContainer:Landroid/view/ViewGroup;

    .line 33
    iget-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;->mRoot:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;->addViewInternal(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;->initView()V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseLayout;->mContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
