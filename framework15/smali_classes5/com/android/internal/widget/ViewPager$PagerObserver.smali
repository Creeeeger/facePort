.class Lcom/android/internal/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ViewPager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ViewPager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$PagerObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;)V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager$PagerObserver;->this$0:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->dataSetChanged()V

    return-void
.end method
