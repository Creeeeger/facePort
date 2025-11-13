.class public Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public whitelist id:J

.field public whitelist packedPosition:J

.field public whitelist targetView:Landroid/view/View;


# direct methods
.method public constructor whitelist <init>(Landroid/view/View;JJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "packedPosition"    # J
    .param p4, "id"    # J

    .line 2584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2585
    iput-object p1, p0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 2586
    iput-wide p2, p0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 2587
    iput-wide p4, p0, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 2588
    return-void
.end method
