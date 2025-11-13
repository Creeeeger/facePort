.class public final synthetic Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    check-cast p1, Lcom/android/wm/shell/draganddrop/IDragLayout;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    check-cast p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-boolean v0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    if-eq v0, p0, :cond_2

    iput-boolean p0, p1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyDragSplitAppIconHasDrawable(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_1
    return-void
.end method
