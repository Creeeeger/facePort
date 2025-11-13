.class public final synthetic Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

.field public final synthetic f$1:Landroid/content/SharedPreferences$Editor;

.field public final synthetic f$2:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog$$ExternalSyntheticLambda0;->f$2:Landroid/widget/CheckBox;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;->$r8$lambda$HIfriXFUTr_55HYSDsLA2kh-ddg(Lcom/samsung/android/settings/connection/tether/SecUsbTetherPreferenceController$UsbTetherDialog;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method
