.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog$getOnKeyListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog$getOnKeyListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x4

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/16 p1, 0x6f

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p3

    :goto_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog$getOnKeyListener$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->cancel()V

    :cond_2
    if-nez p1, :cond_4

    const/16 p0, 0x52

    if-ne p0, p2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v0

    :cond_4
    :goto_2
    return p3
.end method
