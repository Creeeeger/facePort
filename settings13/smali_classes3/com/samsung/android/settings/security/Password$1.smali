.class Lcom/samsung/android/settings/security/Password$1;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/security/Password;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/Password;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/Password;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/samsung/android/settings/security/Password$1;->this$0:Lcom/samsung/android/settings/security/Password;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 p1, 0x1

    const/16 p3, 0x18

    const/16 v0, 0x19

    const/4 v1, 0x4

    const/16 v2, 0x43

    const/16 v3, 0x14

    if-eq p2, v3, :cond_0

    if-eq p2, v2, :cond_0

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_0

    if-eq p2, p3, :cond_0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/security/Password$1;->this$0:Lcom/samsung/android/settings/security/Password;

    invoke-static {p0}, Lcom/samsung/android/settings/security/Password;->-$$Nest$fgetmDigits(Lcom/samsung/android/settings/security/Password;)Landroid/widget/TextView;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v4, 0x8

    if-lt p0, v4, :cond_0

    return p1

    :cond_0
    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_2

    if-eq p2, p3, :cond_2

    const/4 p0, 0x7

    if-lt p2, p0, :cond_1

    const/16 p0, 0x10

    if-le p2, p0, :cond_2

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
