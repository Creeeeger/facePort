.class public final synthetic Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    sget v0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->$r8$clinit:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v0}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v3}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
