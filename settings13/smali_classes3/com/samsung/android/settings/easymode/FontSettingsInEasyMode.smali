.class public Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;
.super Ljava/lang/Object;
.source "FontSettingsInEasyMode.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applyFontSize()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public setEasyFont()V
    .locals 8

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bold_text"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 46
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x1afa4

    if-lt v4, v5, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const v4, 0x3f8ccccd    # 1.1f

    .line 49
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontIndex(Landroid/content/Context;F)I

    move-result v5

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setEasyFont previousIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", previousBoldFont : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", easyModeFontIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", easyModeFontScale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FontSettingsInEasyMode"

    invoke-static {v7, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v6, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    const/16 v3, 0x12c

    invoke-static {v1, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    .line 56
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "STANDARD_FONT_SIZE"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "STANDARD_BOLD_FONT"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->applyFontSize()V

    return-void
.end method

.method public setStandardFont()V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "STANDARD_FONT_SIZE"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "STANDARD_BOLD_FONT"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontScale(Landroid/content/Context;I)F

    move-result v0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setStandardFont standardFontIndex : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", standardBoldFont : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", standardFontScale : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "FontSettingsInEasyMode"

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "font_size"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bold_text"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/16 v4, 0x12c

    :cond_1
    invoke-static {v2, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->applyFontSize()V

    return-void
.end method
