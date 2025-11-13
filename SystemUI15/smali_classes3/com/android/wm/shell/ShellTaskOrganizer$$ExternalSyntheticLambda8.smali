.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda8;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda8;->f$1:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mMultiWindowCoreStateChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/ShellTaskOrganizer$MultiWindowCoreStateChangeListener;

    invoke-interface {v2, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$MultiWindowCoreStateChangeListener;->onMultiWindowCoreStateChanged(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
