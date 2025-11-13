.class public Landroid/widget/SemExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SemExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListConnector;


# direct methods
.method protected constructor blacklist <init>(Landroid/widget/SemExpandableListConnector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListConnector;

    .line 911
    iput-object p1, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChanged()V
    .locals 2

    .line 914
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/widget/SemExpandableListConnector;->-$$Nest$mrefreshExpGroupMetadataList(Landroid/widget/SemExpandableListConnector;ZZ)V

    .line 916
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetChanged()V

    .line 917
    return-void
.end method

.method public whitelist onInvalidated()V
    .locals 2

    .line 921
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Landroid/widget/SemExpandableListConnector;->-$$Nest$mrefreshExpGroupMetadataList(Landroid/widget/SemExpandableListConnector;ZZ)V

    .line 923
    iget-object v0, p0, Landroid/widget/SemExpandableListConnector$MyDataSetObserver;->this$0:Landroid/widget/SemExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListConnector;->notifyDataSetInvalidated()V

    .line 924
    return-void
.end method
