.class Lcom/android/settings/MainClear$10;
.super Ljava/lang/Object;
.source "MainClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MainClear;->showResetBatteryCheckDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MainClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MainClear;)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/android/settings/MainClear$10;->this$0:Lcom/android/settings/MainClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1314
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
