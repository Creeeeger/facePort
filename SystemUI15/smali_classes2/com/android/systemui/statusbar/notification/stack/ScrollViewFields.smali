.class public final Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final headsUpTop:F

.field public intrinsicStackHeight:I

.field public final isScrolledToTop:Z

.field public final stackBottom:F

.field public final stackTop:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;->isScrolledToTop:Z

    return-void
.end method
