.class public final synthetic Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mConfirmDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method
