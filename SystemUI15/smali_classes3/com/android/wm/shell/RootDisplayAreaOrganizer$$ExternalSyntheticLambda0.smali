.class public final synthetic Lcom/android/wm/shell/RootDisplayAreaOrganizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/RootDisplayAreaOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/RootDisplayAreaOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/RootDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/RootDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    sget v0, Lcom/android/wm/shell/RootDisplayAreaOrganizer;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v2}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/DisplayAreaAppearedInfo;

    invoke-virtual {v3}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/RootDisplayAreaOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
