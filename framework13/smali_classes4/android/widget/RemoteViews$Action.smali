.class abstract Landroid/widget/RemoteViews$Action;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Action"
.end annotation


# static fields
.field public static final greylist-max-o MERGE_APPEND:I = 0x1

.field public static final greylist-max-o MERGE_IGNORE:I = 0x2

.field public static final greylist-max-o MERGE_REPLACE:I


# instance fields
.field greylist viewId:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$Action-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/RemoteViews$Action;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation
.end method

.method public blacklist clear()V
    .locals 0

    .line 750
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o getActionTag()I
.end method

.method public greylist-max-o getUniqueKey()Ljava/lang/String;
    .locals 2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RemoteViews$Action;->getActionTag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .locals 0
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 732
    return-object p0
.end method

.method public greylist-max-r mergeBehavior()I
    .locals 1

    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o prefersAsyncApply()Z
    .locals 1

    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 0
    .param p1, "root"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 712
    return-void
.end method

.method public greylist-max-o visitUris(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    return-void
.end method
