.class public Landroid/widget/SemHorizontalListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "SemHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public blacklist data:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist isSelectable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalListView;

.field public blacklist view:Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/widget/SemHorizontalListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalListView$FixedViewInfo;->this$0:Landroid/widget/SemHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
