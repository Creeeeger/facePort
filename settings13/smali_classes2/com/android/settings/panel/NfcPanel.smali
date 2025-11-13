.class public Lcom/android/settings/panel/NfcPanel;
.super Ljava/lang/Object;
.source "NfcPanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final DBG:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/panel/NfcPanel;->DBG:Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/NfcPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/NfcPanel;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/settings/panel/NfcPanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/NfcPanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x678

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 10

    .line 78
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v0

    .line 79
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanRKTModel()Z

    move-result v1

    .line 80
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    .line 81
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v3

    .line 82
    iget-object v4, p0, Lcom/android/settings/panel/NfcPanel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    const-class v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    .line 88
    :cond_2
    const-class v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 86
    :cond_3
    :goto_1
    const-class v0, Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v5, v0

    .line 94
    iget-object v0, p0, Lcom/android/settings/panel/NfcPanel;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    .line 95
    :cond_4
    sget v1, Lcom/android/settings/R$string;->nfc_quick_toggle_title:I

    goto :goto_4

    :cond_5
    :goto_3
    sget v1, Lcom/android/settings/R$string;->nfcpayment_quick_toggle_title:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 96
    iget-object v4, p0, Lcom/android/settings/panel/NfcPanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/16 v8, 0x2eb

    sget v9, Lcom/android/settings/R$string;->menu_key_connected_devices:I

    invoke-static/range {v4 .. v9}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 102
    iget-object p0, p0, Lcom/android/settings/panel/NfcPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 103
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getSlices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v1

    .line 61
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanRKTModel()Z

    .line 62
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isY2OlympicEdition()Z

    move-result v2

    .line 63
    iget-object v3, p0, Lcom/android/settings/panel/NfcPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->NFC_FAVER3_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->NFC_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_1
    iget-boolean p0, p0, Lcom/android/settings/panel/NfcPanel;->DBG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nfc Panel URI = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "NfcPanel"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/android/settings/panel/NfcPanel;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->nfcpayment_quick_toggle_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->nfc_quick_toggle_title:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
