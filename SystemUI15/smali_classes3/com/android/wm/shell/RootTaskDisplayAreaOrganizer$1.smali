.class Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/SystemPerformanceHinter$DisplayRootProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRootForDisplay(I)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$1;->this$0:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->mLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0
.end method
