.class Landroid/widget/MultiSelectPopupWindow$1;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MultiSelectPopupWindow;

    .line 143
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$1;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 146
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-$$Nest$sfgetsTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 149
    :cond_0
    return-void
.end method
