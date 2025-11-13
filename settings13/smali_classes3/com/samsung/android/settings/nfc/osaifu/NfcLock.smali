.class public Lcom/samsung/android/settings/nfc/osaifu/NfcLock;
.super Landroidx/fragment/app/Fragment;
.source "NfcLock.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final MNO:Ljava/lang/String;

.field private activity:Lcom/android/settings/SettingsActivity;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 220
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 59
    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    .line 229
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcLock;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private refresh()V
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    :cond_0
    if-ne v1, v2, :cond_1

    move v1, v3

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v4, "DCM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_3

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v4, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_unlock_explained:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_4

    .line 162
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_lock_explained:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_4

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v5, "KDI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v5, "KDR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v2, "RKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIMvnoModel()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_6
    and-int/2addr v0, v4

    if-ne v0, v4, :cond_8

    .line 178
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_lock_explained:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 181
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_lock_explained_rkt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_4

    .line 185
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_unlock_explained:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_unlock_explained_rkt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_4

    :cond_a
    :goto_3
    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_unlock_explained:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_4

    .line 173
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->nfcosaifukeitai_lock_explained:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_c
    :goto_4
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->activity:Lcom/android/settings/SettingsActivity;

    .line 94
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->refresh()V

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->refresh()V

    const/16 p3, 0x1000

    if-ne p1, p3, :cond_1

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult - resultCode : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "[NfcLock]"

    invoke-static {p3, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 203
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 75
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    const/16 p0, 0x251e

    .line 77
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    sget p3, Lcom/android/settings/R$layout;->sec_nfcosaifukeitai_lock:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    sget p2, Lcom/android/settings/R$id;->nfcosaifukeitai_lock_explained:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 105
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->MNO:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcLock;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 211
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.felicalock"

    const-string v0, "com.samsung.felicalock.FeliCaLockActivity"

    .line 212
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x1000

    .line 214
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
