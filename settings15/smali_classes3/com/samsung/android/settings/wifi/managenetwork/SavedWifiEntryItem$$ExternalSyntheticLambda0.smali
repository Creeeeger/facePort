.class public final synthetic Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsChecked:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateComponentsStatus(I)V

    return-void
.end method
