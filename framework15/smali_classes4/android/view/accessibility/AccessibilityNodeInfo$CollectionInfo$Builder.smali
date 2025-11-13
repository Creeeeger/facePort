.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mColumnCount:I

.field private blacklist mHierarchical:Z

.field private blacklist mImportantForAccessibilityItemCount:I

.field private blacklist mItemCount:I

.field private blacklist mRowCount:I

.field private blacklist mSelectionMode:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mRowCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mColumnCount:I

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mHierarchical:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mImportantForAccessibilityItemCount:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 4

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mRowCount:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mColumnCount:I

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mHierarchical:Z

    invoke-direct {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mSelectionMode:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fputmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mItemCount:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fputmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mImportantForAccessibilityItemCount:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->-$$Nest$fputmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V

    return-object v0
.end method

.method public whitelist setColumnCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mColumnCount:I

    return-object p0
.end method

.method public whitelist setHierarchical(Z)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mHierarchical:Z

    return-object p0
.end method

.method public whitelist setImportantForAccessibilityItemCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mImportantForAccessibilityItemCount:I

    return-object p0
.end method

.method public whitelist setItemCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mItemCount:I

    return-object p0
.end method

.method public whitelist setRowCount(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mRowCount:I

    return-object p0
.end method

.method public whitelist setSelectionMode(I)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;->mSelectionMode:I

    return-object p0
.end method
