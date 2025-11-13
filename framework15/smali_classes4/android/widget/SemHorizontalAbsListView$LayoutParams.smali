.class public Landroid/widget/SemHorizontalAbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field blacklist forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field blacklist itemId:J

.field blacklist recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field blacklist scrappedFromPosition:I

.field blacklist viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    iput p3, p0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    return-void
.end method
