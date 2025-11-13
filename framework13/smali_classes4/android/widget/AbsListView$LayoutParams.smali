.class public Landroid/widget/AbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field greylist-max-o forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist-max-o isEnabled:Z

.field greylist-max-o itemId:J

.field greylist-max-o recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field greylist-max-r scrappedFromPosition:I

.field greylist-max-p viewType:I
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
.method public constructor whitelist <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 7586
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7576
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7587
    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "viewType"    # I

    .line 7590
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 7576
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7591
    iput p3, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7592
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 7582
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7576
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7583
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7595
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7576
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7596
    return-void
.end method


# virtual methods
.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 7601
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 7603
    iget v0, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const-string/jumbo v1, "list:viewType"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 7604
    iget-boolean v0, p0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const-string/jumbo v1, "list:recycledHeaderFooter"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7605
    iget-boolean v0, p0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    const-string/jumbo v1, "list:forceAdd"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7606
    iget-boolean v0, p0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    const-string/jumbo v1, "list:isEnabled"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 7607
    return-void
.end method
