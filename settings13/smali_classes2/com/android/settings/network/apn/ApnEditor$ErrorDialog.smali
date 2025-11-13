.class public Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# static fields
.field private static id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2183
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static showError(Lcom/android/settings/network/apn/ApnEditor;)V
    .locals 3

    .line 2198
    :try_start_0
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;-><init>()V

    const/4 v1, 0x0

    .line 2199
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 2200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "error"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2202
    invoke-static {}, Lcom/android/settings/network/apn/ApnEditor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "erroe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static showError(Lcom/android/settings/network/apn/ApnEditor;I)V
    .locals 0

    .line 2191
    sput p1, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->id:I

    .line 2192
    invoke-static {p0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/apn/ApnEditor;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x212

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 2208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {p1}, Lcom/android/settings/network/apn/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object p1

    .line 2211
    sget v0, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->id:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2212
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->error_title:I

    .line 2213
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->dlg_ok:I

    .line 2214
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2215
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->profile_exit:I

    new-instance v1, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog$1;-><init>(Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;)V

    .line 2216
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 2220
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p1, 0xa

    if-ne v0, p1, :cond_1

    .line 2224
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->wifi_error:I

    .line 2225
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->dlg_ok:I

    .line 2226
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->error_unavailable_apn:I

    .line 2227
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 2228
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method
