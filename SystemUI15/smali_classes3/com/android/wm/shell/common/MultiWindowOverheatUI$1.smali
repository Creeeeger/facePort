.class public final Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/MultiWindowOverheatUI;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/MultiWindowOverheatUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;->this$0:Lcom/android/wm/shell/common/MultiWindowOverheatUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/MultiWindowOverheatUI$1;->this$0:Lcom/android/wm/shell/common/MultiWindowOverheatUI;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
