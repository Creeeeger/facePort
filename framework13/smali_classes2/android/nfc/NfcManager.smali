.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private greylist-max-o mAdapter:Landroid/nfc/NfcAdapter;

.field private blacklist mIsBinded:Z


# direct methods
.method public constructor greylist-max-p <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 58
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 59
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 60
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v2, 0x0

    .line 63
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    iput-boolean v0, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    move-object v1, v2

    .line 65
    .end local v2    # "adapter":Landroid/nfc/NfcAdapter;
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v1, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 66
    return-void

    .line 54
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist bindNfcService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    iget-boolean v0, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 79
    if-eqz p1, :cond_1

    .line 84
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 85
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/nfc/NfcManager;->mIsBinded:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 86
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    .line 89
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    move-object v0, v1

    .line 92
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 93
    return-void

    .line 80
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context not associated with any application (using a mock context?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
