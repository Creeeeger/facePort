.class public Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;
.super Ljava/lang/Object;
.source "ScreenModeRoutineHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ScreenModeRoutineHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecoverMode:I

.field private mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

.field private mSetValue:I

.field private mSupportNaturalModeWithoutWcgMode:Z

.field private mSupportWcgModeOnAmoled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportWcgModeOnAmoled:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportNaturalModeWithoutWcgMode:Z

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSetValue:I

    .line 75
    iput v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mRecoverMode:I

    .line 78
    new-instance v0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;-><init>(Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    .line 79
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportWcgModeOnAmoled:Z

    .line 80
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportNaturalModeWithoutWcgMode:Z

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setScreenModeItemsTablet()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setScreenModeItems()V

    :goto_0
    return-void
.end method

.method private setDisplayColor(I)V
    .locals 3

    const-string p0, "SurfaceFlinger"

    .line 155
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x3ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 161
    :try_start_0
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 163
    :try_start_1
    sget-object p1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set display color"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method private setScreenModeItems()V
    .locals 7

    .line 171
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v0, :cond_2

    .line 172
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportWcgModeOnAmoled:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto/16 :goto_0

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v3, Lcom/android/settings/R$string;->sec_screen_mode_auto_adaptive:I

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v3, Lcom/android/settings/R$string;->sec_screen_mode_premium_movie:I

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v2, Lcom/android/settings/R$string;->sec_screen_mode_amoled_photo:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_basic:I

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportWcgModeOnAmoled:Z

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 188
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 189
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v3, Lcom/android/settings/R$string;->sec_screen_mode_auto_adaptive:I

    invoke-virtual {v0, v3, v5}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v3, Lcom/android/settings/R$string;->sec_screen_mode_movie:I

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v2, Lcom/android/settings/R$string;->sec_screen_mode_photo:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_basic:I

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method private setScreenModeItemsTablet()V
    .locals 6

    .line 203
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v0, :cond_2

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportWcgModeOnAmoled:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v2, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 206
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 209
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_auto_adaptive:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_premium_movie:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_amoled_photo:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_basic:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 218
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportWcgModeOnAmoled:Z

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v2, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    goto :goto_0

    .line 221
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v1, Lcom/android/settings/R$string;->sec_screen_mode_wcg_vivid:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    .line 223
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    sget v0, Lcom/android/settings/R$string;->sec_screen_mode_wcg_natural:I

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;->addItem(II)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getScreenModeRecover()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mRecoverMode:I

    return p0
.end method

.method public getScreenModeRoutineItems()Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mScreenModeItems:Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper$ScreenModeItems;

    return-object p0
.end method

.method public setScreenMode(I)V
    .locals 7

    .line 103
    sget-object v0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenMode mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_setting"

    const/4 v2, 0x0

    .line 105
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 107
    sget-object v4, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setScreenMode test before putInt mode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const-string v4, "screen_mode_automatic_setting"

    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 110
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 120
    sget-object v1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setScreenMode test after putInt mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mContext:Landroid/content/Context;

    const-string v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 123
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportWcgModeOnAmoled:Z

    const-string v4, "set Mdnie ScreenMode : "

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 125
    sget-object p1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    const-string v1, "set Mdnie ScreenMode WCG : 3 to 0"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setDisplayColor(I)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 129
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->setDisplayColor(I)V

    .line 131
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 133
    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    if-ne p1, p0, :cond_3

    .line 135
    sget-object p1, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    const-string v1, "set Mdnie ScreenMode to Natural without WCG : 2"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0, p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 138
    :cond_3
    sget-object p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_1

    .line 142
    :cond_4
    sget-object p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :goto_1
    return-void
.end method

.method protected setScreenModeInternal(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mSetValue:I

    return-void
.end method

.method protected setScreenModeRecover(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/samsung/android/settings/display/bixbyroutines/ScreenModeRoutineHelper;->mRecoverMode:I

    return-void
.end method
