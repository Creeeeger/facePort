.class public final Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$create$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DialogDelegate;


# instance fields
.field public final synthetic $dialogGravity:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$create$1;->$dialogGravity:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialogFactoryExtKt$create$1;->$dialogGravity:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method
