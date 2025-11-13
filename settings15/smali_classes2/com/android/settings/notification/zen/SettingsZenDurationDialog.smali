.class public Lcom/android/settings/notification/zen/SettingsZenDurationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x53d

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    new-instance p1, Lcom/android/settingslib/notification/ZenDurationDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settingslib/notification/ZenDurationDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/settingslib/notification/ZenDurationDialog;->createDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
