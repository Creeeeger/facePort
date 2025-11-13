.class public final Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;
.super Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public shouldBeVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;->shouldBeVisible:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MediaContainerView$MediaContainerViewState;->shouldBeVisible:Z

    :cond_0
    return-void
.end method
