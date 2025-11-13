.class Lcom/samsung/android/widget/SemTipPopup$8;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->showInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup;

    .line 965
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$8;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 968
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$8;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmType(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v0

    if-nez v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$8;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 971
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
