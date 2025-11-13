.class public final Lcom/samsung/android/settings/easymode/EasyModeApp$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$2;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    iget-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeUtils:Lcom/samsung/android/settings/easymode/EasyModeUtils;

    invoke-virtual {p1}, Lcom/samsung/android/settings/easymode/EasyModeUtils;->isHighContrastKeyboardOn()Z

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->updateHighContrastKeyboard(ZZ)V

    return-void
.end method
