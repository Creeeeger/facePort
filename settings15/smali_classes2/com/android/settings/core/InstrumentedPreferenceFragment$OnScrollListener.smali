.class public final Lcom/android/settings/core/InstrumentedPreferenceFragment$OnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mClassName:Ljava/lang/String;

.field public final mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$OnScrollListener;->mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iput-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$OnScrollListener;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/16 v0, 0x1c

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$OnScrollListener;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$OnScrollListener;->mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment$OnScrollListener;->mMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_0
    return-void
.end method
