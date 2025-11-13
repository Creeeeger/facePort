.class Lcom/samsung/android/settings/nfc/AndroidBeam$4;
.super Ljava/lang/Object;
.source "AndroidBeam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/AndroidBeam;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/AndroidBeam;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$4;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/AndroidBeam$4;->this$0:Lcom/samsung/android/settings/nfc/AndroidBeam;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/AndroidBeam;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/nfc/AndroidBeam;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method
