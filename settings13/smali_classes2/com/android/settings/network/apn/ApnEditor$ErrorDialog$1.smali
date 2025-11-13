.class Lcom/android/settings/network/apn/ApnEditor$ErrorDialog$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;)V
    .locals 0

    .line 2216
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog$1;->this$0:Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2218
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog$1;->this$0:Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
