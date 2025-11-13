.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist SELECTION_MODE_MULTIPLE:I = 0x2

.field public static final whitelist SELECTION_MODE_NONE:I = 0x0

.field public static final whitelist SELECTION_MODE_SINGLE:I = 0x1

.field public static final whitelist UNDEFINED:I = -0x1


# instance fields
.field private greylist-max-o mColumnCount:I

.field private greylist-max-o mHierarchical:Z

.field private blacklist mImportantForAccessibilityItemCount:I

.field private blacklist mItemCount:I

.field private greylist-max-o mRowCount:I

.field private greylist-max-o mSelectionMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColumnCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHierarchical(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRowCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImportantForAccessibilityItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItemCount(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectionMode(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return-void
.end method

.method public constructor whitelist <init>(IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-void
.end method

.method public constructor whitelist <init>(IIZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    iput-boolean p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return-void
.end method

.method public constructor blacklist <init>(IIZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    iput-boolean p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    iput p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    iput p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return-void
.end method

.method private greylist-max-o clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return-void
.end method

.method public static whitelist obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 2

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-object v0
.end method

.method public static whitelist obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    return-object v0
.end method

.method public static greylist-max-o obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 8

    new-instance v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    iget v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    iget v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZIII)V

    return-object v7
.end method


# virtual methods
.method public whitelist getColumnCount()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mColumnCount:I

    return v0
.end method

.method public whitelist getImportantForAccessibilityItemCount()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mImportantForAccessibilityItemCount:I

    return v0
.end method

.method public whitelist getItemCount()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mItemCount:I

    return v0
.end method

.method public whitelist getRowCount()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mRowCount:I

    return v0
.end method

.method public whitelist getSelectionMode()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mSelectionMode:I

    return v0
.end method

.method public whitelist isHierarchical()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->mHierarchical:Z

    return v0
.end method

.method greylist-max-o recycle()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
