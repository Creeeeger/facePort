.class public final Lcom/android/wm/shell/common/split/DividerPanel$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerPanel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$H;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/split/DividerPanel$H;-><init>(Lcom/android/wm/shell/common/split/DividerPanel;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel$H;->this$0:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    :goto_0
    return-void
.end method
