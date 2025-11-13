.class public final Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSGuideDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSGuideDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    sget p1, Lcom/android/systemui/qs/QSGuideDialog;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iget-object v0, v0, Lcom/android/systemui/qs/QSGuideDialog;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iget p1, p1, Lcom/android/systemui/qs/QSGuideDialog;->statusBarState:I

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/qs/QSGuideDialog$displayListener$1;->this$0:Lcom/android/systemui/qs/QSGuideDialog;

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSGuideDialog;->firstExpanded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
