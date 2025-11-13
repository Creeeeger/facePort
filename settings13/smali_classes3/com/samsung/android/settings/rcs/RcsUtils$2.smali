.class Lcom/samsung/android/settings/rcs/RcsUtils$2;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/rcs/RcsUtils;->showAlertDialog(ZLjava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/rcs/RcsUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/rcs/RcsUtils;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/RcsUtils$2;->this$0:Lcom/samsung/android/settings/rcs/RcsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 493
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
