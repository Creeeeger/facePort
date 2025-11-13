.class public final synthetic Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/settings/wifi/WifiPickerDialogFragment$WifiDialogListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
