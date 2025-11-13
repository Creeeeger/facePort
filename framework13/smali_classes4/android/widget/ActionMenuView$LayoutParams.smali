.class public Landroid/widget/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public greylist-max-r cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r expanded:Z

.field public greylist-max-r extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public greylist-max-r preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 961
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 963
    return-void
.end method

.method public constructor greylist-max-o <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .line 967
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 968
    iput-boolean p3, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 969
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 948
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 949
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .line 952
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 953
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/ActionMenuView$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Landroid/widget/ActionMenuView$LayoutParams;

    .line 956
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 957
    iget-boolean v0, p1, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 958
    return-void
.end method


# virtual methods
.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 974
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 976
    iget-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    const-string/jumbo v1, "layout:overFlowButton"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 977
    iget v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const-string/jumbo v1, "layout:cellsUsed"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 978
    iget v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const-string/jumbo v1, "layout:extraPixels"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 979
    iget-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    const-string/jumbo v1, "layout:expandable"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 980
    iget-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    const-string/jumbo v1, "layout:preventEdgeOffset"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 981
    return-void
.end method
