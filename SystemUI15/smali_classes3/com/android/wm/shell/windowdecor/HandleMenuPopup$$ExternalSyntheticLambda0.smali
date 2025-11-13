.class public final synthetic Lcom/android/wm/shell/windowdecor/HandleMenuPopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/HandleMenuPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->closeHandleMenu(Z)V

    :goto_0
    return v0
.end method
