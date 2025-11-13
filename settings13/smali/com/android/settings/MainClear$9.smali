.class Lcom/android/settings/MainClear$9;
.super Ljava/lang/Object;
.source "MainClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 1304
    iput-object p1, p0, Lcom/android/settings/MainClear$9;->this$0:Lcom/android/settings/MainClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1307
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
